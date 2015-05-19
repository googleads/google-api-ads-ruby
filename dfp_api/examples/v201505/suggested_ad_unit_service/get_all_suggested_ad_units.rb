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
# This example gets all suggested ad units. To approve suggested ad units, run
# approve_suggested_ad_units.rb.
#
# This feature is only available to DFP premium solution networks.
#
# Tags: SuggestedAdUnitService.getSuggestedAdUnitsByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_all_suggested_ad_units()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the SuggestedAdUnitService.
  suggested_ad_unit_service = dfp.service(:SuggestedAdUnitService, API_VERSION)

  # Create a statement to get all suggested ad units.
  statement = DfpApiStatement::FilterStatement.new('ORDER BY id ASC')

  begin
    # Get suggested ad units by statement.
    page = suggested_ad_unit_service.get_suggested_ad_units_by_statement(
        statement.toStatement())

    if page[:results]
      # Print details about each suggested ad unit in results.
      page[:results].each_with_index do |ad_unit, index|
        puts "%d) Suggested ad unit ID: '%s' with number of requests: %d" %
            [index + statement.offset, ad_unit[:id], ad_unit[:num_requests]]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Total number of suggested ad units: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_all_suggested_ad_units()

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
