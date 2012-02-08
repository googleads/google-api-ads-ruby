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
# This example gets an ad unit by its ID. To determine which ad units
# exist, run get_inventory_tree.rb or get_all_ad_units.rb.
#
# Tags: InventoryService.getAdUnit

require 'dfp_api'

API_VERSION = :v201103

def get_ad_unit()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the InventoryService.
  inventory_service = dfp.service(:InventoryService, API_VERSION)

  # Set the ID of the ad unit to get.
  ad_unit_id = 'INSERT_AD_UNIT_ID_HERE'.to_i

  # Get the ad unit.
  ad_unit = inventory_service.get_ad_unit(ad_unit_id)

  if ad_unit
    puts "Ad unit with ID: %d, name: %s and status: %s was found." %
        [ad_unit[:id], ad_unit[:name], ad_unit[:status]]
  end
end

if __FILE__ == $0
  begin
    get_ad_unit()

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
