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
# This example deletes custom targeting values for a given custom targeting key.
# To determine which custom targeting keys and values exist, run
# get_all_custom_targeting_keys_and_values.rb.

require 'ad_manager_api'

def delete_custom_targeting_values(ad_manager, custom_targeting_key_id)
  # Get the CustomTargetingService.
  custom_targeting_service = ad_manager.service(
      :CustomTargetingService, API_VERSION
  )

  # Define initial values.
  custom_target_value_ids = []

  # Create statement to only select custom values by the given custom targeting
  # key ID.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'customTargetingKeyId = :key_id'
    sb.with_bind_variable('key_id', custom_targeting_key_id)
  end

  page = {:total_result_set_size => 0}
  begin
    # Get custom targeting values by statement.
    page = custom_targeting_service.get_custom_targeting_values_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      # Increase query offset by page size.
      page[:results].each do |value|
        # Add value ID to the list for deletion.
        custom_target_value_ids << value[:id]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  puts 'Number of custom targeting value to be deleted: %d' %
      custom_target_value_ids.size

  if !(custom_target_value_ids.empty?)
    # Modify statement for action, note, values are still present.
    statement.configure do |sb|
      sb.where = 'customTargetingKeyId = :key_id AND id IN (%s)' %
          custom_target_value_ids.join(', ')
      sb.offset = nil
      sb.limit = nil
    end

    # Perform action.
    result = custom_targeting_service.perform_custom_targeting_value_action(
        {:xsi_type => 'DeleteCustomTargetingValues'},
        statement.to_statement()
    )

    # Display the results.
    if !result.nil? && result[:num_changes] > 0
      puts 'Number of custom targeting values deleted: %d' %
          result[:num_changes]
    else
      puts 'No custom targeting values were deleted.'
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
    custom_targeting_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i
    delete_custom_targeting_values(ad_manager, custom_targeting_key_id)

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
