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
# This example gets the previous billing period's reconciliation report.

require 'ad_manager_api'

def get_reconciliation_report_for_last_billing_period(ad_manager)
  # Get the ReconciliationReportService.
  reconciliation_report_service =
      ad_manager.service(:ReconciliationReportService, API_VERSION)

  # Create a date representing the first day of the previous month.
  previous_month = ad_manager.today() << 1
  first_day_of_previous_month = ad_manager.date(
      previous_month.year,
      previous_month.month,
      1
  )

  # Create a statement to select the last billing period's reconciliation
  # report.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'startDate = :start_date'
    sb.with_bind_variable('start_date', first_day_of_previous_month)
    sb.limit = 1
  end

  # Get the reconciliation report.
  response = reconciliation_report_service.
      get_reconciliation_reports_by_statement(statement.to_statement())
  if response[:results].to_a.size < 1
    raise 'No reconciliation report found for last month.'
  end
  reconciliation_report = response[:results].first

  # Display the results.
  start_date = ad_manager.date(reconciliation_report[:start_date])
  puts 'Reconciliation report with ID %d and start date "%s" was found.' %
      [reconciliation_report[:id], start_date.strftime]
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_reconciliation_report_for_last_billing_period(ad_manager)

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
