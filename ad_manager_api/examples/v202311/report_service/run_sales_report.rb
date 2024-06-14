#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example runs a report equal to the "Sales by salespersons report" on the
# Ad Manager website. To download the report see download_report.rb.

require 'ad_manager_api'

def run_sales_report(ad_manager)
  # Get the ReportService.
  report_service = ad_manager.service(:ReportService, API_VERSION)

  # Create report query.
  report_query = {
    :date_range_type => 'LAST_MONTH',
    :dimensions => ['SALESPERSON_ID', 'SALESPERSON_NAME'],
    :columns => [
        'AD_SERVER_IMPRESSIONS',
        'AD_SERVER_CPM_AND_CPC_REVENUE',
        'AD_SERVER_WITHOUT_CPD_AVERAGE_ECPM'
    ]
  }

  # Create report job.
  report_job = {:report_query => report_query}

  # Run report job.
  report_job = report_service.run_report_job(report_job);

  MAX_RETRIES.times do |retry_count|
    # Get the report job status.
    report_job_status = report_service.get_report_job_status(report_job[:id])

    break unless report_job_status == 'IN_PROGRESS'
    puts 'Report with ID %d is still running.' % report_job[:id]
    sleep(RETRY_INTERVAL)
  end

  puts 'Report job with ID %d finished with status "%s".' % [report_job[:id],
      report_service.get_report_job_status(report_job[:id])]
end

if __FILE__ == $0
  API_VERSION = :v202311
  MAX_RETRIES = 10
  RETRY_INTERVAL = 30

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    run_sales_report(ad_manager)

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
