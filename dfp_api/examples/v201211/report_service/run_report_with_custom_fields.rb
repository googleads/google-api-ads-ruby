#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This example runs a report that includes custom fields found in the line items
# of an order. To download the report see download_report.rb.
#
# Tags: LineItemService.getLineItemByStatement
# Tags: ReportService.runReportJob, ReportService.getReportJob

require 'dfp_api'

API_VERSION = :v201211
PAGE_SIZE = 500
MAX_RETRIES = 10
RETRY_INTERVAL = 30

def run_report_with_custom_fields()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Get the ReportService.
  report_service = dfp.service(:ReportService, API_VERSION)

  # Set the ID of the order to get line items from.
  order_id = 'INSERT_ORDER_ID_HERE'.to_i

  # Define initial values.
  offset = 0
  page = {}
  custom_field_ids = []

  # Create a statement to only select line items from a given order.
  statement = {
      :values => [
          {:key => 'order_id',
           :value => {:value => order_id, :xsi_type => 'NumberValue'}}
      ]
  }
  query_text = 'WHERE orderId = :order_id LIMIT %d OFFSET %d'

  begin
    # Update the statement to get one page with current offset.
    statement[:query] = query_text % [PAGE_SIZE, offset]

    # Get line items by statement.
    page = line_item_service.get_line_items_by_statement(statement)

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE

      # Get custom field IDs from the line items of an order.
      page[:results].each do |line_item|
        if line_item[:custom_field_values]
          line_item[:custom_field_values].each do |value|
            custom_field_ids |= [value[:custom_field_id]]
          end
        end
      end
    end
  end while offset < page[:total_result_set_size]

  # Create report query.
  statement[:query] = 'WHERE ORDER_ID = :order_id'
  report_query = {
    :date_range_type => 'LAST_MONTH',
    :dimensions => ['LINE_ITEM'],
    :custom_field_ids => custom_field_ids,
    :columns => ['AD_SERVER_IMPRESSIONS'],
    :statement => statement
  }

  # Create report job.
  report_job = {:report_query => report_query}

  # Run report job.
  report_job = report_service.run_report_job(report_job);

  MAX_RETRIES.times do |retry_count|
    # Get the report job status.
    report_job = report_service.get_report_job(report_job[:id])

    break unless report_job[:report_job_status] == 'IN_PROGRESS'
    puts "Report with ID: %d is still running." % report_job[:id]
    sleep(RETRY_INTERVAL)
  end

  puts "Report job with ID: %d finished with status %s." %
      [report_job[:id], report_job[:report_job_status]]
end

if __FILE__ == $0
  begin
    run_report_with_custom_fields()

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
