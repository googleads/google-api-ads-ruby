#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2020, Google LLC
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
# This example gets the forecasted run-of-network traffic data.

require 'ad_manager_api'

def get_traffic_data(ad_manager)
  # Get the ForecastService and the NetworkService.
  forecast_service = ad_manager.service(:ForecastService, API_VERSION)
  network_service = ad_manager.service(:NetworkService, API_VERSION)

  # Set the root ad unit to target the entire network.
  root_ad_unit_id =
      network_service.get_current_network()[:effective_root_ad_unit_id].to_i

  # Create a start date that's 7 days in the past and an end date that's 7 days
  # in the future.
  today = ad_manager.today
  start_date = today - 7
  end_date = today + 7

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

  # Request the traffic forecast data.
  traffic_data = forecast_service.get_traffic_data({
    :targeting => targeting,
    :requested_date_range => {
      :start_date => start_date.to_h, :end_date => end_date.to_h
    }
  })

  # Get historical time series, start date, and end date.
  historical_time_series = traffic_data[:historical_time_series]
  if historical_time_series.nil?
    puts "No historical data to display."
  else
    historical_date_range = historical_time_series[:time_series_date_range]
    historical_start_date = ad_manager.date(historical_date_range[:start_date])
    historical_end_date = ad_manager.date(historical_date_range[:end_date])

    # Convert historical end date to a native ruby date so that it can be passed
    # as an argument to the `step` method.
    historical_end_date = historical_end_date.to_date

    # Display historical data by stepping through each day between start date
    # and end date.
    puts "Historical Data:"
    historical_start_date.step(historical_end_date).each_with_index do |d, i|
      puts "#{d}: #{historical_time_series[:values][i]}"
    end
  end

  # Get forecasted time series, start date, and end date.
  forecasted_time_series = traffic_data[:forecasted_time_series]
  if forecasted_time_series.nil?
    puts "No forecasted data to display."
  else
    forecasted_date_range = forecasted_time_series[:time_series_date_range]
    forecasted_start_date = ad_manager.date(forecasted_date_range[:start_date])
    forecasted_end_date = ad_manager.date(forecasted_date_range[:end_date])

    # Convert forecasted end date to a native ruby date so that it can be passed
    # as an argument to the `step` method.
    forecasted_end_date = forecasted_end_date.to_date

    # Display forecasted data by stepping through each day between start date
    # and end date.
    puts "Forecasted Data:"
    forecasted_start_date.step(forecasted_end_date).each_with_index do |d, i|
      puts "#{d}: #{forecasted_time_series[:values][i]}"
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v202411

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    # Set the advertiser to assign the prospective line item to.
    # This allows for forecasting while taking into account
    # same advertiser exclusion.
    get_traffic_data(ad_manager)

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
