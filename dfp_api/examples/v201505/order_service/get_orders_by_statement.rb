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
# This example gets all orders for a given advertiser. To create orders, run
# create_orders.rb. To determine which companies are advertisers, run
# get_companies_by_statement.rb.
#
# Tags: OrderService.getOrdersByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_orders_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the OrderService.
  order_service = dfp.service(:OrderService, API_VERSION)

  # Set the ID of the advertiser (company) to get orders for.
  advertiser_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'.to_i

  # Create a statement to only select orders for a given advertiser.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE advertiserId = :advertiser_id ORDER BY id ASC',
      [
          {:key => 'advertiser_id',
           :value => {:value => advertiser_id, :xsi_type => 'NumberValue'}}
      ]
  )

  begin
    # Get orders by statement.
    page = order_service.get_orders_by_statement(statement.toStatement())

    if page and page[:results]
      page[:results].each_with_index do |order, index|
        puts "%d) Order ID: %d, belongs to advertiser ID: %d, name: %s." % [
            index + statement.offset,
            order[:id], order[:advertiser_id], order[:name]]
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
    get_orders_by_statement()

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
