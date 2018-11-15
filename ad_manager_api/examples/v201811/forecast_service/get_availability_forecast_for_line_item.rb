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

def get_availability_forecast_for_line_item(ad_manager, line_item_id)
  # Get the ForecastService.
  forecast_service = ad_manager.service(:ForecastService, API_VERSION)

  # Set forecasting options.
  forecast_options = {
    :include_contending_line_items => True,
    :include_targeting_criteria_breakdown => True,
  }

  # Get forecast for the line item.
  forecast = forecast_service.get_availability_forecast_by_id(
      line_item_id, forecast_options
  )

  unless forecast.nil?
    # Display results.
    matched = forecast[:matched_units]
    available_percent = forecast[:available_units] * 100.0 / matched
    unit_type = forecast[:unit_type].to_s.downcase
    puts '%.2f %s matched.' % [matched, unit_type]
    puts '%.2f%% of %s available.' % [available_percent, unit_type]
    puts '%d contending line items.' % forecast[:contending_line_items].size
    unless forecast[:possible_units].nil?
      possible_percent = forecast[:possible_units] * 100.0 / matched
      puts '%.2f%% of %s possible.' % [possible_percent, unit_type]
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
    line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
    get_availability_forecast_for_line_item(ad_manager, line_item_id)

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
