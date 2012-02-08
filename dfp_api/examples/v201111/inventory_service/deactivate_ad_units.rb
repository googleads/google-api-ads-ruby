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
# This example deactivates all active ad units. To determine which ad units
# exist, run get_all_ad_units.rb or get_inventory_tree.rb.
#
# Tags: InventoryService.getLineItemsByStatement,
#       InventoryService.performAdUnitAction

require 'dfp_api'

API_VERSION = :v201111
PAGE_SIZE = 500

def deactivate_ad_units()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the InventoryService.
  inventory_service = dfp.service(:InventoryService, API_VERSION)

  # Create statement text to select active ad units.
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
  ad_unit_ids = []

  begin
    # Create a statement to get one page with current offset.
    statement[:query] = statement_text +
        " LIMIT %d OFFSET %d" % [PAGE_SIZE, offset]

    # Get ad units by statement.
    page = inventory_service.get_ad_units_by_statement(statement)

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE

      page[:results].each do |ad_unit|
        puts ("%d) Ad unit with ID: %d, status: %s and name: %s will be " +
              "deactivated.") % [ad_unit_ids.size, ad_unit[:id],
              ad_unit[:status], ad_unit[:name]]
        ad_unit_ids << ad_unit[:id]
      end
    end
  end while offset < page[:total_result_set_size]

  puts "Number of ad units to be deactivated: %d" % ad_unit_ids.size

  if !ad_unit_ids.empty?
    # Modify statement for action. Note, the values are still present.
    statement[:query] = statement_text + " AND id IN (%s)" %
        ad_unit_ids.join(', ')

    # Perform action.
    result = inventory_service.perform_ad_unit_action(
        {:xsi_type => 'DeactivateAdUnits'}, statement)

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of ad units deactivated: %d" % result[:num_changes]
    else
      puts 'No ad units were deactivated.'
    end
  else
    puts 'No ad units found to deactivate.'
  end
end

if __FILE__ == $0
  begin
    deactivate_ad_units()

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
