#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example updates the display name of each custom targeting value belonging
# to a single key. To determine which custom targeting keys exist, run
# get_all_custom_targeting_keys_and_values.rb.

require 'ad_manager_api'

def update_custom_targeting_values(ad_manager, custom_targeting_key_id)
  # Get the CustomTargetingService.
  custom_targeting_service = ad_manager.service(
      :CustomTargetingService, API_VERSION
  )

  # Create a statement to get first 500 custom targeting keys.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'customTargetingKeyId = :key_id'
    sb.with_bind_variable('key_id', custom_targeting_key_id)
  end

  page = {:total_result_set_size => 0}
  begin
    # Get custom targeting keys by statement.
    page = custom_targeting_service.get_custom_targeting_values_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      # Update each custom targeting values object by changing its display name.
      values = page[:results]
      values.each do |value|
        display_name = (value[:display_name].nil?) ?
            value[:name] : value[:display_name]
        value[:display_name] = display_name + ' (Deprecated)'
      end

      # Update the custom targeting keys on the server.
      updated_values = custom_targeting_service.update_custom_targeting_values(
          values
      )

      unless updated_values.nil?
      # Print details about each value in results.
        updated_values.each_with_index do |custom_targeting_value, index|
          puts ('%d) Custom targeting key with ID %d, name "%s", and display ' +
              'name "%s" was updated.') % [index + statement.offset,
              custom_targeting_value[:id], custom_targeting_value[:name],
              custom_targeting_value[:display_name]]
        end
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    custom_targeting_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i
    update_custom_targeting_values(ad_manager, custom_targeting_key_id)

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
