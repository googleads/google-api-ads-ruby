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
# This example creates new activities. To determine which activities exist, run
# get_all_activities.php.
#
# Tags: ActivityService.createActivities

require 'dfp_api'

API_VERSION = :v201505

def create_activities()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ActivityService.
  activity_service = dfp.service(:ActivityService, API_VERSION)

  # Set the ID of the activity group this activity is associated with.
  activity_group_id = 'INSERT_ACTIVITY_GROUP_ID_HERE';

  # Create a daily visits activity.
  daily_visits_activity = {
    :name => 'Activity',
    :activity_group_id => activity_group_id,
    :type => 'DAILY_VISITS'
  }

  # Create a custom activity.
  custom_activity = {
    :name => 'Activity',
    :activity_group_id => activity_group_id,
    :type => 'CUSTOM'
  }

  # Create the activities on the server.
  return_activities = activity_service.create_activities([
      daily_visits_activity, custom_activity])

  if return_activities
    return_activities.each do |activity|
      puts "An activity with ID: %d, name: %s and type: %s was created." %
          [activity[:id], activity[:name], activity[:type]]
    end
  else
    raise 'No activities were created.'
  end
end

if __FILE__ == $0
  begin
    create_activities()

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
