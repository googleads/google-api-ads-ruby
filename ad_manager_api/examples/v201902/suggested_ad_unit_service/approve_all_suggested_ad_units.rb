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
# This code example approves all suggested ad units with more requests than the
# given threshold.
#
# This feature is only available to Ad Manager premium solution networks.

require 'ad_manager_api'

def approve_suggested_ad_units(ad_manager, num_requests)
  # Get the SuggestedAdUnitService.
  suggested_ad_unit_service = ad_manager.service(
      :SuggestedAdUnitService, API_VERSION
  )

  # Create a statement to only select suggested ad units with more requests
  # than the value of the num_requests parameter.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'numRequests >= :num_requests'
    sb.with_bind_variable('num_requests', num_requests)
  end

  begin
    # Get suggested ad units by statement.
    page = suggested_ad_unit_service.get_suggested_ad_units_by_statement(
        statement.to_statement()
    )

    unit_count_to_approve = 0

    unless page[:results].nil?
      page[:results].each_with_index do |ad_unit, index|
        if ad_unit[:num_requests] >= num_requests
          puts ('%d) Suggested ad unit with ID "%s" and %d requests will be ' +
              'approved.') % [index + statement.offset, ad_unit[:id],
              ad_unit[:num_requests]]
          unit_count_to_approve += 1
        end
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end

  puts "Number of suggested ad units to be approved: %d" % unit_count_to_approve

  if unit_count_to_approve > 0
    # Prepare statement for action.
    statement.configure do |sb|
      sb.offset = nil
      sb.limit = nil
    end

    # Perform action with the same statement.
    result = suggested_ad_unit_service.perform_suggested_ad_unit_action(
        {:xsi_type => 'ApproveSuggestedAdUnits'},
        statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts 'Number of ad units approved: %d' % result[:num_changes]
    else
      puts 'No ad units were approved.'
    end
  else
    puts 'No ad units found to approve.'
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
    num_requests = 50
    approve_suggested_ad_units(ad_manager, num_requests)

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
