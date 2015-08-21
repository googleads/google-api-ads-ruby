#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example illustrates how to create a user list (a.k.a. Audience) and shows
# its associated conversion tracker code snippet.
#
# Tags: UserListService.mutate, ConversionTrackerService.get

require 'adwords_api'

def add_audience()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  user_list_srv = adwords.service(:AdwordsUserListService, API_VERSION)
  conv_tracker_srv = adwords.service(:ConversionTrackerService, API_VERSION)

  # Prepare for adding remarketing user list.
  name = "Mars cruise customers #%d" % (Time.new.to_f * 1000).to_i
  operation = {
    :operator => 'ADD',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'BasicUserList',
      :name => name,
      :description => 'A list of mars cruise customers in the last year',
      :membership_life_span => 365,
      :conversion_types => [{:name => name}],
      # Optional field.
      :status => 'OPEN'
    }
  }

  # Add user list.
  response = user_list_srv.mutate([operation])
  if response and response[:value]
    user_list = response[:value].first

    # Get conversion snippets.
    if user_list and user_list[:conversion_types]
      conversion_ids = user_list[:conversion_types][:id]
      selector = {
        # We're actually interested in the 'Snippet' field, which is returned
        # automatically.
        :fields => ['Id'],
        :predicates => [
          {:field => 'Id', :operator => 'IN', :values => [conversion_ids]}
        ]
      }
      conv_tracker_response = conv_tracker_srv.get(selector)
      if conv_tracker_response and conv_tracker_response[:entries]
        conversions = conv_tracker_response[:entries]
      end
    end
    puts "User list with name '%s' and ID %d was added." %
        [user_list[:name], user_list[:id]]
    # Display user list associated conversion code snippets.
    if conversions
      conversions.each do |conversion|
        puts "Conversion type code snipped associated to the list:\n\t\t%s\n" %
          conversion[:snippet]
      end
    end
  else
    puts 'No user lists were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    add_audience()

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'http://code.google.com/p/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
