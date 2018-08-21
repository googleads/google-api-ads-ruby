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
# This example creates new ad units under a the effective root ad unit. To
# determine which ad units exist, run get_inventory_tree.rb or
# get_all_ad_units.rb.

require 'securerandom'
require 'ad_manager_api'

def create_ad_units(ad_manager, number_of_ad_units_to_create)
  # Get the InventoryService and the NetworkService.
  inventory_service = ad_manager.service(:InventoryService, API_VERSION)
  network_service = ad_manager.service(:NetworkService, API_VERSION)

  # Get the effective root ad unit ID of the network.
  effective_root_ad_unit_id =
      network_service.get_current_network[:effective_root_ad_unit_id]

  puts 'Using effective root ad unit: %d' % effective_root_ad_unit_id

  # Create the creative placeholder.
  creative_placeholder = {
      :size => {:width => 300, :height => 250, :is_aspect_ratio => false},
      :environment_type => 'BROWSER'
  }

  # Create an array to store local ad unit objects.
  ad_units = (1..number_of_ad_units_to_create).map do |index|
    {
      :name => 'Ad_Unit #%d - %s' % [index, SecureRandom.uuid()],
      :parent_id => effective_root_ad_unit_id,
      :description => 'Ad unit description.',
      :target_window => 'BLANK',
      # Set the size of possible creatives that can match this ad unit.
      :ad_unit_sizes => [creative_placeholder]
    }
  end

  # Create the ad units on the server.
  created_ad_units = inventory_service.create_ad_units(ad_units)

  if created_ad_units.to_a.size > 0
    created_ad_units.each do |ad_unit|
      puts 'Ad unit with ID %d, name "%s", and status "%s" was created.' %
          [ad_unit[:id], ad_unit[:name], ad_unit[:status]]
    end
  else
    puts 'No ad units were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    number_of_ad_units_to_create = 5
    create_ad_units(ad_manager, number_of_ad_units_to_create)

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
