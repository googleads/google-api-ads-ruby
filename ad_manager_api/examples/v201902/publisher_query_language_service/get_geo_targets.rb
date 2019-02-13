#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example gets all cities available to target. A full list of
# available PQL tables can be found at:
#
# https://developers.google.com/ad-manager/docs/reference/latest/PublisherQueryLanguageService

require 'ad_manager_api'

def get_geo_targets(ad_manager)
  # Get the PublisherQueryLanguageService.
  pql_service = ad_manager.service(:PublisherQueryLanguageService, API_VERSION)

  # Create a statement to select all targetable cities.
  statement = ad_manager.new_statement_builder do |sb|
    sb.select = 'Id, Name, CanonicalParentId, ParentIds, CountryCode, Type, ' +
        'Targetable'
    sb.from = 'Geo_Target'
    sb.where = 'Type = :type AND Targetable = :targetable'
    sb.with_bind_variable('type', 'City')
    sb.with_bind_variable('targetable', true)
    sb.order_by = 'Id'
  end

  # Set initial values for paging.
  result_set, row_count = {:rows => []}, 0

  # Get all cities with paging.
  begin
    result_set = pql_service.select(statement.to_statement())

    unless result_set.nil?
      # Print out columns header.
      columns = result_set[:column_types].collect {|col| col[:label_name]}
      puts columns.join(COLUMN_SEPARATOR)

      # Print out every row.
      result_set[:rows].each do |row_set|
        row = row_set[:values].collect {|item| item[:value]}
        puts row.join(COLUMN_SEPARATOR)
      end
    end

    # Update the counters.

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
    row_count += result_set[:rows].size
  end while result_set[:rows].size == statement.limit

  # Print a footer.
  puts "Total number of rows found: %d" % row_count
end

if __FILE__ == $0
  API_VERSION = :v201902
  # A string to separate columns in output. Use "," to get CSV.
  COLUMN_SEPARATOR = "\t"

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_geo_targets(ad_manager)

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
