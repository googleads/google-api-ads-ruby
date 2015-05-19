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
# This example updates the display name of each custom targeting value belonging
# to a single key. To determine which custom targeting keys exist, run
# get_all_custom_targeting_keys_and_values.rb.
#
# Tags: CustomTargetingService.getCustomTargetingValuesByStatement
# Tags: CustomTargetingService.updateCustomTargetingValues

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_custom_targeting_values()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomTargetingService.
  custom_targeting_service = dfp.service(:CustomTargetingService, API_VERSION)

  # Set the ID of the custom targeting key to get custom targeting values for.
  custom_targeting_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i

  # Create a statement to get first 500 custom targeting keys.
  statement = DfpApiStatement::FilterStatement.new(
      :query => 'WHERE customTargetingKeyId = :key_id',
      :values => [
          {:key => 'key_id',
           :value => {:value => custom_targeting_key_id,
                      :xsi_type => 'NumberValue'}
          }
      ]
  )

  begin
    # Get custom targeting keys by statement.
    page = custom_targeting_service.get_custom_targeting_values_by_statement(
        statement.toStatement())

    if page[:results]
      # Update each local custom targeting values object by changing its display
      # name.
      page[:results].each do |value|
        display_name = (value[:display_name].nil?) ?
            value[:name] : value[:display_name]
        value[:display_name] = display_name + ' (Deprecated)'
      end

      # Update the custom targeting keys on the server.
      result_values = custom_targeting_service.update_custom_targeting_values(
          values)

      if result_values
      # Print details about each value in results.
        result_values.each_with_index do |custom_targeting_value, index|
          puts ("%d) Custom targeting key with ID [%d], name: %s," +
                " displayName: %s was updated") % [
                    index + statement.offset, custom_targeting_value[:id],
                    custom_targeting_value[:name],
                    custom_targeting_value[:display_name]]
        end
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]
end

if __FILE__ == $0
  begin
    update_custom_targeting_values()

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
