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
# This example illustrates how to retrieve the number of API units usage for a
# client account for the current month.
#
# Tags: InfoService.get

require 'adwords_api'

def get_client_unit_usage(client_customer_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  info_srv = adwords.service(:InfoService, API_VERSION)

  start_date = Time.now.strftime('%Y%m01')
  end_date = Time.now.strftime('%Y%m%d')

  selector = {
    :api_usage_type => 'UNIT_COUNT_FOR_CLIENTS',
    :client_customer_ids => [client_customer_id],
    # Set to true to navigate your entire accounts tree.
    :include_sub_accounts => 1,
    :date_range => {
      :min => start_date,
      :max => end_date
    }
  }

  # Force to use the MCC credentials.
  adwords.use_mcc do
    # Get the unit info.
    info_srv.get(selector) do |header, response|
      puts "Total number of units consumed from %s to %s is %d." %
          [start_date, end_date, response[:cost]]
      puts "Number of units consumed by this request is %d" % header[:units]
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    # Specify client customer ID for the account to get usage for.
    client_customer_id = 'INSERT_CLIENT_CUSTOMER_ID_HERE'.to_i
    get_client_unit_usage(client_customer_id)

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
