#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
#   https://developers.google.com/doubleclick-publishers/docs/reference/v201505/PublisherQueryLanguageService
#
# Tags: PublisherQueryLanguageService.select

require 'tempfile'

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505
# A string to separate columns in output. Use "," to get CSV.
COLUMN_SEPARATOR = ','

def fetch_match_tables()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the PublisherQueryLanguageService.
  pql_service = dfp.service(:PublisherQueryLanguageService, API_VERSION)

  # List of tables to fetch.
  fetch_tables = ['Line_Item', 'Ad_Unit']

  fetch_tables.each do |table|
    results_file_path = fetch_match_table(table, pql_service)
    puts "%s table saved to:\n\t%s" % [table, results_file_path]
  end
end

# Fetches a match table from a PQL statement and writes it to a file.
def fetch_match_table(table_name, pql_service)
  # Create a statement to select all items for the table.
  statement = DfpApiStatement::FilterStatement.new(
      'SELECT Id, Name, Status FROM %s ' % table_name + 'ORDER BY Id ASC')

  # Set initial values.
  file_path = '%s.csv' % table_name

  open(file_path, 'wb') do |file|
    file_path = file.path()
    begin
      result_set = pql_service.select(statement.toStatement())

      if result_set
        # Only write column names if the first page.
        if (offset == 0)
          columns = result_set[:column_types].collect {|col| col[:label_name]}
          file.write(columns.join(COLUMN_SEPARATOR) + "\n")
        end
        # Print out every row.
        result_set[:rows].each do |row_set|
          row = row_set[:values].collect {|item| item[:value]}
          file.write(row.join(COLUMN_SEPARATOR) + "\n")
        end
      end
      # Update the counters.
      statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
    end while result_set[:rows].size == DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end
  return file_path
end

if __FILE__ == $0
  begin
    fetch_match_tables()

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
