#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2019 Google LLC
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
# This example gets all targeting presets.

require 'ad_manager_api'

def get_all_targeting_presets(ad_manager)
  targeting_preset_service = ad_manager.service(
      :TargetingPresetService, API_VERSION
  )

  # Create a statement to select targeting presets.
  statement = ad_manager.new_statement_builder()

  # Retrieve a small number of targeting presets at a time, paging
  # through until all targeting presets have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    page = targeting_preset_service.get_targeting_presets_by_statement(
        statement.to_statement()
    )

    # Print out some information for each targeting preset.
    unless page[:results].nil?
      page[:results].each_with_index do |targeting_preset, index|
        puts '%d) Targeting preset with id %d and name "%s" was found.' % [
            index + statement.offset, targeting_preset[:id],
            targeting_preset[:name]
        ]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of targeting presets: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v202311

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_all_targeting_presets(ad_manager)

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
