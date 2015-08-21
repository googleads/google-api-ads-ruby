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
# This example updates the notes of a specific order.
# To determine which orders exist, run get_all_orders.rb.
#
# Tags: OrderService.getOrdersByStatement, OrderService.updateOrders

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_orders()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the OrderService.
  order_service = dfp.service(:OrderService, API_VERSION)

  order_id = 'INSERT_ORDER_ID_HERE'.to_i

  # Create a statement to get first 500 orders.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id ORDER BY id ASC',
      [
          {:key => 'id',
          :value => {:value => order_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  # Get orders by statement.
  page = order_service.get_orders_by_statement(statement.toStatement())

  if page[:results]
    orders = page[:results]

    orders.each do |order|
      # Archived orders can not be updated.
      if !order[:is_archived]
        order[:notes] = 'Spoke to advertiser. All is well.'
        # Workaround for issue #94.
        order[:po_number] = "" if order[:po_number].nil?
      end
    end

    # Update the orders on the server.
    return_orders = order_service.update_orders(orders)

    if return_orders
      return_orders.each do |order|
        puts ("Order ID: %d, advertiser ID: %d, name: %s was updated " +
              "with notes %s") % [order[:id], order[:advertiser_id],
                                  order[:name], order[:notes]]
      end
    else
      raise 'No orders were updated.'
    end
  else
    puts 'No orders found to update.'
  end
end

if __FILE__ == $0
  begin
    update_orders()

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
