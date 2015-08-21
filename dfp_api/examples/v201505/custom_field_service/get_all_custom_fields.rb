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
# This example gets all custom fields. To create custom fields, run
# create_custom_fields.rb.
#
# Tags: CustomFieldService.getCustomFieldsByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_all_custom_fields()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomFieldService.
  custom_field_service = dfp.service(:CustomFieldService, API_VERSION)

  # Create a statement to get one page with current offset.
  statement = DfpApiStatement::FilterStatement.new('ORDER BY id')

  begin
    # Get custom fields by statement.
    page = custom_field_service.get_custom_fields_by_statement(
        statement.toStatement())

    if page[:results]
      # Print details about each custom field in results.
      page[:results].each_with_index do |custom_field, index|
        if custom_field[:custom_field_type].eql?('DropDownCustomField')
          drop_down_custom_field_strings = custom_field.include?(:options) ?
              custom_field[:options].map {|option| option[:display_name]} : []
          puts ("%d) Drop-down custom field with ID %d, name '%s', and " +
              "options [%s] was found.") %
              [index + statement.offset, custom_field[:id], custom_field[:name],
               drop_down_custom_field_strings.join(', ')]
        else
          puts "%d) Custom field ID: %d and name: '%s' was found" %
              [index + statement.offset, custom_field[:id], custom_field[:name]]
        end
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Total number of custom fields: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_all_custom_fields()

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
