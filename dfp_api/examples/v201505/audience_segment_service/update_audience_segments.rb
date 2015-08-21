#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
#
# Tags: AudienceSegmentService.getAudienceSegmentsByStatement
# Tags: AudienceSegmentService.updateAudienceSegments

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_audience_segments()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Set the ID of the first party audience segment to update.
  audience_segment_id = 'INSERT_AUDIENCE_SEGMENT_ID_HERE'

  # Get the AudienceSegmentService.
  audience_segment_service = dfp.service(:AudienceSegmentService, API_VERSION)

  # Create statement text to select the audience segment to update.
  statement = DfpApiStatement::FilterStatement.new(
     'WHERE id = :segment_id ORDER BY id ASC',
     [
         {:key => 'segment_id',
          :value => {:value => audience_segment_id, :xsi_type => 'NumberValue'}}
     ],
     1
  )

  # Get audience segments by statement.
  page = audience_segment_service.get_audience_segments_by_statement(
      statement.toStatement())

  if page[:results]
    audience_segments = page[:results]

    # Create a local set of audience segments than need to be updated.
    audience_segments.each do |audience_segment|
      audience_segment[:membership_expiration_days] = 180
    end

    # Update the audience segments on the server.
    return_audience_segments =
        audience_segment_service.update_audience_segments(audience_segments)
    return_audience_segments.each do |audience_segment|
      puts 'Audience segment ID: %d was updated' % audience_segment[:id]
    end
  else
    puts 'No audience segments found to update.'
  end
end

if __FILE__ == $0
  begin
    update_audience_segments()

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
