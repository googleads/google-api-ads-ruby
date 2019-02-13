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
# This example creates new orders. To determine which orders exist, run
# get_all_orders.rb. To determine which companies are advertisers, run
# get_companies_by_statement.rb. To get salespeople and traffickers, run
# get_all_users.rb.

require 'securerandom'
require 'ad_manager_api'

def create_orders(ad_manager, advertiser_id, salesperson_id, trafficker_id,
    number_of_orders_to_create)
  # Get the OrderService.
  order_service = ad_manager.service(:OrderService, API_VERSION)

  # Create an array to store local order objects.
  orders = (1..number_of_orders_to_create).map do |index|
    {
      :name => 'Order #%d - %s' % [index, SecureRandom.uuid()],
      :advertiser_id => advertiser_id,
      :salesperson_id => salesperson_id,
      :trafficker_id => trafficker_id
    }
  end

  # Create the orders on the server.
  created_orders = order_service.create_orders(orders)

  if created_orders
    created_orders.each do |order|
      puts 'Order with ID %d and name "%s" was created.' %
          [order[:id], order[:name]]
    end
  else
    puts 'No orders were created.'
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
    advertiser_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'.to_i
    salesperson_id = 'INSERT_SALESPERSON_ID_HERE'.to_i
    trafficker_id = 'INSERT_TRAFFICKER_ID_HERE'.to_i
    number_of_orders_to_create = 5
    create_orders(
        ad_manager, advertiser_id, salesperson_id, trafficker_id,
        number_of_orders_to_create
    )

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
