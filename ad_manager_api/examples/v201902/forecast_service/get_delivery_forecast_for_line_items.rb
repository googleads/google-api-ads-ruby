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
# This example gets a delivery forecast for multiple line items. To determine
# which line items exist, run get_all_line_items.rb.

require 'ad_manager_api'

def get_delivery_forecast_for_line_items(ad_manager, line_item_id1,
    line_item_id2)
  # Get the ForecastService.
  forecast_service = ad_manager.service(:ForecastService, API_VERSION)

  # Get forecast for the line item.
  forecast = forecast_service.get_delivery_forecast_by_ids(
      [line_item_id1, line_item_id2], nil)

  unless forecast.nil? || forecast[:line_item_delivery_forecasts].nil?
    forecast[:line_item_delivery_forecasts].each do |single_forecast|
      # Display results.
      unit_type = single_forecast[:unit_type]
      puts ('Forecast for line item %d:\n\t%d %s matched\n\t%d %s ' +
          'delivered\n\t%d %s predicted\n') % [single_forecast[:line_item_id],
          single_forecast[:matched_units], unit_type,
          single_forecast[:delivered_units], unit_type,
          single_forecast[:predicted_delivery_units], unit_type]
    end
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
    line_item_id1 = 'INSERT_LINE_ITEM_ID_1_HERE'.to_i
    line_item_id2 = 'INSERT_LINE_ITEM_ID_2_HERE'.to_i
    get_delivery_forecast_for_line_items(
        ad_manager, line_item_id1, line_item_id2
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
