#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example gets and downloads a report from a report definition. To get a
# report definition, run add_keywords_performance_report_definition.rb.

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201008

def download_report()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  report_def_srv = adwords.service(:ReportDefinitionService, API_VERSION)

  report_definition_id = 'INSERT_REPORT_DEFINITION_ID'.to_i
  file_name = 'INSERT_OUTPUT_FILE_NAME_HERE'

  # Download report, using "download_report_as_file" extension method.
  report_def_srv.download_report_as_file(report_definition_id, file_name)
  puts 'Report with definition id %d was downloaded to \'%s\'.' %
      [report_definition_id, file_name]
end

if __FILE__ == $0
  begin
    download_report()

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
