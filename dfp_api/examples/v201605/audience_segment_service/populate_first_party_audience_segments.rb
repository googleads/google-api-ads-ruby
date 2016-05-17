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

require 'dfp_api'


API_VERSION = :v201605

def populate_first_party_audience_segments(audience_segment_id)
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the AudienceSegmentService.
  audience_segment_service = dfp.service(:AudienceSegmentService, API_VERSION)

  # Statement parts to help build a statement to select first party audience
  # segment for an ID.
  statement = DfpApi::FilterStatement.new(
     'WHERE type = :type AND id = :audience_segment_id ORDER BY id ASC',
     [
       {:key => 'type',
        :value => {:value => 'FIRST_PARTY', :xsi_type => 'TextValue'}},
       {:key => 'audience_segment_id',
        :value => {:value => audience_segment_id, :xsi_type => 'TextValue'}},
     ],
     1
  )

  # Get audience segments by statement.
  page = audience_segment_service.get_audience_segments_by_statement(
      statement.toStatement())

  if page[:results]
    page[:results].each do |segment|
      puts "First party audience segment ID: %d, name: '%s' will be populated" %
          [segment[:id], segment[:name]]

      # Perform action.
      result = audience_segment_service.perform_audience_segment_action(
          {:xsi_type => 'PopulateAudienceSegments'},
          {:query => statement.toStatement()})

      # Display results.
      if result and result[:num_changes] > 0
        puts 'Number of audience segments populated: %d.' % result[:num_changes]
      else
        puts 'No audience segments were populated.'
      end
    end
  else
    puts 'No first party audience segments found to populate.'
  end
end

if __FILE__ == $0
  begin
    # Audience segment ID to populate.
    audience_segment_id = 'INSERT_AUDIENCE_SEGMENT_ID_HERE'

    populate_first_party_audience_segments(audience_segment_id)

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
