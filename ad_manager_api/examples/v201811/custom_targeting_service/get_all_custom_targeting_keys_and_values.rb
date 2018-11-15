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
# This example gets all custom targeting keys and values. To create custom
# targeting keys can values, run create_custom_targeting_keys_and_values.rb.

require 'ad_manager_api'

def get_all_custom_targeting_keys_and_values(ad_manager)
  # Get the CustomTargetingService.
  custom_targeting_service = ad_manager.service(
      :CustomTargetingService, API_VERSION
  )

  # Create a statement to get all custom targeting keys.
  key_statement = ad_manager.new_statement_builder()

  # Retrieve a small number of custom targeting keys at a time, paging through
  # until all custom targeting keys have been retrieved, and store their ids.
  custom_targeting_key_ids = []
  page = {:total_result_set_size => 0}
  begin
    # Get custom targeting keys by statement.
    page = custom_targeting_service.get_custom_targeting_keys_by_statement(
        key_statement.to_statement()
    )

    # Display some information about each custom targeting key.
    unless page[:results].nil?
      page[:results].each_with_index do |custom_targeting_key, index|
        custom_targeting_key_ids << custom_targeting_key[:id]
        puts ("%d) Custom targeting key with ID %d, name '%s', and display " +
            "name '%s' was found.") % [key_statement.offset + index,
            custom_targeting_key[:id], custom_targeting_key[:name],
            custom_targeting_key[:display_name]]
      end
    end
    key_statement.offset += key_statement.limit
  end while key_statement.offset < page[:total_result_set_size]

  # Create a statement to get all custom targeting values for each key.
  value_statement = ad_manager.new_statement_builder do |sb|
    sb.where = "customTargetingKeyId = :customTargetingKeyId"
  end

  # Get all custom targeting values for each custom targeting key.
  total_result_count = 0
  custom_targeting_key_ids.each do |key_id|
    value_statement.configure do |sb|
      sb.with_bind_variable("customTargetingKeyId", key_id)
      sb.offset = 0
    end

    # Retrieve a small number of custom targeting values at a time, paging
    # through until all custom targeting values have been retrieved.
    page = {:total_result_set_size => 0}
    begin
      # Get custom targeting values by statement.
      page = custom_targeting_service.get_custom_targeting_values_by_statement(
          value_statement.to_statement()
      )

      # Display some information about each custom targeting value.
      unless page[:results].nil?
        page[:results].each_with_index do |custom_targeting_value, index|
          puts ("%d) Custom targeting value with ID %d, name '%s', and " +
              "display name '%s', belonging to key with ID %d,  was found.") %
              [value_statement.offset + index, custom_targeting_value[:id],
              custom_targeting_value[:name],
              custom_targeting_value[:display_name],
              custom_targeting_value[:custom_targeting_key_id]]
        end
      end
      value_statement.offset += value_statement.limit
    end while value_statement.offset < page[:total_result_set_size]

    total_result_count += page[:total_result_set_size]
  end

  puts "Total number of custom targeting values found: %d" % total_result_count
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_all_custom_targeting_keys_and_values(ad_manager)

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
