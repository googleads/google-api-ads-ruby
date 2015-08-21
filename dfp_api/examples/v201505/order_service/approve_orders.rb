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
# This example approves and overbooks all eligible draft or pending orders. To
# determine which orders exist, run get_all_orders.rb.
#
# Tags: OrderService.getOrdersByStatement
# Tags: OrderService.performOrderAction

require 'date'
require 'dfp_api'

API_VERSION = :v201505
PAGE_SIZE = 500

def approve_orders()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the OrderService.
  order_service = dfp.service(:OrderService, API_VERSION)

  # Create a statement text to select all eligible draft or pending orders.
  statement = DfpApiStatement::FilterStatement.new(
      "WHERE status IN ('DRAFT', 'PENDING_APPROVAL') " +
      "AND endDateTime >= :today AND isArchived = FALSE",
      [
         {:key => 'today',
          :value => {:value => Date.today.strftime('%Y-%m-%dT%H:%M:%S'),
                     :xsi_type => 'TextValue'}}
      ]
  )

  order_ids = []

  begin
    # Get orders by statement.
    page = order_service.get_orders_by_statement(statement.toStatement())

    if page[:results]
      page[:results].each_with_index do |order, index|
        puts ("%d) Order ID: %d, status: %s and name: %s will be " +
            "approved.") % [index + statement.offset,
                            order[:id], order[:status],
                            order[:name]]
        order_ids << order[:id]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  puts "Number of orders to be approved: %d" % order_ids.size

  if !order_ids.empty?
    # Create statement for action.
    statement = DfpApiStatement::FilterStatement.new(
        "WHERE id IN (%s)" % order_ids.join(', '))

    # Perform action.
    result = order_service.perform_order_action(
        {:xsi_type => 'ApproveAndOverbookOrders'}, statement.toStatement())

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of orders approved: %d" % result[:num_changes]
    else
      puts 'No orders were approved.'
    end
  else
    puts 'No order found to approve.'
  end
end

if __FILE__ == $0
  begin
    approve_orders()

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
