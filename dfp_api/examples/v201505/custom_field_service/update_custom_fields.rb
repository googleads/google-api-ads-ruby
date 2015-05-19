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
# This example updates custom field descriptions. To determine which custom
# fields exist, run get_all_custom_fields.rb.
#
# Tags: CustomFieldService.updateCustomFields

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_custom_fields()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomFieldService.
  custom_field_service = dfp.service(:CustomFieldService, API_VERSION)

  # Set the ID of the custom field to update.
  custom_field_id = 'INSERT_CUSTOM_FIELD_ID_HERE'.to_i

  # Create a statement to only select a single custom field.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id',
      [
          {:key => 'id',
           :value => {:value => custom_field_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  # Get custom fields by statement.
  page = custom_field_service.get_custom_fields_by_statement(
      statement.toStatement())

  if page[:results]
    custom_fields = page[:results]

    custom_fields.each do |custom_field|
      # Update local custom field object.
      custom_field[:description] = '' if custom_field[:description].nil?
      custom_field[:description] +=' Updated.'

      # Update the custom field on the server.
      return_custom_fields =
          custom_field_service.update_custom_fields([custom_field])

      return_custom_fields.each do |custom_field|
        puts "Custom field ID: " +
            "%d, name: '%s' and description '%s' was updated." % [
                custom_field[:id], custom_field[:name],
                custom_field[:description]]
      end
    else
      puts 'No custom fields were found to update.'
    end
  end
end

if __FILE__ == $0
  begin
    update_custom_fields()

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
