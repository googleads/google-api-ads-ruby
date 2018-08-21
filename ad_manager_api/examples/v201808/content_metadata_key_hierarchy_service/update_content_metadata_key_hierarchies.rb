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
# This example updates a single content metadata key hierarchy.
#
# This feature is only available to Ad Manager video publishers.

require 'ad_manager_api'

def update_content_metadata_key_hierarchies(ad_manager,
    content_metadata_key_hierarchy_id, custom_targeting_key_id)
  # Get the ContentMetadataKeyHierarchyService.
  cmkh_service = ad_manager.service(
      :ContentMetadataKeyHierarchyService, API_VERSION
  )

  # Create a statement to only select a single content metadata key hierarchy.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :id'
    sb.with_bind_variable('id', content_metadata_key_hierarchy_id)
    sb.limit = 1
  end

  # Get content metadata key hierarchy to update by statement.
  response = cmkh_service.get_content_metadata_key_hierarchies_by_statement(
      statement.to_statement()
  )
  if response[:results].to_a.empty?
    raise 'No content metadata key hierarchy found to update.'
  end
  content_metadata_key_hierarchy = response[:results].first

  # Update the content metadata key hierarchy by adding a hierarchy level.
  hierarchy_levels = content_metadata_key_hierarchy[:hierarchy_levels]

  hierarchy_level = {
    :custom_targeting_key_id => custom_targeting_key_id,
    :hierarchy_level => hierarchy_levels.length + 1
  }

  content_metadata_key_hierarchy[:hierarchy_levels] =
      hierarchy_levels.concat([hierarchy_level])

  # Update the content metadata key hierarchy on the server.
  content_metadata_key_hierarchies =
      cmkh_service.update_content_metadata_key_hierarchies(
          [content_metadata_key_hierarchy]
      )

  content_metadata_key_hierarchies.each do |content_metadata_key_hierarchy|
    puts 'Content metadata key hierarchy with ID %d, name "%s" was updated.' %
        [content_metadata_key_hierarchy[:id],
        content_metadata_key_hierarchy[:name]]
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
    content_metadata_key_hierarchy_id =
        'INSERT_CONTENT_METADATA_KEY_HIERARCHY_ID_HERE'.to_i
    custom_targeting_key_id = "INSERT_CUSTOM_TARGETING_KEY_ID_HERE".to_i
    update_content_metadata_key_hierarchies(
        ad_manager, content_metadata_key_hierarchy_id, custom_targeting_key_id
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
