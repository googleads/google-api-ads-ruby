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
# This code example updates a creative set by adding a companion creative. To
# determine which creative sets exist, run get_all_creative_sets.rb.

require 'ad_manager_api'

def update_creative_sets(ad_manager, creative_set_id, companion_creative_id)
  # Get the CreativeSetService.
  creative_set_service = ad_manager.service(:CreativeSetService, API_VERSION)

  # Create a statement to only select a single creative set.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :creative_set_id'
    sb.with_bind_variable('creative_set_id', creative_set_id)
  end

  # Get creative sets by statement.
  response = creative_set_service.get_creative_sets_by_statement(
      statement.to_statement()
  )
  raise 'No creative sets found to update.' if response[:results].to_a.empty?
  creative_set = response[:results].first

  # Update the creative set locally.
  creative_set[:companion_creative_ids] << companion_creative_id

  # Update the creative set on the server.
  updated_creative_sets = creative_set_service.update_creative_set(creative_set)

  if updated_creative_sets.to_a.size > 0
    updated_creative_sets.each do |creative_set|
      puts ('Creative set with ID %d and master creative ID: %d was updated ' +
          'with companion creative IDs [%s].') % [creative_set[:id],
          creative_set[:master_creative_id],
          creative_set[:companion_creative_ids].join(', ')]
    end
  else
    puts 'No creative sets were updated.'
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
    creative_set_id = 'INSERT_CREATIVE_SET_ID_HERE'.to_i
    companion_creative_id = 'INSERT_COMPANION_CREATIVE_ID_HERE'.to_i
    update_creative_sets(ad_manager, creative_set_id, companion_creative_id)

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
