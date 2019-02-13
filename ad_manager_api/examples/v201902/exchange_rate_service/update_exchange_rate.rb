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
# This example updates the value of an exchange rate. Note that updating the
# exchange rate value will only take effect if the exchange rate's refreshRate
# is set to FIXED.

require 'ad_manager_api'

def update_exchange_rate(ad_manager, exchange_rate_id)
  # Get the ExchangeRateService.
  exchange_rate_service = ad_manager.service(:ExchangeRateService, API_VERSION)

  # Create a statement to select the exchange rate.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :exchange_rate_id'
    sb.with_bind_variable('exchange_rate_id', exchange_rate_id)
    sb.limit = 1
  end

  # Get the exchange rate.
  response = exchange_rate_service.get_exchange_rates_by_statement(
    statement.to_statement()
  )
  raise 'No exchange rates found to update.' if response[:results].to_a.empty?
  exchange_rate = response[:results].first

  # Update the exchange rate value to 1.5.
  exchange_rate[:exchange_rate] = 15_000_000_000

  # Send the changes to the server.
  updated_exchange_rates = exchange_rate_service.update_exchange_rates([
    exchange_rate
  ])

  # Display the results.
  if updated_exchange_rates.to_a.size > 0
    updated_exchange_rates.each do |exchange_rate|
      puts ('Exchange rate with ID %d, currency code "%s", direction "%s", ' +
          'and exchange rate %.2f was updated.') % [exchange_rate[:id],
          exchange_rate[:currency_code], exchange_rate[:direction],
          exchange_rate[:exchange_rate] / 10_000_000_000.0]
    end
  else
    puts 'No exchange rates were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    exchange_rate_id = 'INSERT_EXCHANGE_RATE_ID_HERE'.to_i
    update_exchange_rate(ad_manager, exchange_rate_id)

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
