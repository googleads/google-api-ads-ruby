#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example updates the display name of each custom targeting key up to the
# first 500. To determine which custom targeting keys exist, run
# get_all_custom_targeting_keys_and_values.rb.
#
# Tags: CustomTargetingService.getCustomTargetingKeysByStatement
# Tags: CustomTargetingService.updateCustomTargetingKeys

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_custom_targeting_keys()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomTargetingService.
  custom_targeting_service = dfp.service(:CustomTargetingService, API_VERSION)

  # Create a statement to get all custom targeting keys.
  statement = DfpApiStatement::FilterStatement.new('ORDER BY id ASC')

  # Get custom targeting keys by statement.
  page = custom_targeting_service.get_custom_targeting_keys_by_statement(
      statement)
  keys = page[:results]

  raise 'No targeting keys found to update' if !keys || keys.empty?

  # Update each local custom targeting key object by changing its display name.
  keys.each do |key|
    display_name = (key[:display_name].nil?) ? key[:name] : key[:display_name]
    key[:display_name] = display_name + ' (Deprecated)'
  end

  # Update the custom targeting keys on the server.
  result_keys = custom_targeting_service.update_custom_targeting_keys(keys)

  if result_keys
    # Print details about each key in results.
    result_keys.each_with_index do |custom_targeting_key, index|
      puts ("%d) Custom targeting key with ID [%d], name: %s," +
          " displayName: %s type: %s was updated") % [index,
          custom_targeting_key[:id], custom_targeting_key[:name],
          custom_targeting_key[:display_name], custom_targeting_key[:type]]
    end
  else
    puts 'No targeting keys were updated'
  end
end

if __FILE__ == $0
  begin
    update_custom_targeting_keys()

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
