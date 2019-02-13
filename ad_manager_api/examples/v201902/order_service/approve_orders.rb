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
# This example approves and overbooks all eligible draft or pending orders. To
# determine which orders exist, run get_all_orders.rb.

require 'ad_manager_api'

def approve_orders(ad_manager)
  # Get the OrderService.
  order_service = ad_manager.service(:OrderService, API_VERSION)

  # Create an AdManagerDateTime representing the start of the present day.
  today = ad_manager.today()
  start_of_today = ad_manager.datetime(
      today.year, today.month, today.day, 0, 0, 0, 'America/New_York'
  )

  # Create a statement text to select all eligible draft or pending orders.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'status IN (%s) AND endDateTime >= :start_of_today AND ' +
        'isArchived = :is_archived' %
        ["'DRAFT'", "'PENDING_APPROVAL'"].join(', ')
    sb.with_bind_variable('start_of_today', start_of_today)
    sb.with_bind_variable('is_archived', false)
  end

  order_ids = []

  page = {:total_result_set_size => 0}
  begin
    # Get orders by statement.
    page = order_service.get_orders_by_statement(statement.to_statement())

    unless page[:results].nil?
      page[:results].each_with_index do |order, index|
        puts ('%d) Order ID %d, status "%s", and name "%s" will be ' +
            'approved.') % [index + statement.offset, order[:id],
            order[:status], order[:name]]
        order_ids << order[:id]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Number of orders to be approved: %d' % order_ids.size

  if !order_ids.empty?
    # Create statement for action.
    statement = ad_manager.new_statement_builder do |sb|
      sb.where = 'id IN (%s)' % order_ids.join(', ')
    end

    # Perform action.
    result = order_service.perform_order_action(
        {:xsi_type => 'ApproveAndOverbookOrders'},
        statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts 'Number of orders approved: %d' % result[:num_changes]
    else
      puts 'No orders were approved.'
    end
  else
    puts 'No order found to approve.'
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
    approve_orders(ad_manager)

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
