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
# Gets a reconciliation report's rows for line items that served through Ad
# Manager.

require 'ad_manager_api'

def get_reconciliation_report_rows_for_reconciliation_report(ad_manager,
    reconciliation_report_id)
  # Get the ReconciliationReportRowService.
  reconciliation_report_row_service =
      ad_manager.service(:ReconciliationReportRowService, API_VERSION)

  # Create a statement to select reconciliation report rows.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'reconciliationReportId = :reconciliation_report_id AND ' +
        'lineItemId != :line_item_id'
    sb.with_bind_variable('reconciliation_report_id', reconciliation_report_id)
    sb.with_bind_variable('line_item_id', 0)
    sb.order_by = 'lineItemId'
  end

  # Retrieve a small number of reconciliation report rows at a time, paging
  # through until all reconciliation report rows have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get reconciliation report rows by statement.
    page = reconciliation_report_row_service.
        get_reconciliation_report_rows_by_statement(statement.to_statement())

    # Print out some information for each reconciliation report row.
    unless page[:results].nil?
      page[:results].each_with_index do |reconciliation_report_row, index|
        puts ('%d) Reconciliation report row with ID %d, reconciliation ' +
            'source "%s", and reconciled volume %s was found.') %
            [index + statement.offset,
            reconciliation_report_row[:id],
            reconciliation_report_row[:reconciliation_source],
            reconciliation_report_row[:reconciled_volume] || 'nil']
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of reconciliation report rows: %d' %
      page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    reconciliation_report_id = 'INSERT_RECONCILIATION_REPORT_ID_HERE'.to_i
    get_reconciliation_report_rows_for_reconciliation_report(
      ad_manager, reconciliation_report_id
    )

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
