#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example deactivates all active line item custom fields. To determine
# which custom fields exist, run get_all_custom_fields.rb.

require 'ad_manager_api'

def deactivate_all_line_item_custom_fields(ad_manager)
  # Get the CustomFieldService.
  custom_field_service = ad_manager.service(:CustomFieldService, API_VERSION)

  # Create statement text to select active ad units.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'entityType = :entity_type AND isActive = :is_active'
    sb.with_bind_variable('entity_type', 'LINE_ITEM')
    sb.with_bind_variable('is_active', true)
  end

  begin
    # Get custom fields by statement.
    page = custom_field_service.get_custom_fields_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      page[:results].each_with_index do |custom_field, index|
        puts '%d) Custom field with ID %d and name "%s" will be deactivated.' %
            [index + statement.offset, custom_field[:id], custom_field[:name]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Update statement for action.
  statement.configure do |sb|
    sb.offset = nil
    sb.limit = nil
  end

  # Perform action.
  result = custom_field_service.perform_custom_field_action(
        {:xsi_type => 'DeactivateCustomFields'}, statement.to_statement())

  # Display results.
  if !result.nil? && result[:num_changes] > 0
    puts "Number of custom fields deactivated: %d" % result[:num_changes]
  else
    puts 'No custom fields were deactivated.'
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
    deactivate_all_line_item_custom_fields(ad_manager)

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
