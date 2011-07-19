#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
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
# This example gets and saves a report from a report definition using MCC
# (cross-client) feature to a given path. To create a report definition, run
# add_mcc_report_definition.rb.
#
# Please note: This feature is still under development and may change before it
# is released.
#
# Tags: ReportDefinitionService

require 'rubygems'
require 'adwords_api'
require 'pp'

API_VERSION = :v201101
MAX_RETRIES = 10
RETRY_INTERVAL = 30

def download_mcc_report_as_file()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  report_def_srv = adwords.service(:ReportDefinitionService, API_VERSION)

  report_definition_id = 'INSERT_REPORT_ID_HERE'.to_i
  file_name = 'INSERT_OUTPUT_FILE_NAME_HERE'

  # Poll for the report.
  report_data = poll_for_report(report_def_srv, report_definition_id, file_name)

  # Check the response code.
  case report_data[:code]
    when 301
      puts "Saved report into a file: %s" % file_name
    when 500
      puts "Received a failure: %s" % report_data[:body]['failureReason']
      if report_data[:body]['failures']
        puts "Failures info:"
        pp report_data[:body]['failures']
      end
    else
      puts "Report returned with unexpected code %d and body: %s" % [
        report_data[:code], report_data[:body]]
  end
end

def poll_for_report(report_def_srv, report_definition_id, file_name)
  # Initially run with query_token = 'new'.
  query_token = 'new'

  MAX_RETRIES.times do |retry_count|
    # Acquire report or report status with "download_mcc_report_as_file"
    # extension method.
    report_data = report_def_srv.download_mcc_report_as_file(
        report_definition_id, query_token, file_name)
    if report_data[:body]
      # Save query id for following queries.
      query_token = report_data[:body]['queryToken']
      # Print current query status.
      puts "Received a status update: %s" % report_data[:body]['state']
    end
    if report_data[:code] == 200
      puts "Try %d/%d: still processing, retry in %d seconds..." % [
          retry_count + 1, MAX_RETRIES, RETRY_INTERVAL]
      sleep(RETRY_INTERVAL)
    else
      return report_data
    end
  end
end

if __FILE__ == $0
  begin
    download_mcc_report_as_file()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
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
