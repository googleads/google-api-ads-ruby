#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example gets all first party audience segments.

require 'ad_manager_api'

def get_first_party_audience_segments(ad_manager)
  audience_segment_service = ad_manager.service(
      :AudienceSegmentService, API_VERSION
  )

  # Create a statement to select audience segments.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'type = :type'
    sb.with_bind_variable('type', 'FIRST_PARTY')
  end

  # Retrieve a small amount of audience segments at a time, paging
  # through until all audience segments have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    page = audience_segment_service.get_audience_segments_by_statement(
        statement.to_statement()
    )

    # Print out some information for each audience segment.
    if page[:results]
      page[:results].each_with_index do |audience_segment, index|
        puts ('%d) Audience segment with ID %d, name "%s", and size %d was ' +
            'found.') % [index + statement.offset, audience_segment[:id],
            audience_segment[:name], audience_segment[:size]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of audience segments: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v202402

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_first_party_audience_segments(ad_manager)

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
