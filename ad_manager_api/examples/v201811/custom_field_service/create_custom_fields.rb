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
# This example creates custom fields. To determine which custom fields exist,
# run get_all_custom_fields.rb.

require 'ad_manager_api'

def create_custom_fields(ad_manager)
  # Get the CustomFieldService.
  custom_field_service = ad_manager.service(:CustomFieldService, API_VERSION)

  # Create local custom field objects.
  custom_fields = [
    {
      :name => 'Customer comments',
      :entity_type => 'LINE_ITEM',
      :data_type => 'STRING',
      :visibility => 'FULL'
    },
    {
      :name => 'Internal approval status',
      :entity_type => 'LINE_ITEM',
      :data_type => 'DROP_DOWN',
      :visibility => 'FULL'
    }
  ]

  # Create the custom fields on the server.
  created_custom_fields =
      custom_field_service.create_custom_fields(custom_fields)

  if created_custom_fields.to_a.size > 0
    created_custom_fields.each do |custom_field|
      puts 'Custom field with ID %d and name "%s" was created.' %
          [custom_field[:id], custom_field[:name]]
    end
  else
    puts 'No custom fields were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    create_custom_fields(ad_manager)

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
