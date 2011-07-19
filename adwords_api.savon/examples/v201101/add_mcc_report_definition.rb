#!/usr/bin/ruby
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
# This example adds a cross client (MCC) report. To get ad groups, run
# get_all_ad_groups.rb. To get report fields, run get_report_fields.rb.
#
# Please note: This feature is still under development and may change before it
# is released.
#
# Tags: ReportDefinitionService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201101

def add_mcc_report_definition()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  report_def_srv = adwords.service(:ReportDefinitionService, API_VERSION)

  # Prepare for adding report definition.
  operation = {
    :operator => 'ADD',
    :operand => {
      :report_type => 'KEYWORDS_PERFORMANCE_REPORT',
      :report_name => 'Ruby MCC report example #%d' %
          (Time.new.to_f * 1000).to_i,
      :selector => {
        :fields => ['AdGroupId', 'Id', 'KeywordText', 'KeywordMatchType',
                    'Impressions', 'Clicks', 'Cost']
      },
      :date_range_type => 'LAST_MONTH',
      :download_format => 'XML',
      :cross_client => true
    }
  }

  # Add report definition.
  response = report_def_srv.mutate([operation])
  if response
    response.each do |report_definition|
      puts 'Report definition with name \'%s\' and id \'%s\' was added' %
          [report_definition[:report_name], report_definition[:id]]
    end
  end
end

if __FILE__ == $0
  begin
    add_mcc_report_definition()

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
