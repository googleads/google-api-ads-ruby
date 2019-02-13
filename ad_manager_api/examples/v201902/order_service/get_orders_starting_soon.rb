#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example gets all orders that are starting soon.

require 'ad_manager_api'

def get_orders_starting_soon(ad_manager)
  # Get the OrderService.
  order_service = ad_manager.service(:OrderService, API_VERSION)

  # Create AdManagerDateTime objects for now and 5 days from now.
  now = ad_manager.now("America/New_York")
  five_days_from_now = now + 5 * 24 * 60 * 60

  # Create a statement to select orders.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'status = :status AND startDateTime >= :start_time AND ' +
        'startDateTime <= :end_time'
    sb.with_bind_variable('status', 'APPROVED')
    sb.with_bind_variable('start_time', now)
    sb.with_bind_variable('end_time', five_days_from_now)
  end

  # Retrieve a small number of orders at a time, paging through until all
  # orders have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get orders by statement.
    page = order_service.get_orders_by_statement(statement.to_statement())

    # Display some information about each order.
    unless page[:results].nil?
      page[:results].each_with_index do |order, index|
        puts "%d) Order with ID %d and name '%s' was found." %
            [index + statement.offset, order[:id], order[:name]]
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of orders: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_orders_starting_soon(ad_manager)

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
