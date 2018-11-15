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
# This example deactivates a custom field. To determine which custom fields
# exist, run get_all_custom_fields.rb.

require 'ad_manager_api'

def deactivate_custom_field(ad_manager, custom_field_id)
  # Get the CustomFieldService.
  custom_field_service = ad_manager.service(:CustomFieldService, API_VERSION)

  # Create statement to select the custom field.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :custom_field_id'
    sb.with_bind_variable('custom_field_id', custom_field_id)
  end

  # Deactivate the custom field on the server.
  result = custom_field_service.perform_custom_field_action(
      {:xsi_type => 'DeactivateCustomFields'}, statement.to_statement()
  )

  # Display the results.
  if !result.nil? && result[:num_changes].to_i > 0
    puts "Number of custom fields deactivated: %d" % result[:num_changes]
  else
    puts 'No custom fields were deactivated.'
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
    custom_field_id = 'INSERT_custom_field_id'.to_i
    deactivate_custom_field(ad_manager, custom_field_id)

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
