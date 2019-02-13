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
# This code example updates a creative wrapper to the 'OUTER' wrapping order. To
# determine which creative wrappers exist, run get_all_creative_wrappers.rb.

require 'ad_manager_api'

def update_creative_wrappers(ad_manager, creative_wrapper_id)
  # Get the CreativeWrapperService.
  creative_wrapper_service = ad_manager.service(
      :CreativeWrapperService, API_VERSION
  )

  # Create a statement to only select a single creative wrapper.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :creative_wrapper_id'
    sb.with_bind_variable('creative_wrapper_id', creative_wrapper_id)
    sb.limit = 1
  end

  # Get creative wrappers by statement.
  response = creative_wrapper_service.get_creative_wrappers_by_statement(
      statement.to_statement()
  )
  raise 'No creative wrapper found to update.' if response[:results].to_a.empty?
  creative_wrapper = response[:results].first

  # Update creative wrapper object by changing its ordering.
  creative_wrapper[:ordering] = 'OUTER'

  # Update the creative wrapper on the server.
  updated_creative_wrappers =
      creative_wrapper_service.update_creative_wrappers([creative_wrapper])

  if updated_creative_wrappers.to_a.size > 0
    updated_creative_wrappers.each do |creative_wrapper|
      puts ('Creative wrapper ID %d and label ID %d was updated with ordering' +
          ' "%s"') % [creative_wrapper[:id], creative_wrapper[:label_id],
          creative_wrapper[:ordering]]
    end
  else
    puts 'No creative wrappers found to update.'
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
    creative_wrapper_id = 'INSERT_CREATIVE_WRAPPER_ID_HERE'.to_i
    update_creative_wrappers(ad_manager, creative_wrapper_id)

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
