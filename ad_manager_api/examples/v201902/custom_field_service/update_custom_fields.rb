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
# This example updates custom field descriptions. To determine which custom
# fields exist, run get_all_custom_fields.rb.

require 'ad_manager_api'

def update_custom_fields(ad_manager, custom_field_id)
  # Get the CustomFieldService.
  custom_field_service = ad_manager.service(:CustomFieldService, API_VERSION)

  # Create a statement to only select a single custom field.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :custom_field_id'
    sb.with_bind_variable('custom_field_id', custom_field_id)
    sb.limit = 1
  end

  # Get custom fields by statement.
  response = custom_field_service.get_custom_fields_by_statement(
      statement.to_statement()
  )
  raise 'No custom fields found to update.' if response[:results].to_a.empty?
  custom_field = response[:results].first

  # Update custom field object.
  custom_field[:description] ||= ''
  custom_field[:description] += ' Updated.'

  # Update the custom field on the server.
  updated_custom_fields =
      custom_field_service.update_custom_fields([custom_field])

  if updated_custom_fields.to_a.size > 0
    updated_custom_fields.each do |custom_field|
      puts 'Custom field ID %d, name "%s", and description "%s" was updated.' %
          [custom_field[:id], custom_field[:name], custom_field[:description]]
    end
  else
    puts 'No custom fields were updated.'
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
    custom_field_id = 'INSERT_CUSTOM_FIELD_ID_HERE'.to_i
    update_custom_fields(ad_manager, custom_field_id)

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
