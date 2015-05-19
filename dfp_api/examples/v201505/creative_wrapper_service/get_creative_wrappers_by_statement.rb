#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This code example gets all active creative wrappers. To create creative
# wrappers, run create_creative_wrappers.rb.
#
# Tags: CreativeWrapperService.getCreativeWrappersByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_creative_wrappers_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeWrapperService.
  creative_wrapper_service = dfp.service(:CreativeWrapperService, API_VERSION)

  # Create filter text to select active creative wrappers.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE status = :status ORDER BY id ASC',
      [
        {
          :key => 'status',
          :value => {:value => 'ACTIVE', :xsi_type => 'TextValue'}
        }
      ]
  )

  begin
    # Get creative wrappers by statement.
    page = creative_wrapper_service.get_creative_wrappers_by_statement(
        statement.toStatement())

    if page and page[:results]
      page[:results].each_with_index do |creative_wrapper, index|
        puts "%d) Creative wrapper ID: %d, label ID: %d, status: '%s'." %
            [index + statement.offset, creative_wrapper[:id],
             creative_wrapper[:label_id], creative_wrapper[:status]]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Number of results found: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_creative_wrappers_by_statement()

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
