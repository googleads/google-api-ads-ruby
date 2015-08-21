#!/usr/bin/env ruby
# Encoding: utf-8
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
# This code example gets all ad unit sizes.
#
# Tags: InventoryService.getAdUnitSizesByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_all_ad_unit_sizes()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the InventoryService.
  inventory_service = dfp.service(:InventoryService, API_VERSION)

  # Create statement select all ad unit sizes.
  statement = DfpApiStatement::FilterStatement.new('ORDER BY id ASC')

  # Get ad unit sizes by statement.
  ad_unit_sizes = inventory_service.get_ad_unit_sizes_by_statement(
      statement.toStatement())

  if ad_unit_sizes
    # Print details about each ad unit in results.
    ad_unit_sizes.each_with_index do |ad_unit_size, index|
      puts "%d) Web ad unit size of dimensions %s was found." %
          [index, ad_unit_size[:full_display_string]]
    end
  else
    puts 'No ad unit sizes found.'
  end
end

if __FILE__ == $0
  begin
    get_all_ad_unit_sizes()

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
