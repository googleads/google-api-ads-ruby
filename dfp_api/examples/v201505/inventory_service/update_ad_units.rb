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
# This example adds a new 1x1 creative placeholder for a specific ad unit. To
# determine which ad units exist, run get_all_ad_units.rb or
# get_inventory_tree.rb.
#
# Tags: InventoryService.getAdUnitsByStatement, InventoryService.updateAdUnits

require 'dfp_api'

API_VERSION = :v201505

def update_ad_units()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the InventoryService.
  inventory_service = dfp.service(:InventoryService, API_VERSION)

  # Specify which ad unit to update.
  ad_unit_id = 'INSERT_AD_UNIT_ID_HERE'.to_i

  # Create a statement to get first 500 ad units.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id',
      [
          {:key => 'id',
           :value => {:value => ad_unit_id, :xsi_type => 'NumberValue'}}
      ],
      1
  }

  # Get ad units by statement.
  page = inventory_service.get_ad_units_by_statement(statement.toStatement())

  if page[:results]
    ad_units = page[:results]

    new_ad_unit_size = {
        :size => {:width => 1, :height => 1, :is_aspect_ration => false},
        :environment_type => 'BROWSER'
    }

    # Update local ad unit by adding a new size of 1x1.
    ad_units.each do |ad_unit|
      ad_unit[:ad_unit_sizes] = ad_unit[:ad_unit_sizes] << new_ad_unit_size
      # Workaround for issue #94.
      ad_unit[:description] = "" if ad_unit[:description].nil?
    end

    # Update the ad units on the server.
    return_ad_units = inventory_service.update_ad_units(ad_units)

    if return_ad_units
      return_ad_units.each do |ad_unit|
        puts ("Ad unit with ID: %d, name: %s and status: %s was updated") %
            [ad_unit[:id], ad_unit[:name], ad_unit[:status]]
      end
    else
      raise 'No ad units were updated.'
    end
  else
    puts 'No ad units found to update.'
  end
end

if __FILE__ == $0
  begin
    update_ad_units()

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
