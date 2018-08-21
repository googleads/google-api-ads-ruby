#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This example fetches and creates match table files from the Line_Item and
# Ad_Unit tables. This example may take a while to run.
#
# A full list of available tables can be found at:
#
#   https://developers.google.com/ad-manager/docs/reference/v201808/PublisherQueryLanguageService

require 'tempfile'
require 'ad_manager_api'

def fetch_match_tables(ad_manager)
  # Get the PublisherQueryLanguageService.
  pql_service = ad_manager.service(:PublisherQueryLanguageService, API_VERSION)

  # List of tables to fetch.
  fetch_tables = ['Line_Item', 'Ad_Unit']

  fetch_tables.each do |table|
    results_file_path = fetch_match_table(ad_manager, table, pql_service)
    puts '%s table saved to:\n\t%s' % [table, results_file_path]
  end
end

# Fetches a match table from a PQL statement and writes it to a file.
def fetch_match_table(ad_manager, table_name, pql_service)
  # Create a statement to select all items for the table.
  statement = ad_manager.new_statement_builder do |sb|
    sb.select = 'Id, Name, Status'
    sb.from = table_name
    sb.order_by = 'Id'
  end

  # Set initial values.
  file_path = '%s.csv' % table_name

  open(file_path, 'wb') do |file|
    file_path = file.path()
    begin
      result_set = pql_service.select(statement.to_statement())

      unless result_set.nil?
        # Only write column names if the first page.
        if statement.offset == 0
          columns = result_set[:column_types].collect {|col| col[:label_name]}
          file.write(columns.join(COLUMN_SEPARATOR) + '\n')
        end
        # Print out every row.
        result_set[:rows].each do |row_set|
          row = row_set[:values].collect {|item| item[:value]}
          file.write(row.join(COLUMN_SEPARATOR) + '\n')
        end
      end
      # Update the counters.
  
    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
    end while result_set[:rows].size == statement.limit
  end
  return file_path
end

if __FILE__ == $0
  API_VERSION = :v201808
  # A string to separate columns in output. Use "," to get CSV.
  COLUMN_SEPARATOR = ','

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    fetch_match_tables(ad_manager)

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
