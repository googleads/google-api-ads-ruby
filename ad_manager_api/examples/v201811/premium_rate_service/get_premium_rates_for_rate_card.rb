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
# This example gets all premium rates on a specific rate card.

require 'ad_manager_api'

def get_premium_rates_for_rate_card(ad_manager, rate_card_id)
  # Get the PremiumRateService.
  premium_rate_service = ad_manager.service(:PremiumRateService, API_VERSION)

  # Create a statement to select premium rates.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'rateCardId = :rate_card_id'
    sb.with_bind_variable('rate_card_id', rate_card_id)
  end

  # Retrieve a small amount of premium rates at a time, paging
  # through until all premium rates have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    page = premium_rate_service.get_premium_rates_by_statement(
        statement.to_statement()
    )

    # Print out some information for each premium rate.
    unless page[:results].nil?
      page[:results].each_with_index do |premium_rate, index|
        puts ('%d) Premium rate with ID %d, premium feature "%s", and rate ' +
            'card ID %d was found.') % [index + statement.offset,
            premium_rate[:id], premium_rate[:xsi_type],
            premium_rate[:rate_card_id]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of premium rates: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    rate_card_id = 'INSERT_RATE_CARD_ID_HERE'.to_i
    get_premium_rates_for_rate_card(ad_manager, rate_card_id)

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
