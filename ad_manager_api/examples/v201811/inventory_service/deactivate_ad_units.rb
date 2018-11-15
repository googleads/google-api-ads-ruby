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
# This example deactivates all active ad units. To determine which ad units
# exist, run get_all_ad_units.rb or get_inventory_tree.rb.

require 'ad_manager_api'

def deactivate_ad_units(ad_manager)
  # Get the InventoryService.
  inventory_service = ad_manager.service(:InventoryService, API_VERSION)

  # Create statement text to select active ad units.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'status = :status'
    sb.with_bind_variable('status', 'ACTIVE')
  end

  ad_unit_ids = []

  page = {:total_result_set_size => 0}
  begin
    # Get ad units by statement.
    page = inventory_service.get_ad_units_by_statement(statement.to_statement())

    unless page[:results].nil?
      page[:results].each_with_index do |ad_unit, index|
        puts ('%d) Ad unit with ID %d, status "%s", and name "%s" will be ' +
            'deactivated.') % [index + statement.offset, ad_unit[:id],
            ad_unit[:status], ad_unit[:name]]
        ad_unit_ids << ad_unit[:id]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Number of ad units to be deactivated: %d' % ad_unit_ids.size

  if !ad_unit_ids.empty?
    # Modify statement for action. Note, the values are still present.
    statement.configure do |sb|
      sb.where = 'status = :status AND id IN (%s)' % ad_unit_ids.join(', ')
      sb.offset = nil
      sb.limit = nil
    end

    # Perform action.
    result = inventory_service.perform_ad_unit_action(
        {:xsi_type => 'DeactivateAdUnits'}, statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts 'Number of ad units deactivated: %d' % result[:num_changes]
    else
      puts 'No ad units were deactivated.'
    end
  else
    puts 'No ad units found to deactivate.'
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
    deactivate_ad_units(ad_manager)

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
