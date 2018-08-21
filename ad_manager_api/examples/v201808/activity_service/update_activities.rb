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
# This example updates activity expected URLs. To determine which activities
# exist, run get_all_activities.rb.

require 'ad_manager_api'

def update_activities(ad_manager, activity_id)
  # Get the ActivityService.
  activity_service = ad_manager.service(:ActivityService, API_VERSION)

  # Create statement to select a single activity.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :id'
    sb.with_bind_variable('id', activity_id)
  end

  # Get the activities by statement.
  page = activity_service.get_activities_by_statement(statement.to_statement())

  unless page[:results].nil?
    # Get the activities.
    activities = page[:results]

    activites.each do |activity|
      # Update the expected URL.
      activity[:expected_url] = 'https://www.google.com'
    end

    # Update the activity on the server.
    return_activities = activity_service.update_activities(activities)

    # Display results.
    if return_activities.to_a.size > 0
      return_activities.each do |updated_activity|
        puts 'Activity with ID %d and name "%s" was updated.' %
            [updated_activity[:id], updated_activity[:name]]
      end
    else
      puts 'No activities were updated.'
    end
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
    activity_id = 'INSERT_ACTIVITY_ID_HERE'
    update_activities(ad_manager, activity_id)

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
