#!/usr/bin/env ruby
# Encoding: utf-8
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

require 'ad_manager_api'

def update_ad_units(ad_manager, ad_unit_id)
  # Get the InventoryService.
  inventory_service = ad_manager.service(:InventoryService, API_VERSION)

  # Create a statement to get first 500 ad units.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :ad_unit_id'
    sb.with_bind_variable('ad_unit_id', ad_unit_id)
    sb.limit = 1
  end

  # Get ad units by statement.
  response = inventory_service.get_ad_units_by_statement(
      statement.to_statement()
  )
  raise 'No ad unit found to update.' if response[:results].to_a.empty?
  ad_unit = response[:results].first

  new_ad_unit_size = {
    :size => {:width => 1, :height => 1, :is_aspect_ration => false},
    :environment_type => 'BROWSER'
  }

  ad_unit[:ad_unit_sizes] << new_ad_unit_size

  # Update the ad units on the server.
  updated_ad_units = inventory_service.update_ad_units([ad_unit])

  if updated_ad_units.to_a.size > 0
    updated_ad_units.each do |ad_unit|
      puts 'Ad unit with ID %d, name "%s", and status "%s" was updated' %
          [ad_unit[:id], ad_unit[:name], ad_unit[:status]]
    end
  else
    puts 'No ad units were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    ad_unit_id = 'INSERT_AD_UNIT_ID_HERE'.to_i
    update_ad_units(ad_manager, ad_unit_id)

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
