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
# This example gets all line items that need creatves for the given order. The
# statement retrieves up to the maximum page size limit of 500. To create line
# items, run create_line_items.rb. To determine which orders exist, run
# get_all_orders.rb.
#
# Tags: LineItemService.getLineItemsByStatement

require 'dfp_api'

API_VERSION = :v201203

def get_line_items_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Set the ID of the order to get line items from.
  order_id = 'INSERT_ORDER_ID_HERE'.to_i

  # Create a statement to only select line items that need creatives from a
  # given order.
  statement = {
      :query => 'WHERE orderId = :order_id AND status = :status LIMIT 500',
      :values => [
          {:key => 'order_id',
           :value => {:value => order_id, :xsi_type => 'NumberValue'}},
          {:key => 'status',
           :value => {:value => 'NEEDS_CREATIVES', :xsi_type => 'TextValue'}}
      ]
  }

  # Get line items by statement.
  page = line_item_service.get_line_items_by_statement(statement)

  if page and page[:results]
    page[:results].each_with_index do |line_item, index|
      puts "%d) [%d] belongs to order ID %d, name: %s." % [index,
          line_item[:id], line_item[:order_id], line_item[:name]]
    end
  end

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Number of results found: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_line_items_by_statement()

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
