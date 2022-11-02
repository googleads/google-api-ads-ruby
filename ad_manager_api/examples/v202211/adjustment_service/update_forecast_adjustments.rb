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
# This example updates a forecast adjustment's name.

require 'ad_manager_api'

def update_forecast_adjustments(ad_manager, adjustment_id)
  # Get the adjustment service.
  adjustment_service = ad_manager.service(:AdjustmentService, API_VERSION)

  # Create a statment to select a single forecast adjustment by id.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :id'
    sb.with_bind_variable('id', adjustment_id)
  end

  # Get the forecast adjustment.
  response = adjustment_service.get_forecast_adjustments_by_statement(
    statement.to_statement()
  )
  if response[:results].to_a.size < 1
    raise 'No forecast adjustments found to update.'
  end
  adjustment = response[:results].first

  # Update the forecast adjustment's name.
  adjustment[:name] << ' (updated)'

  # Update the forecast adjustment on the server.
  updated_adjustments =
      adjustment_service.update_forecast_adjustments([adjustment])

  if updated_adjustments.to_a.size > 0
    updated_adjustments.each do |updated_adjustment|
      puts ('Forecast adjustment with id %d was updated with the new name ' +
          '"%s".') % [updated_adjustment[:id], updated_adjustment[:name]]
    end
  end

end

if __FILE__ == $0
  API_VERSION = :v202211

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    adjustment_id = 'INSERT_ADJUSTMENT_ID_HERE'.to_i
    update_forecast_adjustments(ad_manager, adjustment_id)

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
