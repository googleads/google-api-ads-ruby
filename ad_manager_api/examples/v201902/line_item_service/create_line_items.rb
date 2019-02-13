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
# This example creates new line items. To determine which line items exist, run
# get_all_line_items.rb. To determine which orders exist, run
# get_all_orders.rb. To determine which placements exist, run
# get_all_placements.rb. To determine the IDs for locations, run
# get_all_cities.rb, get_all_countries.rb, get_all_metros.rb and
# get_all_regions.rb.

require 'securerandom'
require 'ad_manager_api'

def create_line_items(ad_manager, order_id, targeted_placement_ids,
    number_of_line_items_to_create)
  # Get the LineItemService.
  line_item_service = ad_manager.service(:LineItemService, API_VERSION)

  # Create inventory targeting.
  inventory_targeting = {:targeted_placement_ids => targeted_placement_ids}

  # Create geographical targeting.
  geo_targeting = {
    # Include targets.
    :targeted_locations => [
      {:id => 2840},    # USA.
      {:id => 20123},   # Quebec, Canada.
      {:id => 9000093}  # Postal code B3P (Canada).
    ],
    # Exclude targets.
    :excluded_locations => [
      {:id => 1016367}, # Chicago.
      {:id => 200501}   # New York.
    ]
  }

  # Create user domain targeting. Exclude domains that are not under the
  # network's control.
  user_domain_targeting = {:domains => ['usa.gov'], :targeted => false}

  # Create day-part targeting.
  day_part_targeting = {
    # Target only the weekend in the browser's timezone.
    :time_zone => 'BROWSER',
    :day_parts => [
      {
        :day_of_week => 'SATURDAY',
        :start_time => {:hour => 0, :minute => 'ZERO'},
        :end_time => {:hour => 24, :minute => 'ZERO'}
      },
      {
        :day_of_week => 'SUNDAY',
        :start_time => {:hour => 0, :minute => 'ZERO'},
        :end_time => {:hour => 24, :minute => 'ZERO'}
      }
    ]
  }

  # Create technology targeting.
  technology_targeting = {
    # Create browser targeting.
    :browser_targeting => {
      :is_targeted => true,
      # Target just the Chrome browser.
      :browsers => [{:id => 500072}]
    }
  }

  # Create targeting.
  targeting = {
    :geo_targeting => geo_targeting,
    :inventory_targeting => inventory_targeting,
    :user_domain_targeting => user_domain_targeting,
    :day_part_targeting => day_part_targeting,
    :technology_targeting => technology_targeting
  }

  # Create an array to store local line item objects.
  line_items = (1..number_of_line_items_to_create).map do |index|
    {
      :name => "Line item #%d - %s" % [index, SecureRandom.uuid()],
      :order_id => order_id,
      :targeting => targeting,
      :line_item_type => 'STANDARD',
      :allow_overbook => true,
      :creative_rotation_type => 'EVEN',
      # Set the size of creatives that can be associated with this line item.
      :creative_placeholders => [{
        :size => {:width => 300, :height => 250, :is_aspect_ratio => false}
      }],
      # Set the length of the line item to run.
      :start_date_time_type => 'IMMEDIATELY',
      :end_date_time => ad_manager.datetime(
          Date.today.year + 1, 9, 30, 0, 0, 0, 'America/New_York'
      ).to_h,
      # Set the cost per unit to $2.
      :cost_type => 'CPM',
      :cost_per_unit => {
        :currency_code => 'USD',
        :micro_amount => 2_000_000
      },
      # Set the number of units bought to 500,000 so that the budget is $1,000.
      :primary_goal => {
        :units => 500_000,
        :unit_type => 'IMPRESSIONS',
        :goal_type => 'LIFETIME'
      }
    }
  end

  # Create the line items on the server.
  created_line_items = line_item_service.create_line_items(line_items)

  if created_line_items.to_a.size > 0
    created_line_items.each do |line_item|
      puts ('Line item with ID %d, belonging to order ID %d, and named "%s" ' +
          'was created.') % [line_item[:id], line_item[:order_id],
          line_item[:name]]
    end
  else
    puts 'No line items were created.'
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
    targeted_placement_ids = [
      'INSERT_PLACEMENT_ID_HERE'.to_i,
      'INSERT_PLACEMENT_ID_HERE'.to_i
    ]
    number_of_line_items_to_create = 5
    create_line_items(
        ad_manager, order_id, targeted_placement_ids,
        number_of_line_items_to_create
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
