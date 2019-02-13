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
# This example creates new placements for various ad unit sizes. To determine
# which placements exist, run get_all_placements.rb.

require 'securerandom'
require 'ad_manager_api'

def create_placements(ad_manager)
  # Get the InventoryService and the PlacementService.
  inventory_service = ad_manager.service(:InventoryService, API_VERSION)
  placement_service = ad_manager.service(:PlacementService, API_VERSION)

  # Create local placement object to store skyscraper ad units.
  skyscraper_ad_unit_placement = {
    :name => 'Skyscraper AdUnit Placement - %s' % SecureRandom.uuid(),
    :description => 'Contains ad units for creatives of size 120x600',
    :targeted_ad_unit_ids => []
  }

  # Create local placement object to store medium square ad units.
  medium_square_ad_unit_placement = {
    :name => 'Medium Square AdUnit Placement - %s' % SecureRandom.uuid(),
    :description => 'Contains ad units for creatives of size 300x250',
    :targeted_ad_unit_ids => []
  }

  # Create local placement object to store banner ad units.
  banner_ad_unit_placement = {
    :name => 'Banner AdUnit Placement - %s' % SecureRandom.uuid(),
    :description => 'Contains ad units for creatives of size 468x60',
    :targeted_ad_unit_ids => []
  }

  # Get the first 500 ad units.
  statement = ad_manager.new_statement_builder do |sb|
    sb.order_by = 'id'
  end
  page = inventory_service.get_ad_units_by_statement(statement.to_statement())

  # Separate the ad units by size.
  if !page.nil? && page[:results]
    page[:results].each do |ad_unit|
      if !ad_unit[:parent_id].nil? && !ad_unit[:ad_unit_sizes].nil?
        ad_unit[:ad_unit_sizes].each do |ad_unit_size|
          size = ad_unit_size[:size]
          receiver = case size[:width]
            when 120
              skyscraper_ad_unit_placement if size[:height] == 600
            when 300
              medium_square_ad_unit_placement if size[:height] == 250
            when 468
              banner_ad_unit_placement if size[:height] == 60
            else nil
          end
          receiver[:targeted_ad_unit_ids] |= [ad_unit[:id]] if receiver
        end
      end
    end
  end

  # Only create placements with one or more ad units.
  non_empty_placements = [
      medium_square_ad_unit_placement,
      skyscraper_ad_unit_placement,
      banner_ad_unit_placement
  ].reject {|plc| plc[:targeted_ad_unit_ids].empty?}

  # Create the placements on the server.
  created_placements = placement_service.create_placements(non_empty_placements)

  # Display results.
  if created_placements.to_a.size > 0
    created_placements.each do |placement|
      puts 'Placement with ID %d and name "%s" created with ad units [%s].' %
          [placement[:id], placement[:name],
           placement[:targeted_ad_unit_ids].join(', ')]
    end
  else
    puts 'No placements created.'
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
    create_placements(ad_manager)

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
