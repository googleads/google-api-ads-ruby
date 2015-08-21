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
# This example deactivates all LICAs for the line item. To determine which LICAs
# exist, run get_all_licas.rb. To determine which line items exist, run
# get_all_line_items.rb.
#
# Tags: InventoryService.getLineItemsByStatement
# Tags: InventoryService.performAdUnitAction

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def deactivate_licas()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemCreativeAssociationService.
  lica_service = dfp.service(:LineItemCreativeAssociationService, API_VERSION)

  # Set the line item to get LICAs by.
  line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i

  # Create statement to select active LICAs for a given line item.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE lineItemId = :line_item_id AND status = :status',
      [
          {:key => 'line_item_id',
           :value => {:value => line_item_id, :xsi_type => 'NumberValue'}},
          {:key => 'status',
           :value => {:value => 'ACTIVE', :xsi_type => 'TextValue'}}
      ]
  )

  creative_ids = []

  begin
    # Get LICAs by statement.
    page = lica_service.get_line_item_creative_associations_by_statement(
        statement.toStatement())

    if page[:results]
      page[:results].each do |lica|
        puts ("%d) LICA with line item ID: %d, creative ID: %d and status: %s" +
            " will be deactivated.") % [creative_ids.size, lica[:line_item_id],
            lica[:creative_id], lica[:status]]
        creative_ids << lica[:creative_id]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  puts "Number of LICAs to be deactivated: %d" % creative_ids.size

  if !creative_ids.empty?
    # Modify statement for action. Note, the values are still present.
    statement = DfpApiStatement::FilterStatement.new(
        "WHERE creativeId IN (%s)" % creative_ids.join(', '))

    # Perform action.
    result = lica_service.perform_line_item_creative_association_action(
        {:xsi_type => 'DeactivateLineItemCreativeAssociations'},
        statement.toStatement())

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of LICAs deactivated: %d" % result[:num_changes]
    else
      puts 'No LICAs were deactivated.'
    end
  else
    puts 'No LICAs found to deactivate.'
  end
end

if __FILE__ == $0
  begin
    deactivate_licas()

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
