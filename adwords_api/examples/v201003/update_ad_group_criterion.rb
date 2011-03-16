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
# This example illustrates how to update an ad group criterion, setting its
# bid. To create an ad group criterion, run add_ad_group_criterion.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201003

def update_ad_group_criterion()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Prepare for updating ad group criterion.
  operation = {
    :operator => 'SET',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :id => criterion_id
      },
      :bids => {
        :xsi_type => 'ManualCPCAdGroupCriterionBids',
        :max_cpc => {
          :amount => {
            :micro_amount => 1000000
          }
        }
      }
    }
  }

  # Update criterion.
  response = ad_group_criterion_srv.mutate([operation])
  if response and response[:value]
    ad_group_criterion = response[:value].first
    puts 'Criterion id %d was successfully updated, bid set to %d.' %
        [ad_group_criterion[:criterion][:id],
         ad_group_criterion[:bids][:max_cpc][:amount][:micro_amount]]
  else
    puts 'No criteria were updated.'
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    update_ad_group_criterion()

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
