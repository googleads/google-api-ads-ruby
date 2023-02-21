#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2020 Google LLC
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
# This example creates a forecast adjustment for New Year's Day traffic.

require 'securerandom'
require 'ad_manager_api'

def create_forecast_adjustments(ad_manager, traffic_forecast_segment_id)
  # Get the adjustment service and the network service.
  adjustment_service = ad_manager.service(:AdjustmentService, API_VERSION)


  # Create a forecast adjustment.
  current_year = ad_manager.today.year
  next_year = current_year + 1
  this_new_years = ad_manager.date(current_year, 1, 1).to_h
  next_new_years = ad_manager.date(next_year, 1, 1).to_h

  adjustment = {
    :name => 'Forecast adjustment - %s' % SecureRandom.uuid(),
    :traffic_forecast_segment_id => traffic_forecast_segment_id,
    :date_range => {
      :start_date => next_new_years,
      :end_date => next_new_years
    },
    :status => 'ACTIVE',
    :volume_type => 'HISTORICAL_BASIS_VOLUME',
    :historical_basis_volume_settings => {
      :use_parent_traffic_forecast_segment_targeting => true,
      :historical_date_range => {
        :start_date => this_new_years,
        :end_date => this_new_years
      },
      :multiplier_milli_percent => 110000
    }
  }

  # Create the forecast adjustment on the server.
  created_adjustments =
      adjustment_service.create_forecast_adjustments([adjustment])

  if created_adjustments.to_a.size > 0
    created_adjustments.each do |created_adjustment|
      puts 'Forecast adjustment with id %d and name "%s" was created' % [
          created_adjustment[:id], created_adjustment[:name]
      ]
    end
  end

end

if __FILE__ == $0
  API_VERSION = :v202302

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    traffic_forecast_segment_id = 'INSERT_TRAFFIC_FORECAST_SEGMENT_ID_HERE'.to_i
    create_forecast_adjustments(ad_manager, traffic_forecast_segment_id)

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
