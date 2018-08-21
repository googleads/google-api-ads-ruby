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
# This example updates the delivery rate of all line items for an order.
# To determine which line items exist, run get_all_line_items.rb.
# To determine which order exist, run get_all_orders.rb.

require 'ad_manager_api'

def update_line_items(ad_manager, order_id)
  # Get the LineItemService.
  line_item_service = ad_manager.service(:LineItemService, API_VERSION)

  # Create a statement to get line items with even delivery rates.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'deliveryRateType = :delivery_rate_type AND orderId = :order_id'
    sb.with_bind_variable('delivery_rate_type', 'EVENLY')
    sb.with_bind_variable('order_id', order_id)
  end

  # Get line items by statement.
  page = line_item_service.get_line_items_by_statement(statement.to_statement())

  if page[:results].to_a.size > 0
    line_items = page[:results]

    # Update each local line item object by changing its delivery rate.
    new_line_items = line_items.inject([]) do |new_line_items, line_item|
      # Archived line items can not be updated.
      unless line_item[:is_archived]
        line_item[:delivery_rate_type] = 'AS_FAST_AS_POSSIBLE'
        new_line_items << line_item
      end
      new_line_items
    end

    # Update the line items on the server.
    updated_line_items = line_item_service.update_line_items(new_line_items)

    if updated_line_items.to_a.size > 0
      updated_line_items.each do |line_item|
        puts ('Line item ID %d, order ID %d, name "%s" was updated with ' +
            'delivery rate "%s".') % [line_item[:id], line_item[:order_id],
            line_item[:name], line_item[:delivery_rate_type]]
      end
    else
      puts 'No line items were updated.'
    end
  else
    puts 'No line items found to update.'
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
    order_id = 'INSERT_ORDER_ID_HERE'.to_i
    update_line_items(ad_manager, order_id)

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
