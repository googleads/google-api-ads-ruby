#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This example streams the results of an Ad Hoc report to a file.

require 'adwords_api'

def stream_criteria_report_results()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # Get report utilities for the version.
  report_utils = adwords.report_utils(API_VERSION)

  # Define report query.
  report_query = 'SELECT Id, AdNetworkType1, Impressions ' +
      'FROM CRITERIA_PERFORMANCE_REPORT ' +
      'WHERE Status IN [ENABLED, PAUSED] ' +
      'DURING LAST_7_DAYS'

  # Optional: Set the configuration of the API instance to suppress header,
  # column name, or summary rows in the report output. You can also configure
  # this in your adwords_api.yml configuration file.
  adwords.skip_report_header = true
  adwords.skip_column_header = true
  adwords.skip_report_summary = true
  # Enable to allow rows with zero impressions to show.
  adwords.include_zero_impressions = false

  # Set the default value of the hash to 0 to allow easy totaling.
  ad_network_map = Hash.new(0)

  # We use get_stream_helper_with_awql.each_line here, which uses the
  # ReportStream utility to handle breaking the streamed results into lines
  # for easy processing. If you'd rather handle processing yourself, you can
  # use download_report_as_stream_with_awql, which just passes data to the
  # block as it's downloaded, without breaking it up into meaningful chunks.
  report_utils.get_stream_helper_with_awql(
        report_query, 'CSV').each_line do |line|
    process_line(line, ad_network_map)
  end

  puts 'Total impressions by ad network type 1:'
  ad_network_map.each do |ad_network_type, total_impressions|
    puts '  %s: %s' % [ad_network_type, total_impressions]
  end
end

def process_line(line, ad_network_map)
  id, ad_network_type_1, impressions = line.split(',')
  ad_network_map[ad_network_type_1] += impressions.to_i
end

if __FILE__ == $0
  API_VERSION = :v201605

  begin
    # File name to write report to.
    stream_criteria_report_results()

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ReportError => e
    puts "Reporting Error: %s" % e.message
  end
end
