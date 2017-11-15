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
# This example gets all reconciliation reports.
require 'dfp_api'
require 'date'

class GetAllReconciliationReports

  def self.run_example(dfp)
    reconciliation_report_service =
        dfp.service(:ReconciliationReportService, :v201711)

    # Create a statement to select reconciliation reports.
    statement = DfpApi::FilterStatement.new()

    # Retrieve a small amount of reconciliation reports at a time, paging
    # through until all reconciliation reports have been retrieved.
    total_result_set_size = 0;
    begin
      page = reconciliation_report_service.get_reconciliation_reports_by_statement(
          statement.toStatement())

      # Print out some information for each reconciliation report.
      if page[:results]
        total_result_set_size = page[:total_result_set_size]
        page[:results].each_with_index do |reconciliation_report, index|
          start_date = reconciliation_report[:start_date]
          start_date_string = Date.new(
              start_date[:year],
              start_date[:month],
              start_date[:day]).to_s
          puts "%d) Reconciliation report with ID %d and start date '%s' was found." % [
              index + statement.offset,
              reconciliation_report[:id],
              start_date_string
          ]
        end
      end
      statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
    end while statement.offset < page[:total_result_set_size]

    puts 'Total number of reconciliation reports: %d' %
        total_result_set_size
  end

  def self.main()
    # Get DfpApi instance and load configuration from ~/dfp_api.yml.
    dfp = DfpApi::Api.new

    # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
    # the configuration file or provide your own logger:
    # dfp.logger = Logger.new('dfp_xml.log')

    begin
      run_example(dfp)

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
end

if __FILE__ == $0
  GetAllReconciliationReports.main()
end
