#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This example activates all inactive CMS Metadata Values for a particular CMS
# Metadata Key.

require 'ad_manager_api'

def activate_cms_metadata_values(ad_manager, cms_metadata_key_id)
  # Get the CmsMetadataService.
  cms_metadata_service = ad_manager.service(:CmsMetadataService, API_VERSION)

  # Create a statement to only select inactive CMS Metadata Values for the
  # specified CMS Metadata Key.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'cmsKeyId = :cms_key_id AND status = :status'
    sb.with_bind_variable('cms_key_id', cms_metadata_key_id)
    sb.with_bind_variable('status', 'INACTIVE')
  end

  cms_metadata_value_ids = []

  # Retrieve a small number of CMS Metadata Values at a time, paging
  # through until all CMS Metadata Values have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get CMS Metadata Values by statement.
    page = cms_metadata_service.get_cms_metadata_values_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      page[:results].each do |cms_metadata_value|
        cms_metadata_value_ids << cms_metadata_value[:cms_metadata_value_id]
        puts ('%d) CMS Metadata Value with id %d and name "%s" will be ' +
            'activated.') % [cms_metadata_value_ids.size,
            cms_metadata_value[:cms_metadata_value_id],
            cms_metadata_value[:value_name]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts "Number of CMS Metadata Values to be activated: %d" %
      cms_metadata_value_ids.size

  if !cms_metadata_value_ids.empty?
    # Create statement for action.
    statement = ad_manager.new_statement_builder do |sb|
      sb.where = 'id IN (%s)' % cms_metadata_value_ids.join(', ')
      sb.offset = nil
      sb.limit = nil
    end

    # Perform action.
    result = cms_metadata_service.perform_cms_metadata_value_action(
        {:xsi_type => 'ActivateCmsMetadataValues'}, statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts "Number of CMS Metadata Values activated: %d" % result[:num_changes]
    else
      puts 'No CMS Metadata Values were activated.'
    end
  else
    puts 'No CMS Metadata Values found to activate.'
  end
end

if __FILE__ == $0
  API_VERSION = :v202108

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    cms_metadata_key_id = 'INSERT_CMS_METADATA_KEY_HERE'.to_i
    activate_cms_metadata_values(ad_manager, cms_metadata_key_id)

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
