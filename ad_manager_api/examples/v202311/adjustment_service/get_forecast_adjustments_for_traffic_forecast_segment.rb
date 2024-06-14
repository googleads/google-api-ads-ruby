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
# This example gets all traffic adjustments for a traffic forecast segment.

require 'ad_manager_api'

def get_forecast_adjustments_for_traffic_forecast_segment(ad_manager,
    traffic_forecast_segment_id)
  # Get the adjustment service.
  adjustment_service = ad_manager.service(:AdjustmentService, API_VERSION)

  # Create a statement to get the forecast adjustments for a traffic forecast
  # segment. By not specifying a pagination limit, the default of 500 will be
  # used.
  statement = ad_manager.new_statement_builder() do |sb|
    sb.where = 'trafficForecastSegmentId = :segment_id'
    sb.with_bind_variable('segment_id', traffic_forecast_segment_id)
  end

  # Retrieve a single page of forecast adjustments at a time, paging
  # through until all forecast adjustments have been retrieved.
  page = {}
  begin
    page = adjustment_service.get_forecast_adjustments_by_statement(
      statement.to_statement()
    )

    # Print out some information for each traffic adjustment.
    unless page[:results].nil?
      page[:results].each_with_index do |adjustment, index|
        puts ('Traffic forecast adjustment with id %d and name "%s" belonging' +
            ' to forecast segment %d was found.') % [adjustment[:id],
            adjustment[:name], adjustment[:traffic_forecast_segment_id]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of forecast adjustments: %d' %
      page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v202311

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    traffic_forecast_segment_id = 'INSERT_TRAFFIC_FORECAST_SEGMENT_ID_HERE'.to_i
    get_forecast_adjustments_for_traffic_forecast_segment(
      ad_manager, traffic_forecast_segment_id
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
