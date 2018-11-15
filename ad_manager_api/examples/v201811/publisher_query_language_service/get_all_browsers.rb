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
# This example gets all browsers available to target from the Browser table.
# The Browser PQL table schema can be found here:
#
# https://developers.google.com/ad-manager/docs/reference/latest/PublisherQueryLanguageService

require 'ad_manager_api'

def get_all_browsers(ad_manager)
  # Get the PublisherQueryLanguageService.
  pql_service = ad_manager.service(:PublisherQueryLanguageService, API_VERSION)

  # Build a statement to select all line items.
  statement = ad_manager.new_statement_builder do |sb|
    sb.select = 'Id, BrowserName, MajorVersion, MinorVersion'
    sb.from = 'Browser'
    sb.order_by = 'BrowserName'
  end

  # Set initial values for paging.
  result_set, all_rows = nil, 0

  # Get all line items with paging.
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

    statement.offset += statement.limit
    all_rows += result_set[:rows].size
  end while result_set[:rows].size == statement.limit

  puts "Total number of rows found: %d" % all_rows
end

if __FILE__ == $0
  # A string to separate columns in output. Use "," to get CSV.
  COLUMN_SEPARATOR = "\t"
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_all_browsers(ad_manager)

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
