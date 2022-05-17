#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2021, Google LLC
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
# This example pushes a LICA to a linked device for preview. To determine which
# linked devices exist, use the PublisherQueryLanguageService linked_device
# table.

require 'ad_manager_api'

def push_creative_to_devices(
    ad_manager, line_item_id, creative_id, linked_device_id)
  # Get the LineItemCreativeAssociationService.
  lica_service = ad_manager.service(
      :LineItemCreativeAssociationService, API_VERSION
  )

  # Create statement to select a single linked device.
  # Linked devices can be read from the linked_device PQL table.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :linked_device_id'
    sb.with_bind_variable('linked_device_id', linked_device_id)
  end

  # Make call to push creatives to devices.
  creative_push_options = {
    :line_item_id => line_item_id,
    :creative_id => creative_id
  }
  result = lica_service.push_creative_to_devices(
      statement.to_statement(), creative_push_options
  )

  # Display results.
  if !result.nil? && result[:num_changes] > 0
    puts "Pushed creatives to %d devices." % result[:num_changes]
  else
    puts 'No creatives were pushed.'
  end
end

if __FILE__ == $0
  API_VERSION = :v202205

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
    creative_id = 'INSERT_CREATIVE_ID_HERE'.to_i
    linked_device_id = 'INSERT_LINKED_DEVICE_ID_HERE'.to_i
    push_creative_to_devices(
        ad_manager, line_item_id, creative_id, linked_device_id
    )

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
