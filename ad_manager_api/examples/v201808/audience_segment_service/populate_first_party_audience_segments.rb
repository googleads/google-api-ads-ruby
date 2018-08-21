#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This code example populates specific rule based first party audience segment.
# To determine which audience segments exist, run get_audience_segments.rb.

require 'ad_manager_api'

def populate_first_party_audience_segments(ad_manager, audience_segment_id)
  # Get the AudienceSegmentService.
  audience_segment_service = ad_manager.service(
      :AudienceSegmentService, API_VERSION
  )

  # Create a statement to select first party audience segment for an ID.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'type = :type AND id = :audience_segment_id'
    sb.with_bind_variable('type', 'FIRST_PARTY')
    sb.with_bind_variable('audience_segment_id', audience_segment_id)
  end

  # Retrieve a small amount of audience segments at a time, paging
  # through until all audience segments have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get audience segments by statement.
    page = audience_segment_service.get_audience_segments_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      page[:results].each do |segment|
        puts ('First party audience segment with ID %d and name "%s" will be ' +
        'populated.') % [segment[:id], segment[:name]]
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Perform action.
  result = audience_segment_service.perform_audience_segment_action(
      {:xsi_type => 'PopulateAudienceSegments'},
      {:query => statement.to_statement()}
  )

  # Display results.
  if !result.nil? && result[:num_changes] > 0
    puts 'Number of audience segments populated: %d.' % result[:num_changes]
  else
    puts 'No audience segments were populated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    # Audience segment ID to populate.
    audience_segment_id = 'INSERT_AUDIENCE_SEGMENT_ID_HERE'

    populate_first_party_audience_segments(ad_manager, audience_segment_id)

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
