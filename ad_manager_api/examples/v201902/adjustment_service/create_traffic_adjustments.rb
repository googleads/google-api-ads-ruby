#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2019 Google LLC
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
# This example adds or replaces a forecast adjustment for 1920x1080 video
# traffic in the United States.

require 'ad_manager_api'

def create_traffic_adjustments(ad_manager)
  # Get the adjustment service and the network service.
  adjustment_service = ad_manager.service(:AdjustmentService, API_VERSION)
  network_service = ad_manager.service(:NetworkService, API_VERSION)

  # Get the root ad unit id used to target the whole site.
  root_ad_unit_id =
      network_service.get_current_network()[:effective_root_ad_unit_id].to_i

  # Create inventory targeting.
  inventory_targeting = {
    :targeted_ad_units => [
      {
        :include_descendants => true,
        :ad_unit_id => root_ad_unit_id
      }
    ]
  }

  # Create geo targeting. When using get targeting with the AdjustmentService,
  # only locations of type COUNTRY are supported.
  geo_targeting = {
    :targeted_locations => [
      {:id => 2840}  # USA.
    ]
  }

  # Create ad unit size to define the slice of inventory affected by the
  # traffic adjustment.
  ad_unit_size = {
    :size => {:width => 1920, :height => 1080},
    :environment_type => 'VIDEO_PLAYER'
  }

  # Create a new historical adjustment targeting next year's January with 105%
  # of the traffic of this year's January.
  current_year = ad_manager.today.year
  next_year = current_year + 1
  this_january = {
    :start_date => ad_manager.date(current_year, 1, 1).to_h,
    :end_date => ad_manager.date(current_year, 1, 31).to_h
  }
  next_january = {
    :start_date => ad_manager.date(next_year, 1, 1).to_h,
    :end_date => ad_manager.date(next_year, 1, 31).to_h
  }

  january_segment = {
    :basis_type => 'HISTORICAL',
    :historical_adjustment => {
      :target_date_range => next_january,
      :reference_date_range => this_january,
      :milli_percent_multiplier => 105_000
    }
  }

  # Create a new absolute adjustment of 500,000 ad opportunities for Christmas
  # and 1,000,000 opportunities for Boxing Day of next year.
  christmas_day = ad_manager.date(next_year, 12, 25)
  boxing_day = christmas_day + 1
  holiday_range = {
    :start_date => christmas_day.to_h,
    :end_date => boxing_day.to_h
  }

  holiday_segment = {
    :basis_type => 'ABSOLUTE',
    :adjustment_time_series => {
      :time_series_date_range => holiday_range,
      :time_series_values => [500_000, 1_000_000],
      :value_period_type => 'DAILY'
    }
  }

  # Create a new absolute adjustment of 900,000 ad opportunities for the first
  # week of September of next year.
  first_week_of_september = {
    :start_date => ad_manager.date(next_year, 9, 1).to_h,
    :end_date => ad_manager.date(next_year, 9, 7).to_h
  }

  september_segment = {
    :basis_type => 'ABSOLUTE',
    :adjustment_time_series => {
      :time_series_date_range => first_week_of_september,
      :time_series_values => [900_000],
      :value_period_type => 'CUSTOM'
    }
  }

  # Create traffic forecast adjustment object.
  adjustment_segments = [january_segment, holiday_segment, september_segment]
  adjustment = {
    :filter_criteria => {
      :targeting => {
        :inventory_targeting => inventory_targeting,
        :geo_targeting => geo_targeting
      },
      :ad_unit_sizes => [ad_unit_size]
    },
    :forecast_adjustment_segments => adjustment_segments
  }

  # Create or update the traffic adjustment for the given filter criteria on
  # the server.
  updated_adjustments =
      adjustment_service.update_traffic_adjustments([adjustment])

  if updated_adjustments.to_a.size > 0
    updated_adjustments.each do |updated_adjustment|
      puts ('Traffic forecast adjustment with id %d and %d segments was ' +
          'created or updated.') % [updated_adjustment[:id],
          updated_adjustment[:forecast_adjustment_segments].size]
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
    create_traffic_adjustments(ad_manager)

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
