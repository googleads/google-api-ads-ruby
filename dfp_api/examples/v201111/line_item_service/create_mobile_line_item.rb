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
# This example create a new line item to serve to the mobile platform. To
# determine which line items exist, run get_all_line_items.rb. To determine
# which orders exist, run get_all_orders.rb. To create a mobile ad unit, run
# create_mobile_ad_unit.rb. To determine which placements exist, run
# get_all_placements.rb.
#
# Mobile features needs to be enabled in your account to use mobile targeting.
#
# Tags: LineItemService.createLineItem

require 'rubygems'
require 'dfp_api'

API_VERSION = :v201111

def create_mobile_line_item()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Set the order that all created line items will belong to and the
  # placement containing ad units with a mobile target platform.
  order_id = 'INSERT_ORDER_ID_HERE'.to_i
  targeted_placement_id = 'INSERT_MOBILE_PLACEMENT_ID_HERE'.to_i

  # Create inventory targeting.
  inventory_targeting = {:targeted_placement_ids => [targeted_placement_id]}

  # Create technology targeting.
  technology_targeting = {
      :device_manufacturer_targeting => {
          # Target the Google device manufacturer (40100).
          :device_manufacturers => [{:id => 40100}],
          :is_targeted => true
      },
      :mobile_device_targeting => {
          # Exclude the Nexus One device (604046).
          :excluded_mobile_devices => [{:id => 604046}]
      },
      :mobile_device_submodel_targeting => {
          # Target the iPhone 4 device submodel (640003).
          :targeted_mobile_device_submodels => [{:id => 640003}]
      }
  }

  # Create targeting.
  targeting = {
      :inventory_targeting => inventory_targeting,
      :technology_targeting => technology_targeting
  }

  # Create local line item object.
  line_item = {
      :name => 'Mobile line item',
      :order_id => order_id,
      :targeting => targeting,
      :line_item_type => 'STANDARD',
      :allow_overbook => true,
      # Set the target platform to mobile.
      :target_platform => 'MOBILE',
      # Set the creative rotation type to even.
      :creative_rotation_type => 'EVEN',
      # Set the size of creatives that can be associated with this line item.
      :creative_placeholders => [
          {:size => {:width => 300, :height => 250, :is_aspect_ratio => false}}
      ],
      # Set the length of the line item to run.
      :start_date_time_type => 'IMMEDIATELY',
      :end_date_time => Time.new + 60 * 60 * 24 * 7,
      # Set the cost per day to $2.
      :cost_type => 'CPM',
      :cost_per_unit => {:currency_code => 'USD', :micro_amount => 2000000},
      # Set the number of units bought to 500,000 so that the budget is $1,000.
      :units_bought => 500000,
      :unit_type => 'IMPRESSIONS'
  }

  # Create the line item on the server.
  return_line_item = line_item_service.create_line_item(line_item)

  if return_line_item
    puts(("Line item with ID: %d, belonging to order ID: %d, " +
        "and named: %s was created.") %
        [return_line_item[:id], return_line_item[:order_id],
         return_line_item[:name]])
  else
    raise 'No line items were created.'
  end
end

if __FILE__ == $0
  begin
    create_mobile_line_item()

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
