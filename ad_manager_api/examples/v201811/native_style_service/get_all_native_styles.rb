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
# This example gets all native styles.

require 'ad_manager_api'

def get_all_native_styles(ad_manager)
  # Get the NativeStyleService.
  native_style_service = ad_manager.service(:NativeStyleService, API_VERSION)

  # Create a statement to select native styles.
  statement = ad_manager.new_statement_builder()

  # Retrieve a small amount of native styles at a time, paging through until
  # all of them have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    page = native_style_service.get_native_styles_by_statement(
        statement.to_statement()
    )

    # Print out some information for each native style.
    unless page[:results].nil?
      page[:results].each_with_index do |style, index|
        puts ('%d) Native style with ID %d, name "%s", and creative ' +
            'template ID %d was found.') % [index + statement.offset,
            style[:id], style[:name], style[:creative_template_id]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < total_result_set_size

  puts 'Total number of native styles: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_all_native_styles(ad_manager)

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdManagerApi::Errors::ApiException => e
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
