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
# https://developers.google.com/doubleclick-publishers/docs/reference/latest/PublisherQueryLanguageService

require 'date'

require 'dfp_api'

API_VERSION = :v201702
# A string to separate columns in output. Use "," to get CSV.
COLUMN_SEPARATOR = "\t"

def get_recent_changes()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the PublisherQueryLanguageService.
  pql_service = dfp.service(:PublisherQueryLanguageService, API_VERSION)

  start_date_time = DateTime.parse(Date.today.to_s).
      strftime('%Y-%m-%dT%H:%M:%S')
  end_date_time = DateTime.parse((Date.today - 1).to_s).
      strftime('%Y-%m-%dT%H:%M:%S')

  # Create a statement to select recent changes. Change_History only supports
  # ordering by descending ChangeDateTime. To prevent complications from
  # changes that occur while paging, offset is not supported. Filter for a
  # specific time range instead.
  statement = get_filter_statement(start_date_time, end_date_time)

  # Set initial values for paging.
  result_set, all_rows = nil, 0

  begin
    result_set = pql_service.select(statement.toStatement())

    if result_set
      # Print out columns header.
      columns = result_set[:column_types].collect {|col| col[:label_name]}
      puts columns.join(COLUMN_SEPARATOR)

      # Print out every row.
      result_set[:rows].each do |row_set|
          row = row_set[:values].collect {|item| item[:value]}
          row[0] = format_date(row[0])
          puts row.join(COLUMN_SEPARATOR)
      end

      # Get the earliest change time in the result set.
      last_date_time =
          format_date(result_set[:rows][-1][:values][0][:value], false)
      statement = get_filter_statement(last_date_time, end_date_time)
      all_rows += result_set[:rows].size
    end
  end while result_set && result_set[:rows] &&
      result_set[:rows].size == DfpApi::SUGGESTED_PAGE_LIMIT

  puts 'Total number of rows found: %d' % all_rows
end

def get_filter_statement(start_date_time, end_date_time)
  DfpApi::FilterStatement.new(
    'SELECT ChangeDateTime, EntityId, EntityType, Operation ' +
    'FROM Change_History ' +
    'WHERE ChangeDateTime < :start_date_time ' +
    'AND ChangeDateTime > :end_date_time ' +
    'ORDER BY ChangeDateTime DESC',
    [
      {
        :key => 'start_date_time',
        :value => {:value => start_date_time, :xsi_type => 'TextValue'}
      },
      {
        :key => 'end_date_time',
        :value => {:value => end_date_time, :xsi_type => 'TextValue'}
      }
    ]
  )
end

def format_date(date_hash, with_time_zone = true)
  date_time = '%s-%02d-%02dT%02d:%02d:%02d' % [
    date_hash[:date][:year], date_hash[:date][:month], date_hash[:date][:day],
    date_hash[:hour], date_hash[:minute], date_hash[:second]
  ]
  date_time += ' %s' % date_hash[:time_zone_id] if with_time_zone
  return date_time
end

if __FILE__ == $0
  begin
    get_recent_changes()

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
