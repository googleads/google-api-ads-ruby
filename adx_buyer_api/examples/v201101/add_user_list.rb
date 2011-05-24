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
# This example illustrates how to create a user list and show its associated
# conversion tracker code snippet.
#
# Tags: UserListService.mutate, ConversionTrackerService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101

def add_user_list()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  user_list_srv = adwords.service(:UserListService, API_VERSION)
  conv_tracker_srv = adwords.service(:ConversionTrackerService, API_VERSION)

  # Prepare for adding remarketing user list.
  name = 'Mars cruise customers #%s' % (Time.new.to_f * 1000).to_i
  operation = {
    :operator => 'ADD',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'RemarketingUserList',
      :name => name,
      :description => 'A list of mars cruise customers in the last year',
      :status => 'OPEN',
      :membership_life_span => 365,
      :conversion_types => [{:name => name}]
    }
  }

  # Add user list.
  response = user_list_srv.mutate([operation])
  if response and response[:value]
    user_list = response[:value].first

    # Get conversion snippets.
    if user_list and user_list[:conversion_types]
      conversion_ids = user_list[:conversion_types].map {|type| type[:id]}
      selector = {
        # We're actually interested in the 'Snippet' field, which is returned
        # automatically.
        :fields => ['Id'],
        :predicates => [
          {:field => 'Id', :operator => 'IN', :values => conversion_ids}
        ]
      }
      conv_tracker_response = conv_tracker_srv.get(selector)
      if conv_tracker_response and conv_tracker_response[:entries]
        conversions = conv_tracker_response[:entries]
      end
    end
    puts 'User list with name "%s" and id %d was added.' %
        [user_list[:name], user_list[:id]]
    # Display user list associated conversion code snippets.
    if conversions
      conversions.each do |conversion|
        puts "Conversion type code snipped associated to the list:\n%s\n" %
          conversion[:snippet]
      end
    end
  else
    puts 'No user lists were added.'
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    add_user_list()

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
