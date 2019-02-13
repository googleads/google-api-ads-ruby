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
# This example adds a historical adjustment of 110% for New Years Day traffic.

require 'ad_manager_api'

def update_traffic_adjustments(ad_manager, adjustment_id)
  # Get the adjustment service.
  adjustment_service = ad_manager.service(:AdjustmentService, API_VERSION)

  # Create a statment to select a single traffic forecast adjustment by id.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :id'
    sb.with_bind_variable('id', adjustment_id)
  end

  # Get the forecast traffic adjustment.
  response = adjustment_service.get_traffic_adjustments_by_statement(
    statement.to_statement()
  )
  if response[:results].to_a.size < 1
    raise 'No traffic forecast adjustments found to update.'
  end
  adjustment = response[:results].first

  # Create a new historical adjustment segment for New Year's Day.
  this_new_years = ad_manager.date(ad_manager.today.year, 1, 1)
  next_new_years = this_new_years.next_year

  new_years_segment = {
    :basis_type => 'HISTORICAL',
    :historical_adjustment => {
      :target_date_range => {
        :start_date => next_new_years.to_h,
        :end_date => next_new_years.to_h
      },
      :reference_date_range => {
        :start_date => this_new_years.to_h,
        :end_date => this_new_years.to_h
      },
      :milli_percent_multiplier => 110_000
    }
  }

  # Add new historical segment to the adjustment.
  adjustment[:forecast_adjustment_segments] << new_years_segment

  # Update the traffic adjustment on the server.
  updated_adjustments =
      adjustment_service.update_traffic_adjustments([adjustment])

  if updated_adjustments.to_a.size > 0
    updated_adjustments.each do |updated_adjustment|
      puts ('Traffic forecast adjustment with id %d and %d segments was ' +
          'updated.') % [updated_adjustment[:id],
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
    adjustment_id = 'INSERT_ADJUSTMENT_ID_HERE'.to_i

    update_traffic_adjustments(ad_manager, adjustment_id)

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
