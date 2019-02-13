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
# This example updates the display name of each custom targeting key up to the
# first 500. To determine which custom targeting keys exist, run
# get_all_custom_targeting_keys_and_values.rb.

require 'ad_manager_api'

def update_custom_targeting_keys(ad_manager)
  # Get the CustomTargetingService.
  custom_targeting_service = ad_manager.service(
      :CustomTargetingService, API_VERSION
  )

  # Create a statement to get all custom targeting keys.
  statement = ad_manager.new_statement_builder do |sb|
    sb.order_by = 'id'
  end

  # Get custom targeting keys by statement.
  page = custom_targeting_service.get_custom_targeting_keys_by_statement(
      statement.to_statement()
  )
  keys = page[:results]

  raise 'No targeting keys found to update' if keys.to_a.empty?

  # Update each local custom targeting key object by changing its display name.
  keys.each do |key|
    display_name = (key[:display_name].nil?) ? key[:name] : key[:display_name]
    key[:display_name] = display_name + ' (Deprecated)'
  end

  # Update the custom targeting keys on the server.
  updated_keys = custom_targeting_service.update_custom_targeting_keys(keys)

  if updated_keys.to_a.size > 0
    # Print details about each key in results.
    updated_keys.each_with_index do |custom_targeting_key, index|
      puts ('%d) Custom targeting key with ID %d, name "%s", ' +
          'displayName "%s", and type "%s" was updated') % [index,
          custom_targeting_key[:id], custom_targeting_key[:name],
          custom_targeting_key[:display_name], custom_targeting_key[:type]]
    end
  else
    puts 'No targeting keys were updated'
  end
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    update_custom_targeting_keys(ad_manager)

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
