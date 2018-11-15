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
# This example sets custom field values on a line item. To determine which
# custom fields exist, run get_all_custom_fields.rb. To determine which line
# items exist, run get_all_line_items.rb. To create custom field options, run
# create_custom_field_options.rb.

require 'ad_manager_api'

def set_line_item_custom_field_value(ad_manager, custom_field_id,
    drop_down_custom_field_id, custom_field_option_id, line_item_id)
  # Get the CustomFieldService and LineItemService.
  custom_field_service = ad_manager.service(:CustomFieldService, API_VERSION)
  line_item_service = ad_manager.service(:LineItemService, API_VERSION)

  # Create a statement to only select a single custom field.
  custom_field_statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :custom_field_id'
    sb.with_bind_variable('custom_field_id', custom_field_id)
    sb.limit = 1
  end

  # Create a statement to only select a single drop down custom field.
  drop_down_custom_field_statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :drop_down_custom_field_id'
    sb.with_bind_variable(
        'drop_down_custom_field_id', drop_down_custom_field_id
    )
    sb.limit = 1
  end

  # Create a statement to only select a single line item.
  line_item_statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :line_item_id'
    sb.with_bind_variable('line_item_id', line_item_id)
    sb.limit = 1
  end

  # Get custom fields by statement.
  custom_fields_page = custom_field_service.get_custom_fields_by_statement(
      custom_field_statement.to_statement()
  )

  # Get drop down custom fields by statement.
  drop_down_custom_fields_page =
      custom_field_service.get_custom_fields_by_statement(
          drop_down_custom_field_statement.to_statement()
      )

  # Get line items by statement.
  line_items_page = line_item_service.get_line_items_by_statement(
      line_item_statement.to_statement()
  )

  # Get singular custom field.
  if custom_field_page[:results].to_a.size > 0
    custom_field = custom_fields_page[:results].first
  end

  # Get singular drop down custom field.
  if drop_down_custom_field_page[:results].to_a.size > 0
    drop_down_custom_field = drop_down_custom_fields_page[:results].first
  end

  # Get singular line item.
  if line_item_page[:results].to_a.size > 0
    line_item = line_items_page[:results].first
  end

  if !custom_field.nil? && !drop_down_custom_field.nil? && !line_item.nil?
    # Create custom field values.
    custom_field_value = {
      :custom_field_id => custom_field[:id],
      :type => 'CustomFieldValue',
      :value => {:type => 'TextValue', :value => 'Custom field value'}
    }

    drop_down_custom_field_value = {
      :custom_field_id => drop_down_custom_field[:id],
      :type => 'DropDownCustomFieldValue',
      :custom_field_option_id => custom_field_option_id
    }

    custom_field_values = [custom_field_value, drop_down_custom_field_value]
    old_custom_field_values = line_item[:custom_field_values] || []

    # Only add existing custom field values for different custom fields than the
    # ones you are setting.
    old_custom_field_values.each do |old_custom_field_value|
      custom_field_value_ids = custom_field_values.map {|value| value[:id]}
      value_already_present = custom_field_value_ids.include?(
          old_custom_field_value[:custom_field_id]
      )
      custom_field_values << old_custom_field_value unless value_already_present
    end

    line_item[:custom_field_values] = custom_field_values

    # Update the line item on the server.
    updated_line_items = line_item_service.update_line_items([line_item])

    # Display the results.
    updated_line_items.each do |line_item|
      custom_field_value_strings = []
      if line_item.include?(:custom_field_values)
        line_item[:custom_field_values].each do |value|
          if value[:base_custom_field_value_type] == 'CustomFieldValue'
            custom_field_value_strings << '{ID: %d, value: "%s"}' %
                [value[:custom_field_id], value[:value][:value]]
          end
          if value[:base_custom_field_value_type] == 'DropDownCustomFieldValue'
            custom_field_value_strings <<
                '{ID: %d, custom field option ID: %d}' %
                [value[:custom_field_id], value[:custom_field_option_id]]
          end
        end
      end
      puts 'Line item ID %d set with custom field values [%s].' %
          [return_line_item[:id], custom_field_value_strings.join(', ')]
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    custom_field_id = 'INSERT_CUSTOM_FIELD_ID_HERE'.to_i
    drop_down_custom_field_id = 'INSERT_DROP_DOWN_CUSTOM_FIELD_ID_HERE'.to_i
    custom_field_option_id = 'INSERT_CUSTOM_FIELD_OPTION_ID_HERE'.to_i
    line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
    set_line_item_custom_field_value(
        ad_manager, custom_field_id, drop_down_custom_field_id,
        custom_field_option_id, line_item_id
    )

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
