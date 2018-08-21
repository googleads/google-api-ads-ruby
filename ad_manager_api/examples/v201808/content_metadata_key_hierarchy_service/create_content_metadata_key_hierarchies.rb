#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This example creates a content metadata key hierarchy.
#
# This feature is only available to Ad Manager video publishers.

require 'securerandom'
require 'ad_manager_api'

def create_content_metadata_key_hierarchies(ad_manager,
    hierarchy_level_one_key_id, hierarchy_level_two_key_id)
  # Get the ContentMetadataKeyHierarchyService.
  cmkh_service = ad_manager.service(
      :ContentMetadataKeyHierarchyService, API_VERSION
  )

  hierarchy_level_1 = {
    :custom_targeting_key_id => hierarchy_level_own_key_id,
    :hierarchy_level => 1
  }

  hierarchy_level_2 = {
    :custom_targeting_key_id => hierarchy_level_two_key_id,
    :hierarchy_level => 2
  }

  hierarchy_levels = [hierarchy_level_1, hierarchy_level_2]

  content_metadata_key_hierarchy = {
    :name => 'Content Metadata Key Hierarchy %s' % SecureRandom.uuid(),
    :hierarchy_levels => hierarchy_levels
  }

  # Create the content metadata key hierarchy on the server.
  content_metadata_key_hierarchies =
      cmkh_service.create_content_metadata_key_hierarchies(
          [content_metadata_key_hierarchy]
      )

  content_metadata_key_hierarchies.each do |content_metadata_key_hierarchy|
    puts ('A content metadata key hierarchy with ID %d, name "%s", and %d ' +
        'levels was created.') % [content_metadata_key_hierarchy[:id],
        content_metadata_key_hierarchy[:name],
        content_metadata_key_hierarchy[:hierarchy_levels].length]
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
    hierarchy_level_one_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i
    hierarchy_level_two_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i
    create_content_metadata_key_hierarchies(
        ad_manager, hierarchy_level_one_key_id, hierarchy_level_two_key_id
    )

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
