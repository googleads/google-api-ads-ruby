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
# This example deactivates all active placements. To determine which placements
# exist, run get_all_placements.rb.
#
# Tags: PlacementService.getPlacementsByStatement,
#       PlacementService.performPlacementAction

require 'rubygems'
require 'dfp_api'

API_VERSION = :v201111
PAGE_SIZE = 500

def deactivate_placements()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the PlacementService.
  placement_service = dfp.service(:PlacementService, API_VERSION)

  # Create statement text and statement to select active placements.
  statement_text = 'WHERE status = :status'
  statement = {
      :values => [
          {:key => 'status',
           :value => {:value => 'ACTIVE', :xsi_type => 'TextValue'}}
      ]
  }

  # Define initial values.
  offset = 0
  page = {}
  placement_ids = []

  begin
    # Modify the statement to get one page with current offset.
    statement[:query] = statement_text +
        " LIMIT %d OFFSET %d" % [PAGE_SIZE, offset]

    # Get placements by statement.
    page = placement_service.get_placements_by_statement(statement)

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE

      page[:results].each do |placement|
        puts ("%d) Placement ID: %d, name: %s and status: %s will be " +
            "deactivated.") % [placement_ids.size, placement[:id],
            placement[:name], placement[:status]]
        placement_ids << placement[:id]
      end
    end
  end while offset < page[:total_result_set_size]

  puts "Number of placements to be deactivated: %d" % placement_ids.size

  if !placement_ids.empty?
    # Create a statement for action.
    statement = {:query => "WHERE id IN (%s)" % placement_ids.join(', ')}

    # Perform action.
    result = placement_service.perform_placement_action(
        {:xsi_type => 'DeactivatePlacements'}, statement)

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of placements deactivated: %d" % result[:num_changes]
    else
      puts 'No placements were deactivated.'
    end
  else
    puts 'No placements found to deactivate.'
  end
end

if __FILE__ == $0
  begin
    deactivate_placements()

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
