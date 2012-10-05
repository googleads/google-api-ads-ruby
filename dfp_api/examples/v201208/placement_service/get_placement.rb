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
# This example gets a placement by its ID. To determine which placements exist,
# run get_all_placements.rb.
#
# Tags: PlacementService.getPlacement

require 'dfp_api'

API_VERSION = :v201208

def get_placement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the PlacementService.
  placement_service = dfp.service(:PlacementService, API_VERSION)

  # Set the ID of the placement to get.
  placement_id = 'INSERT_PLACEMENT_ID_HERE'.to_i

  # Get the placement.
  placement = placement_service.get_placement(placement_id)

  if placement
    puts "Placement with ID: %d, name: %s and status %s was found." %
        [placement[:id], placement[:name], placement[:status]]
  else
    puts 'No placement found for this ID.'
  end
end

if __FILE__ == $0
  begin
    get_placement()

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
