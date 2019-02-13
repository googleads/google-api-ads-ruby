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
# This example updates the notes of a specific order.
# To determine which orders exist, run get_all_orders.rb.

require 'ad_manager_api'

def update_orders(ad_manager, order_id)
  # Get the OrderService.
  order_service = ad_manager.service(:OrderService, API_VERSION)

  # Create a statement to get first 500 orders.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :order_id'
    sb.with_bind_variable('order_id', order_id)
    sb.limit = 1
  end

  # Get orders by statement.
  response = order_service.get_orders_by_statement(statement.to_statement())
  raise 'No orders found to update.' if response[:results].to_a.empty?
  order = response[:results].first

  # Archived orders can not be updated.
  order[:notes] = 'Spoke to advertiser. All is well.' unless order[:is_archived]

  # Update the orders on the server.
  updated_orders = order_service.update_orders(orders)

  if updated_orders.to_a.size > 0
    updated_orders.each do |order|
      puts ('Order ID %d, advertiser ID %d, name "%s" was updated with notes ' +
          '"%s".') % [order[:id], order[:advertiser_id], order[:name],
          order[:notes]]
    end
  else
    puts 'No orders were updated.'
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
    order_id = 'INSERT_ORDER_ID_HERE'.to_i
    update_orders(ad_manager, order_id)

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
