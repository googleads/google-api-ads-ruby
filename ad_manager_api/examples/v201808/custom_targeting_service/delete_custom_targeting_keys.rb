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
# This example deletes custom targeting key by its name. To determine which
# custom targeting keys exist, run get_all_custom_targeting_keys_and_values.rb.

require 'ad_manager_api'

def delete_custom_targeting_keys(ad_manager, custom_targeting_key_name)
  # Get the CustomTargetingService.
  custom_targeting_service = ad_manager.service(
      :CustomTargetingService, API_VERSION
  )

  # Define initial values.
  custom_target_key_ids = []

  # Create statement to only select custom targeting key by the given name.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'name = :name'
    sb.with_bind_variable('name', custom_targeting_key_name)
  end

  page = {:total_result_set_size => 0}
  begin
    page = custom_targeting_service.get_custom_targeting_keys_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      page[:results].each do |key|
        # Add key ID to the list for deletion.
        custom_target_key_ids << key[:id]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  puts 'Number of custom targeting keys to be deleted: %d' %
      custom_target_key_ids.size

  if !(custom_target_key_ids.empty?)
    # Modify statement for action.
    statement = ad_manager.new_statement_builder do |sb|
      sb.where = 'id IN (%s)' % custom_target_key_ids.join(', ')
      sb.offset = nil
      sb.limit = nil
    end

    # Perform action.
    result = custom_targeting_service.perform_custom_targeting_key_action(
        {:xsi_type => 'DeleteCustomTargetingKeys'},
        statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts 'Number of custom targeting keys deleted: %d' % result[:num_changes]
    else
      puts 'No custom targeting keys were deleted.'
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    custom_targeting_key_name = 'INSERT_CUSTOM_TARGETING_KEY_NAME_HERE'
    delete_custom_targeting_keys(ad_manager, custom_targeting_key_name)

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
