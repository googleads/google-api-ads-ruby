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
# This example gets a line item by its ID. To determine which line items
# exist, run get_all_line_items.rb.
#
# Tags: LineItemService.getLineItem

require 'dfp_api'

API_VERSION = :v201308

def get_line_item()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Set the ID of the line_item to get.
  line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i

  # Get the line item.
  line_item = line_item_service.get_line_item(line_item_id)

  if line_item
    puts "Line item with ID: %d, name: %s and order id: %d was found." %
        [line_item[:id], line_item[:name], line_item[:order_id]]
  else
    puts 'No line item found for this ID.'
  end
end

if __FILE__ == $0
  begin
    get_line_item()

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
