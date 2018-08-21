#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example creates an exchange rate.

require 'ad_manager_api'

def create_exchange_rate(ad_manager)
  # Get the ExchangeRateService.
  exchange_rate_service = ad_manager.service(:ExchangeRateService, API_VERSION)

  # Create a configuration object for a fixed exchange rate with currency code
  # 'AUD', with direction FROM_NETWORK and a value of 1.5.
  exchange_rate = {
    :currency_code => 'AUD',
    :direction => 'FROM_NETWORK',
    :exchange_rate => 15_000_000_000,
    :refresh_rate => 'FIXED'
  }

  # Create the exchange rate on the server.
  created_exchange_rates = exchange_rate_service.create_exchange_rates([
      exchange_rate
  ])

  # Display the results.
  created_exchange_rates.each do |exchange_rate|
    puts ('Created an exchange rate with ID %d, currency code %s, direction ' +
        '%s, and exchange rate %.2f.') % [exchange_rate[:id],
        exchange_rate[:currency_code], exchange_rate[:direction],
        (exchange_rate[:exchange_rate] / 10_000_000_000.0)]
  end
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    create_exchange_rate(ad_manager)

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdManagerApi::Errors::ApiException => e
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
