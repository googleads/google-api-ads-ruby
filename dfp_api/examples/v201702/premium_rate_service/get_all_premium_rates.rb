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
# This example gets all premium rates.
require 'dfp_api'

class GetAllPremiumRates

  def self.run_example(dfp)
    premium_rate_service =
        dfp.service(:PremiumRateService, :v201702)

    # Create a statement to select premium rates.
    statement = DfpApi::FilterStatement.new()

    # Retrieve a small amount of premium rates at a time, paging
    # through until all premium rates have been retrieved.
    total_result_set_size = 0;
    begin
      page = premium_rate_service.get_premium_rates_by_statement(
          statement.toStatement())

      # Print out some information for each premium rate.
      if page[:results]
        total_result_set_size = page[:total_result_set_size]
        page[:results].each_with_index do |premium_rate, index|
          puts "%d) Premium rate with ID %d, premium feature '%s', and rate card id %d was found." % [
              index + statement.offset,
              premium_rate[:id],
              premium_rate[:xsi_type],
              premium_rate[:rate_card_id]
          ]
        end
      end
      statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
    end while statement.offset < page[:total_result_set_size]

    puts 'Total number of premium rates: %d' %
        total_result_set_size
  end

  def self.main()
    # Get DfpApi instance and load configuration from ~/dfp_api.yml.
    dfp = DfpApi::Api.new

    # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
    # the configuration file or provide your own logger:
    # dfp.logger = Logger.new('dfp_xml.log')

    begin
      run_example(dfp)

    # HTTP errors.
    rescue AdsCommon::Errors::HttpError => e
      puts "HTTP Error: %s" % e

    # API errors.
    rescue DfpApi::Errors::ApiException => e
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
end

if __FILE__ == $0
  GetAllPremiumRates.main()
end
