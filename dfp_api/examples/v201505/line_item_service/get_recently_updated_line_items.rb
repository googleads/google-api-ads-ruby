#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This code example shows how to get recently updated line items. To create line
# items, run create_line_items.rb. To determine which orders exist, run
# get_all_orders.rb.
#
# Tags: LineItemService.getLineItemsByStatement

require 'date'

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_recently_updated_line_items()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Set the ID of the order to get line items from.
  order_id = 'INSERT_ORDER_ID_HERE'.to_i

  # Create statement object to only select line items belonging to the order and
  # have been modified in the last 3 days.
  statement = DfpApiStatement::FilterStatement.new(
    'WHERE lastModifiedDateTime >= :date_time_string AND ' +
    'orderId = :order_id ORDER BY id ASC',
    [
      {:key => 'order_id',
       :value => {:value => order_id, :xsi_type => 'NumberValue'}},
      {:key => 'date_time_string',
       :value => {
           :value => (DateTime.now - 3).strftime('%Y-%m-%dT%H:%M:%S'),
           :xsi_type => 'TextValue'
      }},
    ]
  )

  begin
    # Get line items by statement.
    page = line_item_service.get_line_items_by_statement(
        statement.toStatement())

    if page and page[:results]
      page[:results].each_with_index do |line_item, index|
        puts "%d) [%d] belongs to order ID %d, name: %s." % [
            index + statement.offset, line_item[:id],
            line_item[:order_id], line_item[:name]]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Number of results found: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_recently_updated_line_items()

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
