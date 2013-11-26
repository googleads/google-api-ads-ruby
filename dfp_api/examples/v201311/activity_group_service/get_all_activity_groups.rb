#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.davidtorres@gmail.com (David Torres)
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
# This example gets all activity groups. To create activity groups,
# run create_activity_groups.rb.
#
# Tags: ActivityGroupService.getActivityGroupsByStatement

require 'dfp_api'

API_VERSION = :v201311
PAGE_SIZE = 500

def get_all_activity_groups()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ActivityGroupService.
  activity_group_service = dfp.service(:ActivityGroupService, API_VERSION)

  # Define initial values.
  offset = 0
  page = {}

  begin
    # Create statement for one page with current offset.
    statement = {
       :query => 'ORDER BY id LIMIT %d OFFSET %d' % [PAGE_SIZE, offset],
    }

    # Get activity groups by statement.
    page = activity_group_service.get_activity_groups_by_statement(statement)

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE

      # Get the start index for printout.
      start_index = page[:start_index]

      # Print details about each content object in results page.
      page[:results].each_with_index do |activity_group, index|
        puts "%d) Activity group with ID: %d, name: %s." % [index + start_index,
            activity_group[:id], activity_group[:name]]
      end
    end
  end while offset < page[:total_result_set_size]

  # Print a footer
  if page.include?(:total_result_set_size)
    puts "Total number of results: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_all_activity_groups()

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
