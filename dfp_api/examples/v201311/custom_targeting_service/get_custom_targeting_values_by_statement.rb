#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example gets custom targeting values for the given predefined custom
# targeting key. The statement retrieves up to the maximum page size limit of
# 500. To create custom targeting values, run
# create_custom_targeting_keys_and_values.rb. To determine which custom
# targeting keys exist, run get_all_custom_targeting_keys_and_values.rb.
#
# Tags: CustomTargetingService.getCustomTargetingValuesByStatement

require 'dfp_api'

API_VERSION = :v201311

def get_custom_targeting_values_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomTargetingService.
  custom_targeting_service = dfp.service(:CustomTargetingService, API_VERSION)

  # Set the ID of the custom targeting key to get custom targeting values for.
  custom_targeting_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i

  # Create a statement to only select custom targeting values for a given key.
  statement = {
      :query => 'WHERE customTargetingKeyId = :key_id LIMIT 500',
      :values => [
          {:key => 'key_id',
           :value => {:value => custom_targeting_key_id,
                      :xsi_type => 'NumberValue'}
          }
      ]
  }

  # Get custom targeting values by statement.
  page = custom_targeting_service.get_custom_targeting_values_by_statement(
      statement)

  if page[:results]
    # Print details about each value in results.
    page[:results].each_with_index do |custom_targeting_value, index|
      puts ("%d) Custom targeting value with ID [%d], name: %s," +
          " displayName: %s") % [index,
                                 custom_targeting_value[:id],
                                 custom_targeting_value[:name],
                                 custom_targeting_value[:display_name]]
    end
  end

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Number of results found: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_custom_targeting_values_by_statement()

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
