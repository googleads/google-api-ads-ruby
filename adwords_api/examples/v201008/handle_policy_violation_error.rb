#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example demonstrates how to handle policy violation errors. To create
# an ad group, run add_ad_group.rb.
#
# Tags: AdGroupAdService.mutate

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201008

def handle_policy_violation_error()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Create text ad.
  text_ad_operation = {
    :operator => 'ADD',
    :operand => {
      :ad_group_id => ad_group_id,
      :ad => {
        # The 'xsi_type' field allows you to specify the xsi:type of the object
        # being created. It's only necessary when you must provide an explicit
        # type that the client library can't infer.
        :xsi_type => 'TextAd',
        :headline => 'Mars Cruise!!!',
        :description1 => 'Visit the Red Planet in style.',
        :description2 => 'Low-gravity fun for everyone!',
        :url => 'http://www.example.com',
        :display_url => 'www.example.com',
      }
    }
  }

  operations = [text_ad_operation]

  # Validate ad.
  begin
    # Enable "validate only" for the length of this block
    adwords.validate_only do
      ad_group_ad_srv.mutate(operations)
    end
    puts 'Validation successful, no errors returned.'
  rescue AdwordsApi::Errors::ApiException => e
    e.errors.each do |error|
      if error[:xsi_type] == 'PolicyViolationError'
        operation_index = AdwordsApi::Utils.operation_index_for_error(error)
        operation = operations[operation_index]
        puts "Ad with headline '%s' violated %s policy '%s'." %
            [operation[:operand][:ad][:headline],
             error[:is_exemptable] ? 'exemptable' : 'non-exemptable',
             error[:external_policy_name]]
        if error[:is_exemptable]
          # Add exemption request to the operation.
          puts "Adding exemption request for policy name '%s' on text '%s'." %
              [error[:key][:policy_name], error[:key][:violating_text]]
          unless operation[:exemption_requests]
            operation[:exemption_requests] = []
          end
          operation[:exemption_requests] << {
            :key => error[:key]
          }
        else
          # Remove non-exemptable operation
          puts "Removing the operation from the request."
          operations.delete(operation)
        end
      else
        # Non-policy error returned, re-throw exception.
        raise e
      end
    end
  end

  # Add ads.
  if operations.size > 0
    response = ad_group_ad_srv.mutate(operations)
    if response and response[:value]
      ads = response[:value]
      puts "Added #{ads.length} ad(s) to ad group #{ad_group_id}."
      ads.each do |ad|
        puts "  Ad id is #{ad[:ad][:id]}, type is #{ad[:ad][:xsi_type]} and " +
            "status is \"#{ad[:status]}\"."
      end
    else
      puts "No ads were added."
    end
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    handle_policy_violation_error()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'API Exception caught.'
    puts 'Message: %s' % e.message
    puts 'Code: %d' % e.code if e.code
    puts 'Trigger: %s' % e.trigger if e.trigger
    puts 'Errors:'
    if e.errors
      e.errors.each_with_index do |error, index|
        puts ' %d. Error type is %s. Fields:' % [index + 1, error[:xsi_type]]
        error.each_pair do |field, value|
          if field != :xsi_type
            puts '     %s: %s' % [field, value]
          end
        end
      end
    end
  end
end
