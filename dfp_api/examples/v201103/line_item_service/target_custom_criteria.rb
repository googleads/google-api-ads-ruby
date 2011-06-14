#!/usr/bin/ruby
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
# Tags: LineItemService.getLineItem, LineItemService.updateLineItem

require 'rubygems'
require 'dfp_api'

require 'pp'

API_VERSION = :v201103
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
  free_form_custom_targeting_key_id1 =
      'INSERT_FREE_FORM_CUSTOM_TARGETING_KEY_ID_HERE'.to_i
  free_form_custom_targeting_key_id2 =
      'INSERT_FREE_FORM_CUSTOM_TARGETING_KEY_ID_HERE'.to_i

  # Create the free-form custom criteria for targeting "toyota".
  toyota_free_form_custom_criteria = {
      :xsi_type => 'FreeFormCustomCriteria',
      :operator => 'IS',
      :key_id => free_form_custom_targeting_key_id1,
      :values => [{:name => 'toyota', :match_type => 'EXACT'}]
  }

  # Create the free-form custom criteria for targeting "honda".
  honda_free_form_custom_criteria = {
      :xsi_type => 'FreeFormCustomCriteria',
      :operator => 'IS_NOT',
      :key_id => free_form_custom_targeting_key_id1,
      :values => [{:name => 'honda', :match_type => 'EXACT'}]
  }

  # Create the free-form custom criteria for targeting "ford".
  ford_free_form_custom_criteria = {
      :xsi_type => 'FreeFormCustomCriteria',
      :operator => 'IS',
      :key_id => free_form_custom_targeting_key_id2,
      :values => [{:name => 'ford', :match_type => 'EXACT'}]
  }

  # Create the custom criteria set that will resemble:
  #
  # (freeFormCustomTargetingKeyId1 == toyota OR
  #     (freeFormCustomTargetingKeyId1 != honda AND
  #      freeFormCustomTargetingKeyId2 == ford))
  sub_custom_criteria_set = {
      :xsi_type => 'CustomCriteriaSet',
      :logical_operator => 'AND',
      :children => [honda_free_form_custom_criteria,
                    ford_free_form_custom_criteria]
  }
  top_custom_criteria_set = {
      :xsi_type => 'CustomCriteriaSet',
      :logical_operator => 'OR',
      :children => [toyota_free_form_custom_criteria,
                    sub_custom_criteria_set]
  }

  # Get the line item.
  line_item = line_item_service.get_line_item(line_item_id)

  # Set the custom criteria targeting on the line item.
  line_item[:targeting] = {:custom_targeting => top_custom_criteria_set}

  # Update the line items on the server.
  return_line_item = line_item_service.update_line_item(line_item)

  # Display the updated line item.
  if return_line_item
    puts "Line item ID: %d was updated with custom criteria targeting:" %
        return_line_item[:id]
    pp return_line_item[:targeting]
  else
    puts 'Line item update failed.'
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
