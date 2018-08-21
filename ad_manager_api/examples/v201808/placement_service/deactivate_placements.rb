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
# This example deactivates all active placements. To determine which placements
# exist, run get_all_placements.rb.

require 'ad_manager_api'

def deactivate_placements(ad_manager)
  # Get the PlacementService.
  placement_service = ad_manager.service(:PlacementService, API_VERSION)

  # Create statement to select active placements.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'status = :status'
    sb.with_bind_variable('status', 'ACTIVE')
  end

  # Define initial values.
  placement_ids = []

  page = {:total_result_set_size => 0}
  begin
    # Get placements by statement.
    page = placement_service.get_placements_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      page[:results].each_with_index do |placement, index|
        puts ('%d) Placement ID %d, name "%s", and status "%s" will be ' +
            'deactivated.') % [index + statement.offset, placement[:id],
            placement[:name], placement[:status]]
        placement_ids << placement[:id]
      end
    end
  end while statement.offset < page[:total_result_set_size]

  puts "Number of placements to be deactivated: %d" % placement_ids.size

  if !placement_ids.empty?
    # Create a statement for action.
    statement = ad_manager.new_statement_builder do |sb|
      sb.where = 'id IN (%s)' % placement_ids.join(', ')
    end

    # Perform action.
    result = placement_service.perform_placement_action(
        {:xsi_type => 'DeactivatePlacements'},
        statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts "Number of placements deactivated: %d" % result[:num_changes]
    else
      puts 'No placements were deactivated.'
    end
  else
    puts 'No placements found to deactivate.'
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
    deactivate_placements(ad_manager)

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
