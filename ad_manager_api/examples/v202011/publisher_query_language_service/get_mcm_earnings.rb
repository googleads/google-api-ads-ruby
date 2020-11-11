#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2020, Google LLC
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
# This example gets Multiple Customer Management earnings for the prior month.

require 'ad_manager_api'

def get_mcm_earnings(ad_manager)
  # Get the PublisherQueryLanguageService.
  pql_service = ad_manager.service(:PublisherQueryLanguageService, API_VERSION)

  last_month = ad_manager.today.prev_month(1)
  last_month_start = ad_manager.date(last_month.year, last_month.month, 1)

  # Build a statement to select MCM earnings data.
  statement = ad_manager.new_statement_builder do |sb|
    sb.select = %w[Month ChildName ChildNetworkCode TotalEarningsCurrencyCode
        TotalEarningsMicros ParentPaymentCurrencyCode ParentPaymentMicros
        ChildPaymentCurrencyCode ChildPaymentMicros DeductionsMicros].join(',')
    sb.from = 'Mcm_Earnings'
    sb.where = 'Month = :month'
    sb.order_by = 'ChildNetworkCode'
    sb.with_bind_variable('month', last_month_start)
  end

  # Set initial values for paging.
  result_set, all_rows = nil, 0

  # Get MCM earnings data with paging.
  begin
    result_set = pql_service.select(statement.to_statement())

    unless result_set.nil?
      # Print out columns header.
      columns = result_set[:column_types].collect {|col| col[:label_name]}
      puts columns.join(COLUMN_SEPARATOR)

      # Print out every row.
      rows = result_set[:rows]
      rows = [] if rows.nil?
      rows.each do |row_set|
          row = row_set[:values].collect {|item| item[:value]}
          puts row.join(COLUMN_SEPARATOR)
      end
    end

    statement.offset += statement.limit
    all_rows += rows.size
  end while rows.size == statement.limit

  puts "Total number of rows found: %d" % all_rows
end

if __FILE__ == $0
  # A string to separate columns in output. Use "," to get CSV.
  COLUMN_SEPARATOR = "\t"
  API_VERSION = :v202011

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_mcm_earnings(ad_manager)

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
