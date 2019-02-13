#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2019 Google LLC
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
# This example fetches all CmsMetadataValues associated with a particular
# CmsMetadataKey from a publisher's CMS.

require 'ad_manager_api'

def get_cms_metadata_values_for_key(ad_manager, cms_metadata_key_name)
  # Get the CmsMetadataService.
  cms_metadata_service = ad_manager.service(:CmsMetadataService, API_VERSION)

  # Create a statement to select CmsMetadataValues for a particular key.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'cmsKey = :cms_metadata_key_name'
    sb.with_bind_variable('cms_metadata_key_name', cms_metadata_key_name)
  end

  # Fetch the values associated with that key.
  cms_metadata_value_results =
      cms_metadata_service.get_cms_metadata_values_by_statement(
          statement.to_statement()
      )[:results].to_a()

  # Print the results.
  if cms_metadata_value_results.size == 0
    puts 'No metadata values matched the CMS metadata key name.'
  end

  cms_metadata_value_results.each_with_index do |cms_metadata_value, index|
    puts ('%d) CmsMetadataValue with id %d and name "%s", assiciated with the' +
        ' CmsMetadataKey with id %d and name "%s", was found.') % [
            index,
            cms_metadata_value[:cms_metadata_value_id],
            cms_metadata_value[:value_name],
            cms_metadata_value[:key][:id],
            cms_metadata_value[:key][:name]
        ]
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
    cms_metadata_key_name = 'INSERT_CMS_METADATA_KEY_NAME_HERE'

    get_cms_metadata_values_for_key(ad_manager, cms_metadata_key_name)

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
