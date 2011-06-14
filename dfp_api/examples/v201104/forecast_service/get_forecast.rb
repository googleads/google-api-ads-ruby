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
# This example gets a forecast for a prospective line item. To determine which
# placements exist, run get_all_placements.rb.
#
# Tags: ForecastService.getForecast

require 'rubygems'
require 'dfp_api'

API_VERSION = :v201104

def get_forecast()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeService.
  forecast_service = dfp.service(:ForecastService, API_VERSION)

  # Set the placement that the prospective line item will target.
  targeted_placement_ids = ["INSERT_PLACEMENT_ID_HERE".to_i]

  # Create targeting.
  targeting = {
      :inventory_targeting =>
          {:targeted_placement_ids => targeted_placement_ids}
  }

  # Create prospective line item.
  line_item = {
    :line_item_type => 'SPONSORSHIP',
    :targeting => targeting,
    # Set the size of creatives that can be associated with this line item.
    :creative_sizes =>
        {:width => 300, :height => 250, :is_aspect_ratio => false},
    # Set the line item's time to be now until the projected end date time.
    :start_date_time_type => 'IMMEDIATELY',
    :end_date_time => Time.utc(2012, 01, 01),
    # Set the line item to use 50% of the impressions.
    :unit_type => 'IMPRESSIONS',
    :units_bought => 50,
    # Set the cost type to match the unit type.
    :cost_type => 'CPM'
  }

  # Get forecast for the line item.
  forecast = forecast_service.get_forecast(line_item)

  if forecast
    # Display results.
    matched = forecast[:matched_units]
    available_percent = forecast[:available_units] * 100.0 / matched
    unit_type = forecast[:unit_type].to_s.downcase
    puts "%.2f %s matched." % [matched, unit_type]
    puts "%.2f%% %s available." % [available_percent, unit_type]
    if forecast[:possible_units]
      possible_percent = forecast[:possible_units] * 100.0 / matched
      puts "%.2f%% %s possible." % [possible_percent, unit_type]
    end
  end
end

if __FILE__ == $0
  begin
    get_forecast()

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
