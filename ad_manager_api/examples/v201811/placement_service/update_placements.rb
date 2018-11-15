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
# This example updates a single placement to allow for AdSense targeting.
# To determine which placements exist, run get_all_placements.rb.

require 'ad_manager_api'

def update_placements(ad_manager, placement_id)
  # Get the PlacementService.
  placement_service = ad_manager.service(:PlacementService, API_VERSION)

  # Create a statement to get a single placement by ID.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :placement_id'
    sb.with_bind_variable('placement_id', placement_id)
    sb.limit = 1
  end

  # Get placements by statement.
  response = placement_service.get_placements_by_statement(
      statement.to_statement()
  )
  raise 'No placements found to update.' if response[:results].to_a.empty?
  placement = response[:results].first

  # Change the description of the placement object.
  placement[:description] = 'This placement contains all leaderboards.'

  # Update the placements on the server.
  updated_placements = placement_service.update_placements([placement])

  if updated_placements.to_a.size > 0
    updated_placements.each do |placement|
      puts 'Placement with ID %d and name "%s" was updated.' %
          [placement[:id], placement[:name]]
    end
  else
    puts 'No placements were updated.'
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
    placement_id = 'INSERT_PLACEMENT_ID_HERE'.to_i
    update_placements(ad_manager, placement_id)

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
