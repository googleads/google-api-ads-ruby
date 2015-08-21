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
# This example deletes custom targeting values for a given custom targeting key.
# To determine which custom targeting keys and values exist, run
# get_all_custom_targeting_keys_and_values.rb.
#
# Tags: CustomTargetingService.getCustomTargetingValuesByStatement
# Tags: CustomTargetingService.performCustomTargetingValueAction

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def delete_custom_targeting_values()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomTargetingService.
  custom_targeting_service = dfp.service(:CustomTargetingService, API_VERSION)

  # Set ID of the custom targeting key to delete values from.
  custom_targeting_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i

  # Define initial values.
  custom_target_value_ids = []

  # Create statement to only select custom values by the given custom targeting
  # key ID.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE customTargetingKeyId = :key_id',
      [
          {:key => 'key_id',
           :value => {:value => custom_targeting_key_id,
                      :xsi_type => 'NumberValue'}
          }
      ]
  )

  begin
    # Get custom targeting values by statement.
    page = custom_targeting_service.get_custom_targeting_values_by_statement(
        statement.toStatement())

    if page[:results]
      # Increase query offset by page size.
      page[:results].each do |value|
        # Add value ID to the list for deletion.
        custom_target_value_ids << value[:id]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  puts "Number of custom targeting value to be deleted: %d" %
      custom_target_value_ids.size

  if !(custom_target_value_ids.empty?)
    # Modify statement for action, note, values are still present.
    statement = DfpApiStatement::FilterStatement.new(
        "WHERE customTargetingKeyId = :key_id AND id IN (%s)" %
        [custom_target_value_ids.join(', ')],
        [
          {:key => 'key_id',
           :value => {:value => custom_targeting_key_id,
                      :xsi_type => 'NumberValue'}
          }
        ]
    )

    # Perform action.
    result = custom_targeting_service.perform_custom_targeting_value_action(
        {:xsi_type => 'DeleteCustomTargetingValues'}, statement.toStatement())

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of custom targeting values deleted: %d" %
          result[:num_changes]
    else
      puts 'No custom targeting values were deleted.'
    end
  end
end

if __FILE__ == $0
  begin
    delete_custom_targeting_values()

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
