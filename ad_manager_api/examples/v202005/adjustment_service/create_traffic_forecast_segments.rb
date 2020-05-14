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
# This example creates a traffic forecast segment for all ad units in the U.S.

require 'securerandom'
require 'ad_manager_api'

def create_traffic_forecast_segments(ad_manager)
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

  #Create targeting for United States traffic.
  geo_targeting = {
    :targeted_locations => [
      {:id => 2840}
    ]
  }

  # Create the traffic forecast segment object.
  segment = {
    :name => 'Forecast segment - %s' % SecureRandom.uuid(),
    :targeting => {
      :inventory_targeting => inventory_targeting,
      :geo_targeting => geo_targeting
    }
  }

  # Create the traffic forecast segment on the server.
  created_segment =
      adjustment_service.create_traffic_forecast_segments([segment])

  if created_segments.to_a.size > 0
    created_segments.each do |created_segment|
      puts ('Traffic forecast segment with id %d and %d forecast adjustments ' +
          'was created.') % [created_segment[:id],
          created_segment[:forecast_adjustment_count]]
    end
  end

end

if __FILE__ == $0
  API_VERSION = :v202005

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    create_traffic_forecast_segments(ad_manager)

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
