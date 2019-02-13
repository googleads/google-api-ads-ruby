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
# This example updates rule based first party audience segments. To determine
# which first party audience segments exist, run
# get_all_first_party_audience_segments.rb.

require 'ad_manager_api'

def update_audience_segments(ad_manager, audience_segment_id)
  # Get the AudienceSegmentService.
  audience_segment_service = ad_manager.service(
      :AudienceSegmentService, API_VERSION
  )

  # Create statement text to select the audience segment to update.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :audience_segment_id'
    sb.with_bind_variable('audience_segment_id', audience_segment_id)
    sb.limit = 1
  end

  # Get the audience segment.
  response = audience_segment_service.get_audience_segments_by_statement(
      statement.to_statement()
  )
  raise 'No audience segments to update.' if response[:results].to_a.empty?
  audience_segment = page[:results].first

  # Change the membership expiration days after which a user's cookie will be
  # removed from the audience segment due to inactivity.
  audience_segment[:membership_expiration_days] = 180

  # Update the audience segment on the server.
  updated_audience_segments =
      audience_segment_service.update_audience_segments([audience_segment])
  updated_audience_segments.each do |audience_segment|
    puts 'Audience segment with ID %d was updated' % audience_segment[:id]
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
    audience_segment_id = 'INSERT_AUDIENCE_SEGMENT_ID_HERE'.to_i
    update_audience_segments(ad_manager, audience_segment_id)

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
