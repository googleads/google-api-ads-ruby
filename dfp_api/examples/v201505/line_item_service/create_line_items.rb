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
# This example creates new line items. To determine which line items exist, run
# get_all_line_items.rb. To determine which orders exist, run
# get_all_orders.rb. To determine which placements exist, run
# get_all_placements.rb. To determine the IDs for locations, run
# get_all_cities.rb, get_all_countries.rb, get_all_metros.rb and
# get_all_regions.rb.
#
# Tags: LineItemService.createLineItems

require 'dfp_api'

API_VERSION = :v201505
# Number of line items to create.
ITEM_COUNT = 5

def create_line_items()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemService.
  line_item_service = dfp.service(:LineItemService, API_VERSION)

  # Set the order that all created line items will belong to and the placement
  # ID to target.
  order_id = 'INSERT_ORDER_ID_HERE'.to_i
  targeted_placement_ids = Array.new(ITEM_COUNT) do
    'INSERT_PLACEMENT_ID_HERE'.to_i
  end

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
          {:day_of_week => 'SATURDAY',
           :start_time => {:hour => 0, :minute => 'ZERO'},
           :end_time => {:hour => 24, :minute => 'ZERO'}},
          {:day_of_week => 'SUNDAY',
           :start_time => {:hour => 0, :minute => 'ZERO'},
           :end_time => {:hour => 24, :minute => 'ZERO'}}
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
  targeting = {:geo_targeting => geo_targeting,
               :inventory_targeting => inventory_targeting,
               :user_domain_targeting => user_domain_targeting,
               :day_part_targeting => day_part_targeting,
               :technology_targeting => technology_targeting
  }

  # Create an array to store local line item objects.
  line_items = (1..ITEM_COUNT).map do |index|
    line_item = {:name => "Line item #%d-%d" % [Time.new.to_f * 1000, index],
                 :order_id => order_id,
                 :targeting => targeting,
                 :line_item_type => 'STANDARD',
                 :allow_overbook => true}
    # Set the creative rotation type to even.
    line_item[:creative_rotation_type] = 'EVEN'

    # Create the creative placeholder.
    creative_placeholder = {
        :size => {:width => 300, :height => 250, :is_aspect_ratio => false}
    }

    # Set the size of creatives that can be associated with this line item.
    line_item[:creative_placeholders] = [creative_placeholder]

    # Set the length of the line item to run.
    line_item[:start_date_time_type] = 'IMMEDIATELY'
    line_item[:end_date_time] = {:date => {:year => Time.now.year + 1,
                                           :month => 9,
                                           :day => 30},
                                 :hour => 0,
                                 :minute => 0,
                                 :second => 0,
                                 :time_zone_id => 'America/Los_Angeles'}

    # Set the cost per unit to $2.
    line_item[:cost_type] = 'CPM'
    line_item[:cost_per_unit] = {
        :currency_code => 'USD',
        :micro_amount => 2000000
    }

    # Set the number of units bought to 500,000 so that the budget is $1,000.
    line_item[:primary_goal] = {
        :units => '500000',
        :unit_type => 'IMPRESSIONS',
        :goal_type => 'LIFETIME'
    }

    line_item
  end

  # Create the line items on the server.
  return_line_items = line_item_service.create_line_items(line_items)

  if return_line_items
    return_line_items.each do |line_item|
      puts ("Line item with ID: %d, belonging to order ID: %d, " +
          "and named: %s was created.") %
          [line_item[:id], line_item[:order_id], line_item[:name]]
    end
  else
    raise 'No line items were created.'
  end
end

if __FILE__ == $0
  begin
    create_line_items()

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
