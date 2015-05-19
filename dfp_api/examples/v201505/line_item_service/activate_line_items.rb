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
# This example activates all line items for the given order. To be activated,
# line items need to be in the approved (needs creatives) state and have at
# least one creative associated with them. To approve line items, approve the
# order to which they belong by running approve_orders.rb. To create LICAs, run
# create_licas.rb. To determine which line items exist, run
# get_all_line_items.rb. To determine which orders exist, run get_all_orders.rb.
#
# Tags: LineItemService.getLineItemsByStatement
# Tags: LineItemService.performLineItemAction

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def activate_line_items()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Set the ID of the order to get line items from.
  order_id = 'INSERT_ORDER_ID_HERE'.to_i

  # Create a statement to only select line items from the specified order that
  # are in the approved (needs creatives) state.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE orderID = :order_id AND status = :status',
      [
          {:key => 'order_id',
           :value => {:value => order_id, :xsi_type => 'NumberValue'}},
          {:key => 'status',
           :value => {:value => 'NEEDS_CREATIVES', :xsi_type => 'TextValue'}}
      ]
  )

  line_item_ids = []

  begin
    # Get line items by statement.
    page = line_item_service.get_line_items_by_statement(
        statement.toStatement())

    if page[:results]
      page[:results].each do |line_item|
        if !line_item[:is_archived]
          puts ("%d) Line item with ID: %d, order ID: %d and name: %s will " +
              "be activated.") % [line_item_ids.size, line_item[:id],
              line_item[:order_id], line_item[:name]]
          line_item_ids << line_item[:id]
        end
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  puts "Number of line items to be activated: %d" % line_item_ids.size

  if !line_item_ids.empty?
    # Modify statement for action. Note, the values are still present.
    statement = DfpApiStatement::FilterStatement.new(
        "WHERE id IN (%s)" % line_item_ids.join(', '))

    # Perform action.
    result = line_item_service.perform_line_item_action(
        {:xsi_type => 'ActivateLineItems'}, statement.toStatement())

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of line items activated: %d" % result[:num_changes]
    else
      puts 'No line items were activated.'
    end
  else
    puts 'No line items found to activate.'
  end
end

if __FILE__ == $0
  begin
    activate_line_items()

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
