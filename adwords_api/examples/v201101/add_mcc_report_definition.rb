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
# Tags: ReportDefinitionService.mutate

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101

def add_mcc_report_definition()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  report_def_srv = adwords.service(:ReportDefinitionService, API_VERSION)

  # List of client logins to get report for ['abc@example.com', ...].
  client_logins = []

  # Prepare per-client selector.
  client_selectors = client_logins.collect { |login| {:login => login} }

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
      :cross_client => true,
      :client_selectors => client_selectors
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
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    add_mcc_report_definition()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'API Exception caught.'
    puts 'Message: %s' % e.message
    puts 'Code: %d' % e.code if e.code
    puts 'Trigger: %s' % e.trigger if e.trigger
    puts 'Errors:'
    if e.errors
      e.errors.each_with_index do |error, index|
        puts ' %d. Error type is %s. Fields:' % [index + 1, error[:xsi_type]]
        error.each_pair do |field, value|
          if field != :xsi_type
            puts '     %s: %s' % [field, value]
          end
        end
      end
    end
  end
end
