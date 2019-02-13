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
# This example gets the exchange rate for a specific currency code.

require 'ad_manager_api'

def get_exchange_rates_for_currency_code(ad_manager, currency_code)
  # Get the ExchangeRateService.
  exchange_rate_service = ad_manager.service(:ExchangeRateService, API_VERSION)

  # Create a statement to select exchange rates.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'currencyCode = :currency_code'
    sb.with_bind_variable('currency_code', currency_code)
  end

  # Retrieve a small number of exchange rates at a time, paging through until
  # all exchange rates have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get exchange rates by statement.
    page = exchange_rate_service.get_exchange_rates_by_statement(
        statement.to_statement()
    )

    # Display some information about each exchange rate.
    unless page[:results].nil?
      page[:results].each do |exchange_rate|
        puts ('Exchange rate with ID %d, currency code "%s", and exchange ' +
            'rate %.2f was found.') % [exchange_rate[:id],
            exchange_rate[:currency_code],
            exchange_rate[:exchange_rate] / 10_000_000_000.0]
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts "Total number of custom targeting values found: %d" %
      page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    currency_code = 'INSERT_CURRENCY_CODE_HERE'
    get_exchange_rates_for_currency_code(ad_manager, currency_code)

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
