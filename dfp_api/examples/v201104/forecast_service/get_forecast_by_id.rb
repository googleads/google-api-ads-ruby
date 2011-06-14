#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example gets a forecast for an existing line item. To determine which
# line items exist, run get_all_line_items.rb.
#
# Tags: ForecastService.getForecastById

require 'rubygems'
require 'dfp_api'

API_VERSION = :v201104

def get_forecast_by_id()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeService.
  forecast_service = dfp.service(:ForecastService, API_VERSION)

  # Set the line item to get a forecast for.
  line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i

  # Get forecast for line item.
  forecast = forecast_service.get_forecast_by_id(line_item_id)

  if forecast
    # Display results.
    matched = forecast[:matched_units]
    available_percent = forecast[:available_units] * 100.0 / matched
    unit_type = forecast[:unit_type].to_s.downcase
    puts "%.2f %s matched." % [matched, unit_type]
    puts "%.2f%% %s available." % [available_percent, unit_type]
    if forecast[:possible_units]
      possible_percent = forecast[:possible_units] * 100.0 / matched
      puts "%.2f%% %s possible." % [possible_percent, unit_type]
    end
  end
end

if __FILE__ == $0
  begin
    get_forecast_by_id()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
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
