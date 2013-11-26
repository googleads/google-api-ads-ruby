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
# This example updates activity expected URLs. To determine which activities
# exist, run get_all_activities.rb.
#
# Tags: ActivityService.getActivity
# Tags: ActivityService.updateActivities

require 'dfp_api'

API_VERSION = :v201311

def update_activities()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ActivityService.
  activity_service = dfp.service(:ActivityService, API_VERSION)

  # Set the ID of the activity to update.
  activity_id = 'INSERT_ACTIVITY_ID_HERE'

  # Get the activity.
  activity = activity_service.get_activity(activity_id)

  # Update the expected URL.
  activity[:expected_url] = 'https://www.google.com'

  # Update the activity on the server.
  return_activities = activity_service.update_activities([activity])

  # Display results.
  if return_activities
    return_activities.each do |updated_activity|
      puts "Activity with ID: %d and name: %s was updated." %
          [updated_activity[:id], updated_activity[:name]]
    end
  else
    raise 'No activities were updated.'
  end

end

if __FILE__ == $0
  begin
    update_activities()

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
