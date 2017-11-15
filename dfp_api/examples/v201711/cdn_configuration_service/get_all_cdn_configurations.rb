#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example gets all of your network's CDN configurations.

require 'dfp_api'

API_VERSION = :v201711

def get_all_cdn_configurations()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CdnConfigurationService.
  cdn_configuration_service = dfp.service(:CdnConfigurationService, API_VERSION)

  # Create a statement to select CDN configurations.
  statement = DfpApi::FilterStatement.new()

  # Retrieve a small number of CDN configurations at a time, paging
  # through until all CDN configuration objects have been retrieved.
  total_result_set_size = 0;
  begin
    page = cdn_configuration_service.get_cdn_configurations_by_statement(
        statement.toStatement())

    # Print out some information for each CDN configuration.
    if page[:results]
      total_result_set_size = page[:total_result_set_size]
      page[:results].each_with_index do |cdn_configuration, index|
        puts "%d) CDN configuration with ID %d and name '%s' was found." % [
            index + statement.offset,
            cdn_configuration[:id],
            cdn_configuration[:name]
        ]
      end
    end
    statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of CDN configurations: %d' % total_result_set_size
end

if __FILE__ == $0
  begin
    get_all_cdn_configurations()

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
