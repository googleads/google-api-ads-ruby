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
# This example gets all line items which have a name beginning with "line item".
# This example may take a while to run.

require 'dfp_api'

def get_line_items_named_like(dfp)
  # Get the PublisherQueryLanguageService.
  pql_service = dfp.service(:PublisherQueryLanguageService, API_VERSION)

  # Create a statement to select all line items matching subtext.
  statement = dfp.new_statement_builder do |sb|
    sb.select = 'Id, Name, Status'
    sb.from = 'Line_Item'
    sb.where = 'Name LIKE \'line item %%\''
    sb.order_by = 'Id'
  end

  # Set initial values for paging.
  result_set, row_count = {:rows => []}, 0

  # Get all line items starting with "line item".
  begin
    result_set = pql_service.select(statement.to_statement())

    if result_set
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
  API_VERSION = :v201711
  # A string to separate columns in output. Use "," to get CSV.
  COLUMN_SEPARATOR = "\t"

  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  begin
    get_line_items_named_like(dfp)

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
