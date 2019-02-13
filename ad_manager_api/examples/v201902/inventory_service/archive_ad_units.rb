#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example archives a parent ad unit and all its children ad units. To
# determine which ad units exist, run get_all_ad_units.rb or
# get_ad_unit_hierarchy.rb.

require 'ad_manager_api'

def archive_ad_units(ad_manager, parent_ad_unit_id)
  # Get the InventoryService.
  inventory_service = ad_manager.service(:InventoryService, API_VERSION)

  # Create statement text to select ad units.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'parentId = :parent_id OR id = :parent_id'
    sb.with_bind_variable('parent_id', parent_ad_unit_id)
  end

  archived_ad_unit_count = 0

  # Retrieve a small number of ad units at a time, paging through until all ad
  # units have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get ad units by statement.
    page = inventory_service.get_ad_units_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      # Display some information about each ad unit.
      page[:results].each do |ad_unit|
        puts 'Ad unit with ID %d and name "%s" will be archived.' %
            [ad_unit[:id], ad_unit[:name]]
      end

      # Perform action.
      result = inventory_service.perform_ad_unit_action(
          {:xsi_type => 'ArchiveAdUnits'}, statement.to_statement()
      )
      unless result.nil? or result[:num_changes].nil?
        archived_ad_unit_count += result[:num_changes]
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Display number of changes.
  if archived_ad_unit_count > 0
    puts 'Number of ad units archived: %d' % archived_ad_unit_count
  else
    puts 'No ad units were archived.'
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
    parent_ad_unit_id = 'INSERT_AD_UNIT_ID_HERE'.to_i
    archive_ad_units(ad_manager, parent_ad_unit_id)

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
