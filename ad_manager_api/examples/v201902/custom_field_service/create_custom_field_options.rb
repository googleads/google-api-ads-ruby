#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This example creates custom field options for a drop-down custom field. Once
# created, custom field options can be found under the options fields of the
# drop-down custom field and they cannot be deleted. To determine which custom
# fields exist, run get_all_custom_fields.rb.

require 'ad_manager_api'

def create_custom_field_options(ad_manager, custom_field_id)
  # Get the CustomFieldService.
  custom_field_service = ad_manager.service(:CustomFieldService, API_VERSION)

  # Create local custom field options.
  custom_field_options = [
    {
      :display_name => 'Approved',
      :custom_field_id => custom_field_id
    },
    {
      :display_name => 'Unapproved',
      :custom_field_id => custom_field_id
     }
  ]

  # Create the custom field options on the server.
  created_custom_field_options =
      custom_field_service.create_custom_field_options(custom_field_options)

  if created_custom_field_options.to_a.size > 0
    created_custom_field_options.each do |option|
      puts 'Custom field option with ID %d and name "%s" was created.' %
          [option[:id], option[:display_name]]
    end
  else
    puts 'No custom field options were created.'
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    custom_field_id = 'INSERT_DROP_DOWN_CUSTOM_FIELD_ID_HERE'.to_i
    create_custom_field_options(ad_manager, custom_field_id)

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
