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
# This example gets recent changes in your network using the Change_History
# table.
#
# A full list of available tables can be found at
# https://developers.google.com/ad-manager/docs/reference/latest/PublisherQueryLanguageService

require 'ad_manager_api'

def get_recent_changes(ad_manager)
  # Get the PublisherQueryLanguageService.
  pql_service = ad_manager.service(:PublisherQueryLanguageService, API_VERSION)

  # Set end_time to the beginning of today.
  today = ad_manager.today()
  end_time = ad_manager.datetime(
      today.year,
      today.month,
      today.day,
      0,
      0,
      0,
      'America/New_York'
  )

  # Set start_time to the beginning of yesterday.
  yesterday = today - 1
  start_time = ad_manager.datetime(
      yesterday.year,
      yesterday.month,
      yesterday.day,
      0,
      0,
      0,
      'America/New_York'
  )

  # Create a statement to select recent changes. Change_History only supports
  # ordering by descending ChangeDateTime. To prevent complications from
  # changes that occur while paging, offset is not supported. Filter for a
  # specific time range instead.
  statement = ad_manager.new_statement_builder do |sb|
    sb.select = 'ChangeDateTime, EntityId, EntityType, Operation'
    sb.from = 'Change_History'
    sb.where = 'ChangeDateTime > :start_time AND ChangeDateTime < :end_time'
    sb.order_by = 'ChangeDateTime'
    sb.ascending = false
    sb.with_bind_variable('start_time', start_time)
    sb.with_bind_variable('end_time', end_time)
  end

  # Set initial values for paging.
  result_set, row_count = {:rows => []}, 0

  begin
    result_set = pql_service.select(statement.to_statement())

    if result_set
      # Print out columns header.
      columns = result_set[:column_types].collect {|col| col[:label_name]}
      puts columns.join(COLUMN_SEPARATOR)

      # Print out every row.
      result_set[:rows].each do |row_set|
        row = row_set[:values].collect {|item| item[:value]}
        change_date_time = ad_manager.datetime(row[0])
        row[0] = change_date_time.strftime('%Y-%m-%d %H:%M:%S ') +
            row[0][:time_zone_id]
        puts row.join(COLUMN_SEPARATOR)
      end

      # Get the earliest change time in the result set.
      last_date_time = result_set[:rows][-1][:values][0][:value]
      statement.configure do |sb|
        sb.with_bind_variable('start_time', last_date_time)
      end
      row_count += result_set[:rows].size
    end
  end while result_set && result_set[:rows] &&
      result_set[:rows].size == statement.limit

  puts 'Total number of rows found: %d' % row_count
end

if __FILE__ == $0
  API_VERSION = :v201811
  # A string to separate columns in output. Use "," to get CSV.
  COLUMN_SEPARATOR = "\t"

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_recent_changes(ad_manager)

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
