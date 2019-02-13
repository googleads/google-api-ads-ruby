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
# This example updates a line item to add custom criteria targeting. The custom
# criteria set will be structured as follows:
#
# (custom_criteria[0].key == custom_criteria[0].values OR
#     (custom_criteria[1].key != custom_criteria[1].values AND
#         custom_criteria[2].key == custom_criteria[2].values))
#
# To determine which line items exist, run get_all_line_items.rb. To determine
# which custom targeting keys and values exist, run
# get_all_custom_targeting_keys_and_values.rb.

require 'ad_manager_api'
require 'pp'

def target_custom_criteria(ad_manager, line_item_id, custom_criteria_ids)
  # Get the LineItemService.
  line_item_service = ad_manager.service(:LineItemService, API_VERSION)

  # Create custom criteria.
  custom_criteria = [
    {
      :xsi_type => 'CustomCriteria',
      :key_id => custom_criteria_ids[0][:key],
      :value_ids => custom_criteria_ids[0][:values],
      :operator => 'IS'
    },
    {
      :xsi_type => 'CustomCriteria',
      :key_id => custom_criteria_ids[1][:key],
      :value_ids => custom_criteria_ids[1][:values],
      :operator => 'IS_NOT'
    },
    {
      :xsi_type => 'CustomCriteria',
      :key_id => custom_criteria_ids[2][:key],
      :value_ids => custom_criteria_ids[2][:values],
      :operator => 'IS'
    }
  ]

  sub_custom_criteria_set = {
    :xsi_type => 'CustomCriteriaSet',
    :logical_operator => 'AND',
    :children => [custom_criteria[1], custom_criteria[2]]
  }
  top_custom_criteria_set = {
    :xsi_type => 'CustomCriteriaSet',
    :logical_operator => 'OR',
    :children => [custom_criteria[0], sub_custom_criteria_set]
  }

  # Create a statement to only select a single line item.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :line_item_id'
    sb.with_bind_variable('line_item_id', line_item_id)
    sb.limit = 1
  end

  # Get line items by statement.
  response = line_item_service.get_line_items_by_statement(
      statement.to_statement()
  )
  raise 'No line item found to update.' if response[:results].to_a.empty?
  line_item = response[:results].first

  line_item[:targeting][:custom_targeting] = top_custom_criteria_set

  # Update the line items on the server.
  updated_line_items = line_item_service.update_line_items([line_item])

  # Display the updated line item.
  if updated_line_items.to_a.size > 0
    updated_line_items.each do |line_item|
      puts 'Line item with ID %d was updated with custom criteria targeting:' %
          line_item[:id]
      pp line_item[:targeting]
    end
  else
    puts 'No line items were updated.'
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
    line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
    custom_criteria_ids = [
      {:key => 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i,
       :values => ['INSERT_CUSTOM_TARGETING_VALUE_IDS_HERE'.to_i]},
      {:key => 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i,
       :values => ['INSERT_CUSTOM_TARGETING_VALUE_IDS_HERE'.to_i]},
      {:key => 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i,
       :values => ['INSERT_CUSTOM_TARGETING_VALUE_IDS_HERE'.to_i]}
    ]
    target_custom_criteria(ad_manager, line_item_id, custom_criteria_ids)

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
