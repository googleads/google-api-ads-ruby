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
# This example updates a line item to add custom criteria targeting. To
# determine which line items exist, run get_all_line_items.rb. To determine
# which custom targeting keys and values exist, run
# get_all_custom_targeting_keys_and_values.rb.
#
# Tags: LineItemService.getLineItemsByStatement,
#       LineItemService.updateLineItems

require 'dfp_api'
require 'dfp_api_statement'

require 'pp'

API_VERSION = :v201505
PAGE_SIZE = 500

def target_custom_criteria()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Set the ID of the line item to update targeting.
  line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i

  # Set the IDs of the custom targeting keys.
  custom_criteria_ids = [
      {:key => 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i,
       :values => ['INSERT_CUSTOM_TARGETING_VALUE_IDS_HERE'.to_i]},
      {:key => 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i,
       :values => ['INSERT_CUSTOM_TARGETING_VALUE_IDS_HERE'.to_i]},
      {:key => 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i,
       :values => ['INSERT_CUSTOM_TARGETING_VALUE_IDS_HERE'.to_i]}
  ]

  # Create custom criteria.
  custom_criteria = [
      {:xsi_type => 'CustomCriteria',
       :key_id => custom_criteria_ids[0][:key],
       :value_ids => custom_criteria_ids[0][:values],
       :operator => 'IS'},
      {:xsi_type => 'CustomCriteria',
       :key_id => custom_criteria_ids[1][:key],
       :value_ids => custom_criteria_ids[1][:values],
       :operator => 'IS_NOT'},
      {:xsi_type => 'CustomCriteria',
       :key_id => custom_criteria_ids[2][:key],
       :value_ids => custom_criteria_ids[2][:values],
       :operator => 'IS'}
  ]

  # Create the custom criteria set that will resemble:
  #
  # (custom_criteria[0].key == custom_criteria[0].values OR
  #     (custom_criteria[1].key != custom_criteria[1].values AND
  #         custom_criteria[2].key == custom_criteria[2].values))
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
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id ORDER BY id ASC',
      [
          {:key => 'id',
           :value => {:value => line_item_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  # Get line items by statement.
  page = line_item_service.get_line_items_by_statement(statement.toStatement())

  if page[:results]
    line_item = page[:results].first

    line_item[:targeting] = {:custom_targeting => top_custom_criteria_set}

    # Update the line items on the server.
    return_line_item = line_item_service.update_line_items([line_item])

    # Display the updated line item.
    if return_line_item
      puts "Line item ID: %d was updated with custom criteria targeting:" %
          return_line_item[:id]
      pp return_line_item[:targeting]
    else
      puts 'Line item update failed.'
    end
  end
end

if __FILE__ == $0
  begin
    target_custom_criteria()

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
