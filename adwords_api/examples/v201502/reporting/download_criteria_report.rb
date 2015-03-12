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
# This example gets and downloads an Ad Hoc report from a XML report definition.

require 'adwords_api'

def download_criteria_report(file_name)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # Get report utilities for the version.
  report_utils = adwords.report_utils(API_VERSION)

  # Define report definition. You can also pass your own XML text as a string.
  report_definition = {
    :selector => {
      :fields => ['CampaignId', 'AdGroupId', 'Id', 'Criteria', 'CriteriaType',
          'FinalUrls', 'Impressions', 'Clicks', 'Cost'],
      # Predicates are optional.
      :predicates => {
        :field => 'Status',
        :operator => 'IN',
        :values => ['ENABLED', 'PAUSED']
      }
    },
    :report_name => 'Last 7 days CRITERIA_PERFORMANCE_REPORT',
    :report_type => 'CRITERIA_PERFORMANCE_REPORT',
    :download_format => 'CSV',
    :date_range_type => 'LAST_7_DAYS',
    # Enable to get rows with zero impressions.
    :include_zero_impressions => false
  }

  # Download report, using "download_report_as_file" utility method.
  # To retrieve the report as return value, use "download_report" method.
  report_utils.download_report_as_file(report_definition, file_name)
  puts "Report was downloaded to '%s'." % file_name
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    # File name to write report to.
    file_name = 'INSERT_OUTPUT_FILE_NAME_HERE'
    download_criteria_report(file_name)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'http://code.google.com/p/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ReportError => e
    puts "Reporting Error: %s" % e.message
  end
end
