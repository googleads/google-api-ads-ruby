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
# This example gets and downloads a report from a report definition. To get a
# report definition, run add_keywords_performance_report_definition.rb.

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101
MAX_RETRIES = 10
RETRY_INTERVAL = 30

def download_mcc_report()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  report_def_srv = adwords.service(:ReportDefinitionService, API_VERSION)

  report_definition_id = 'INSERT_REPORT_ID_HERE'.to_i

  # Initially run with qt = 'new'
  qt = 'new'
  retries_count = 0

  begin
    # Acquire report or report status with "download_mcc_report" extension
    # method.
    report_data = report_def_srv.download_mcc_report(report_definition_id, qt)
    # Saving query id for following queries.
    qt = report_data[:body]['qt']
    # Checking the response code.
    case report_data[:code]
      when 200
        puts "Acquired report of size: %d" % report_data[:body].size
        break
      when 206
        puts "Received a status update: %s" % report_data[:body]['stateName']
        puts "Waiting for %d seconds to retry..." % RETRY_INTERVAL
      when 500
        puts "Received a failure: %s" % report_data[:body]['stateName']
        break
    end
    sleep(RETRY_INTERVAL)
    retries_count += 1
  end while retries_count < MAX_RETRIES
end

if __FILE__ == $0
  begin
    download_mcc_report()

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
