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
# This example updates a single content metadata key hierarchy.
#
# This feature is only available to DFP video publishers.
#
# Tags: ContentMetadataKeyHierarchyService.getContentMetadataKeyHierarchiesByStatement
# Tags: ContentMetadataKeyHierarchyService.updateContentMetadataKeyHierarchies

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_content_metadata_key_hierarchies()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ContentMetadataKeyHierarchyService.
  cmkh_service = dfp.service(:ContentMetadataKeyHierarchyService, API_VERSION)

  # Set the ID of the content metadata key hierarchy.
  content_metadata_key_hierarchy_id =
      'INSERT_CONTENT_METADATA_KEY_HIERARCHY_ID_HERE'

  # Set the ID of the custom targeting key to be added as a hierarchy level.
  custom_targeting_key_id = "INSERT_CUSTOM_TARGETING_KEY_ID_HERE"

  # Create a statement to only select a single content metadata key hierarchy.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id ORDER BY id ASC',
      [
          {:key => 'id',
           :value => {:value => content_metadata_key_hierarchy_id,
                      :xsi_type => 'NumberValue'}},
      ],
      1
  }

  # Get content metadata key hierarchies by statement.
  page = cmkh_service.get_content_metadata_key_hierarchies_by_statement(
      statement.toStatement())

  if page[:results]
    content_metadata_key_hierarchy = page[:results].first

    # Update the content metadata key hierarchy by adding a hierarchy level.
    hierarchy_levels = content_metadata_key_hierarchy[:hierarchy_levels]

    hierarchy_level = {
      :custom_targeting_key_id => custom_targeting_key_id,
      :hierarchy_level => hierarchy_levels.length + 1
    }

    content_metadata_key_hierarchy[:hierarchy_levels] =
        hierarchy_levels.concat([hierarchy_level])

    # Update content metadata key hierarchy.
    content_metadata_key_hierarchies =
        cmkh_service.update_content_metadata_key_hierarchies(
            [content_metadata_key_hierarchy])

    content_metadata_key_hierarchies.each do |content_metadata_key_hierarchy|
      puts 'Content metadata key hierarchy with ID ' +
           '%d, name "%s" was updated.' % [
               content_metadata_key_hierarchy[:id],
               content_metadata_key_hierarchy[:name]]
    end
  else
    puts 'No content metadata key hierarchy found to update.'
  end
end

if __FILE__ == $0
  begin
    update_content_metadata_key_hierarchies()

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
