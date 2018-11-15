#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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

require 'ad_manager_api'

def get_availability_forecast(ad_manager, advertiser_id)
  # Get the ForecastService and the NetworkService.
  forecast_service = ad_manager.service(:ForecastService, API_VERSION)
  network_service = ad_manager.service(:NetworkService, API_VERSION)

  # Set the root ad unit to target the entire network.
  root_ad_unit_id =
      network_service.get_current_network()[:effective_root_ad_unit_id].to_i

  # Create a start time that's 24 hours from now and an end time that's 5 days
  # after the start time.
  start_time = ad_manager.now('America/New_York') + 60 * 60 * 24
  end_time = start_time + 60 * 60 * 24 * 5

  # Create daily time steps to break down forecast on, using ruby DateTime's
  # step method to increment start_time by 24-hour increments, and then
  # mapping the results back to AdManagerDateTime objects.
  time_windows = start_time.to_datetime.step(end_time.to_datetime).map do |d|
    ad_manager.datetime(d, "America/New_York").to_h
  end

  # Create targeting.
  targeting = {
    :inventory_targeting => {
      :targeted_ad_units => [
        {
          :include_descendants => true,
          :ad_unit_id => root_ad_unit_id
        }
      ]
    }
  }

  # Create the creative placeholder.
  creative_placeholder = {
    :size => {:width => 300, :height => 250, :is_aspect_ratio => false}
  }

  # Create prospective line item.
  line_item = {
    :line_item_type => 'SPONSORSHIP',
    :targeting => targeting,
    # Set the size of creatives that can be associated with this line item.
    :creative_placeholders => [creative_placeholder],
    # Set the line item's time to be now until the projected end date time.
    :start_date_time_type => 'IMMEDIATELY',
    :end_date_time => end_time.to_h,
    # Set the line item to use 50% of the impressions.
    :primary_goal => {
      :units => '50',
      :unit_type => 'IMPRESSIONS',
      :goal_type => 'DAILY'
    },
    # Set the cost type to match the unit type.
    :cost_type => 'CPM'
  }

  prospective_line_item = {
    :advertiser_id => advertiser_id,
    :line_item => line_item
  }

  # Set forecasting options.
  forecast_options = {
    :include_contending_line_items => true,
    # The field includeTargetingCriteriaBreakdown can only be set if breakdowns
    # are not mannually specified.
    # :include_targeting_criteria_breakdown => true,
    :breakdown => {
      # Break down forecast by day from start_time to end_time
      :time_windows => time_windows,
      # Break down forecast by any targeting configuration
      :targets => [
        {
          # Optional, the name field is only used to identify this breakdown in
          # the response.
          :name => 'United States',
          :targeting => {
            :inventory_targeting => targeting[:inventory_targeting],
            :geo_targeting => {
              :targeted_locations => [
                {
                  :id => '2840',
                  :display_name => 'US'
                }
              ]
            }
          }
        },
        {
          # Optional, the name field is only used to identify this breakdown in
          # the response.
          :name => 'Geneva',
          :targeting => {
            :inventory_targeting => targeting[:inventory_targeting],
            :geo_targeting => {
              :targeted_locations => [
                {
                  :id => '20133',
                  :display_name => 'Geneva'
                }
              ]
            }
          }
        }
      ]
    }
  }

  # Get forecast for the line item.
  forecast = forecast_service.get_availability_forecast(
      prospective_line_item, forecast_options)

  unless forecast.nil?
    # Display results.
    matched = forecast[:matched_units]
    unit_type = forecast[:unit_type].to_s.downcase
    puts '%.2f %s matched overall.' % [matched, unit_type]
    unless matched == 0
      available_percent = forecast[:available_units] * 100.0 / matched
      puts '%.2f%% of %s available overall.' % [available_percent, unit_type]
    end
    unless forecast[:contending_line_items].nil?
      puts '%d contending line items overall.' %
          forecast[:contending_line_items].size
    end
    unless forecast[:possible_units].nil?
      possible_percent = forecast[:possible_units] * 100.0 / matched
      puts '%.2f%% of %s possible overall.' % [possible_percent, unit_type]
    end
    unless forecast[:breakdowns].nil?
      forecast[:breakdowns].each do |breakdown|
        dates = [breakdown[:start_time], breakdown[:end_time]]
        formatted_dates = dates.map do |date|
          ad_manager.datetime(date).strftime("%Y-%m-%d %H:%M:%S")
        end
        puts 'For breakdown time period %s - %s:' % formatted_dates
        breakdown[:breakdown_entries].each do |entry|
          matched = entry[:forecast][:matched]
          available = entry[:forecast][:available]
          possible = entry[:forecast][:possible]
          name = entry[:name]
          unless name.nil?
            puts '  For targeting breakdown named "%s"' % name
          end
          puts '    %.2f %s matched.' % [matched, unit_type]
          unless matched == 0
            available_percent = available * 100.0 / matched
            puts '%.2f%% of %s available.' % [available_percent, unit_type]
            unless possible.nil?
              possible_percent = possible * 100.0 / matched
              puts '%.2f%% of %s possible.' % [possible_percent, unit_type]
            end
          end
        end
      end
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    # Set the advertiser to assign the prospective line item to.
    # This allows for forecasting while taking into account
    # same advertiser exclusion.
    advertiser_id = 'INSERT_ADVERTISER_ID_HERE'.to_i
    get_availability_forecast(ad_manager, advertiser_id)

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
