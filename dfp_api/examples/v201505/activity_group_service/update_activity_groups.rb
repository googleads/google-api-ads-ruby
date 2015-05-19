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
# This example updates activity groups by adding a company. To determine which
# activity groups exist, run get_all_activity_groups.rb.
#
# Tags: ActivityGroupService.getActivityGroupsByStatement
# Tags: ActivityGroupService.updateActivityGroups

require 'dfp_api'

API_VERSION = :v201505

def update_activity_groups()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ActivityGroupService.
  activity_group_service = dfp.service(:ActivityGroupService, API_VERSION)

  # Set the ID of the activity group and the company to update it with.
  activity_group_id = 'INSERT_ACTIVITY_GROUP_ID_HERE'
  advertiser_company_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'

  # Create statement to select a single activity group.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id ORDER BY id ASC',
      [
          {:key => 'id',
           :value => {:value => activity_group_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  page = activity_group_service.get_activity_groups_by_statement(
      statement.toStatement())

  if page[:results]
    # Get the activity groups.
    activity_groups = page[:results]

    activity_groups.each do |activity_group|
      # Update the companies.
      activity_group[:company_ids] << advertiser_company_id
    end

    # Update the activity groups on the server.
    return_activity_groups = activity_group_service.update_activity_groups(
        activity_groups)

    return_activity_groups.each do |updates_activity_group|
      puts "Activity group with ID: %d and name: %s was updated." %
          [updates_activity_group[:id], updates_activity_group[:name]]
    end
  end
end

if __FILE__ == $0
  begin
    update_activity_groups()

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
