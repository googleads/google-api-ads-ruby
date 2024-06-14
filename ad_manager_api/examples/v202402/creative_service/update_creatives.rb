#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example updates the destination URL of a single creative searching by ID.
# To determine which image creatives exist, run get_all_creatives.rb.

require 'ad_manager_api'

def update_creatives(ad_manager, creative_id)
  # Get the CreativeService.
  creative_service = ad_manager.service(:CreativeService, API_VERSION)

  # Create a statement to get first 500 image creatives.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :id'
    sb.with_bind_variable('id', creative_id)
    sb.limit = 1
  end

  # Get creatives by statement.
  response = creative_service.get_creatives_by_statement(
      statement.to_statement()
  )
  raise 'No creatives found to update.' if response[:results].to_a.empty?
  creative = response[:results].first

  # Update creative object by changing its destination URL.
  creative[:destination_url] = 'http://news.google.com'

  # Update the creative on the server.
  updated_creatives = creative_service.update_creatives([creative])

  # Display the results.
  if updated_creatives.to_a.size > 0
    updated_creatives.each do |creative|
      puts 'Creative with ID %d, name "%s", and url "%s" was updated.' %
          [creative[:id], creative[:name], creative[:destination_url]]
    end
  else
    puts 'No creatives were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v202402

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    creative_id = 'INSERT_CREATIVE_ID_HERE'.to_i
    update_creatives(ad_manager, creative_id)

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
