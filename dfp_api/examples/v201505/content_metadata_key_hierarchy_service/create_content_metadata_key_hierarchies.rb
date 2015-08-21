#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.nicholaschen@gmail.com (Nicholas Chen)
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
# This feature is only available to DFP video publishers.
#
# Tags: ContentMetadataKeyHierarchyService.createContentMetadataKeyHierarchies

require 'dfp_api'

API_VERSION = :v201505

def create_content_metadata_key_hierarchies()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ContentMetadataKeyHierarchyService.
  cmkh_service = dfp.service(:ContentMetadataKeyHierarchyService, API_VERSION)

  # Set the IDs of the custom targeting keys for the hierarchy.
  hierarchy_level_one_key_id = 'INSERT_LEVEL_ONE_CUSTOM_TARGETING_KEY_ID_HERE'
  hierarchy_level_two_key_id = 'INSERT_LEVEL_TWO_CUSTOM_TARGETING_KEY_ID_HERE'

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
    :name => 'Content Metadata Key Hierarchy #%d' % (Time.new.to_f * 1000),
    :hierarchy_levels => hierarchy_levels
  }

  # Create the content metadata key hierarchy on the server.
  content_metadata_key_hierarchies =
      cmkh_service.create_content_metadata_key_hierarchies(
          [content_metadata_key_hierarchy])

  content_metadata_key_hierarchies.each do |content_metadata_key_hierarchy|
    puts 'A content metadata key hierarchy with ID %d, name "%s", and %d ' +
        'levels was created.' % [
            content_metadata_key_hierarchy[:id],
            content_metadata_key_hierarchy[:name],
            content_metadata_key_hierarchy[:hierarchy_levels].length]
  end
end

if __FILE__ == $0
  begin
    create_content_metadata_key_hierarchies()

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
