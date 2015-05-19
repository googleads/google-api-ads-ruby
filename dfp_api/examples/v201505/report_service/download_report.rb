#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# This example downloads a completed report. To run a report, run
# run_delivery_report.rb, run_sales_report.rb or run_inventory_report.rb.
#
# Tags: ReportService.getReportDownloadURL

require 'dfp_api'

require 'open-uri'

API_VERSION = :v201505

def download_report()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ReportService.
  report_service = dfp.service(:ReportService, API_VERSION)

  # Set the ID of the completed report.
  report_job_id = 'INSERT_REPORT_JOB_ID_HERE'.to_i

  # Set the file path and name to save to.
  file_name = 'INSERT_FILE_PATH_AND_NAME_HERE'

  # Change to your preffered export format.
  export_format = 'CSV_DUMP'

  # Get the report URL.
  download_url = report_service.get_report_download_url(
      report_job_id, export_format);

  puts "Downloading [%s] to [%s]..." % [download_url, file_name]
  open(file_name, 'wb') do |local_file|
    local_file << open(download_url).read()
  end
end

if __FILE__ == $0
  begin
    download_report()

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
