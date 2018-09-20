#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example accepts a pending invitation to link your AdWords account to a
# Google Merchant Center account.

require 'adwords_api'

def accept_service_link(service_link_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # Get the CustomerService.
  customer_srv = adwords.service(:CustomerService, API_VERSION)

  # Create the operation to set the status to ACTIVE.
  operation = {
    :operator => 'SET',
    :operand => {
      :service_link_id => service_link_id,
      :service_type => 'MERCHANT_CENTER',
      :link_status => 'ACTIVE'
    }
  }

  # Update the service link.
  mutated_service_links = customer_srv.mutate_service_links([operation])

  # Display the results.
  mutated_service_links.each do |mutated_service_link|
    puts ("Service link with service link ID %d, type '%s' updated to status:" +
        "%s.") % [
          mutated_service_link[:service_link_id],
          mutated_service_link[:service_type],
          mutated_service_link[:link_status]
        ]
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    service_link_id = 'INSERT_SERVICE_LINK_ID_HERE'.to_i

    accept_service_link(service_link_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

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
