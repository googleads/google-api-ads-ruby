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
# This code example approves all suggested ad units with 50 or more requests.
#
# This feature is only available to DFP premium solution networks.
#
# Tags: SuggestedAdUnitService.getSuggestedAdUnitsByStatement
# Tags: SuggestedAdUnitService.performSuggestedAdUnitAction

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505
NUMBER_OF_REQUESTS = 50

def approve_suggested_ad_units()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the SuggestedAdUnitService.
  suggested_ad_unit_service = dfp.service(:SuggestedAdUnitService, API_VERSION)

  # Create a statement to only select suggested ad units with 50 or more
  # requests.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE numRequests >= :num_requests',
      [
          {:key => 'num_requests',
           :value => {:value => NUMBER_OF_REQUESTS,
                      :xsi_type => 'NumberValue'}}
      ]
  )

  begin
    # Get suggested ad units by statement.
    page = suggested_ad_unit_service.get_suggested_ad_units_by_statement(
        statement.toStatement())

    unit_count_to_approve = 0

    if page[:results]
      page[:results].each_with_index do |ad_unit, index|
        if ad_unit[:num_requests] >= NUMBER_OF_REQUESTS
          puts(("%d) Suggested ad unit with ID '%s' and %d requests will be " +
              "approved.") % [index + statement.offset, ad_unit[:id],
              ad_unit[:num_requests]])
          unit_count_to_approve += 1
        end
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end

  puts "Number of suggested ad units to be approved: %d" % unit_count_to_approve

  if unit_count_to_approve > 0
    # Perform action with the same statement.
    result = suggested_ad_unit_service.perform_suggested_ad_unit_action(
        {:xsi_type => 'ApproveSuggestedAdUnit'}, statement)

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of ad units approved: %d" % result[:num_changes]
    else
      puts 'No ad units were approved.'
    end
  else
    puts 'No ad units found to approve.'
  end
end

if __FILE__ == $0
  begin
    approve_suggested_ad_units()

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
