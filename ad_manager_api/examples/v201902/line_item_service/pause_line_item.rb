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
# This example pauses a line item. Line items must be paused before they can be
# updated. To determine which line items exist, run get_all_line_items.rb.

require 'ad_manager_api'

def pause_line_item(ad_manager, line_item_id)
  # Get the LineItemService.
  line_item_service = ad_manager.service(:LineItemService, API_VERSION)

  # Create a statement to select the line items.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :line_item_id'
    sb.with_bind_variable('line_item_id', line_item_id)
  end

  # Retrieve a small number of line items at a time, paging through until all
  # line items have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get line items by statement.
    page = line_item_service.get_line_items_by_statement(
        statement.to_statement()
    )

    # Display some information about each line item.
    unless page[:results].nil?
      page[:results].each do |line_item|
        puts ("Line item with ID: %d, order ID: %d and name: %s will " +
            "be paused.") % [line_item[:id], line_item[:order_id],
            line_item[:name]]
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts "Number of line items to be paused: %d" % page[:total_result_set_size]

  # Perform action.
  result = line_item_service.perform_line_item_action(
      {:xsi_type => 'PauseLineItems'}, statement.to_statement()
  )

  # Display results.
  if !result.nil? && result[:num_changes].to_i > 0
    puts "Number of line items paused: %d" % result[:num_changes]
  else
    puts 'No line items were paused.'
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
    line_item_id = 'INSERT_line_item_id_here'.to_i
    pause_line_item(ad_manager, line_item_id)

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
