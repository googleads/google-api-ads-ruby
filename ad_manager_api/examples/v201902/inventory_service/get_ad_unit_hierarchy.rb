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
# This example prints all ad unit names as a tree.

require 'ad_manager_api'

def get_ad_unit_hierarchy(ad_manager)
  # Get the NetworkService and InventoryService.
  network_service = ad_manager.service(:NetworkService, API_VERSION)
  inventory_service = ad_manager.service(:InventoryService, API_VERSION)

  # Set the parent ad unit's ID for all children ad units to be fetched from.
  current_network = network_service.get_current_network()
  root_ad_unit_id = current_network[:effective_root_ad_unit_id].to_i

  # Create a statement to select only the root ad unit by ID.
  root_ad_unit_statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :id'
    sb.with_bind_variable('id', root_ad_unit_id)
    sb.limit = 1
  end

  # Make a request for the root ad unit
  response = inventory_service.get_ad_units_by_statement(
    root_ad_unit_statement.to_statement()
  )
  root_ad_unit = response[:results].first

  # Create a statement to select all ad units.
  statement = ad_manager.new_statement_builder()

  # Get all ad units in order to construct the hierarchy later.
  all_ad_units = []
  page = {:total_result_set_size => 0}
  begin
    page = inventory_service.get_ad_units_by_statement(
      statement.to_statement()
    )
    unless page[:results].nil?
      all_ad_units += page[:results]
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Make call to helper functions for displaying ad unit hierarchy.
  display_ad_unit_hierarchy(root_ad_unit, all_ad_units)
end

def display_ad_unit_hierarchy(root_ad_unit, ad_unit_list)
  parent_id_to_children_map = {}
  ad_unit_list.each do |ad_unit|
    unless ad_unit[:parent_id].nil?
      (parent_id_to_children_map[ad_unit[:parent_id]] ||= []) << ad_unit
    end
  end

  display_hierarchy(root_ad_unit, parent_id_to_children_map)
end

def display_hierarchy(root, parent_id_to_children_map, depth=0)
  indent_string = '%s+--' % (['  '] * depth).join('|')
  puts '%s%s (%s)' % [indent_string, root[:name], root[:id]]
  parent_id_to_children_map.fetch(root[:id], []).each do |child|
    display_hierarchy(child, parent_id_to_children_map, depth+1)
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
    get_ad_unit_hierarchy(ad_manager)

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
