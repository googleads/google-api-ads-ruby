#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# This example illustrates how to find a client customer ID for a client email.
# We recommend to use this script as a one off to convert your identifiers to
# IDs and store them for future use.
#
# Tags: InfoService.get

require 'adwords_api'
require 'adwords_api/utils'

def get_client_customer_id(client_email)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  info_srv = adwords.service(:InfoService, API_VERSION)

  today = Time.new.strftime('%Y%m%d')
  selector = {
    :client_emails => [client_email],
    :api_usage_type => 'UNIT_COUNT_FOR_CLIENTS',
    :include_sub_accounts => true,
    :date_range => {:min => today, :max => today}
  }

  # Get the information for client email address.
  info = adwords.use_mcc() {info_srv.get(selector)}

  if info and info[:api_usage_records]
    api_usage_records = info[:api_usage_records]
    api_usage_records.each do |record|
      puts "Found record with client email '%s' and ID %s." %
          [record[:client_email],
           AdwordsApi::Utils.format_id(record[:client_customer_id])]
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    # Email address to find ID for.
    client_email = 'INSERT_EMAIL_ADDRESS_HERE'
    get_client_customer_id(client_email)

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
