#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
#
# Tags: CustomFieldService.createCustomFields

require 'dfp_api'

API_VERSION = :v201505

def create_custom_fields()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomFieldService.
  custom_field_service = dfp.service(:CustomFieldService, API_VERSION)

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
  return_custom_fields =
      custom_field_service.create_custom_fields(custom_fields)

  return_custom_fields.each do |custom_field|
    puts "Custom field with ID: %d and name: %s was created." %
        [custom_field[:id], custom_field[:name]]
  end
end

if __FILE__ == $0
  begin
    create_custom_fields()

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
