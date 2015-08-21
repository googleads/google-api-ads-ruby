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
# This example updates a single placement to allow for AdSense targeting.
# To determine which placements exist, run get_all_placements.rb.
#
# Tags: PlacementService.getPlacementsByStatement
# Tags: PlacementService.updatePlacements

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_placements()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the PlacementService.
  placement_service = dfp.service(:PlacementService, API_VERSION)

  placement_id = 'INSERT_PLACEMENT_ID_HERE'.to_i

  # Create a statement to get a single placement by ID.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id ORDER BY id ASC',
      [
         {:key => 'id',
          :value => {:value => placement_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  # Get placements by statement.
  page = placement_service.get_placements_by_statement(statement.toStatement())

  if page[:results]
    placements = page[:results]

    # Update each local placement object by enabling AdSense targeting.
    placements.each do |placement|
      placement[:targeting_description] =
          (placement[:description].nil? || placement[:description].empty?) ?
          'Generic description' : placement[:description]
      placement[:targeting_ad_location] = 'All images on sports pages.'
      placement[:targeting_site_name] = 'http://code.google.com'
      placement[:is_ad_sense_targeting_enabled] = true
    end

    # Update the placements on the server.
    return_placements = placement_service.update_placements(placements)

    if return_placements
      return_placements.each do |placement|
        puts ("Placement ID: %d, name: %s was updated with AdSense targeting " +
              "enabled: %s.") % [placement[:id], placement[:name],
                                 placement[:is_ad_sense_targeting_enabled]]
      end
    else
      raise 'No placements were updated.'
    end
  else
    puts 'No placements found to update.'
  end
end

if __FILE__ == $0
  begin
    update_placements()

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
