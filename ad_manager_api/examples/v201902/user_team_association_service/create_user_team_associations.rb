#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This example adds a user to a team by creating an association between the two.
# To determine which teams exist, run get_all_teams.rb. To determine which users
# exist, run get_all_users.rb.

require 'ad_manager_api'

def create_user_team_associations(ad_manager, team_id, user_ids)
  # Get the UserTeamAssociationService.
  uta_service = ad_manager.service(:UserTeamAssociationService, API_VERSION)

  # Create an array to store local user team association objects.
  associations = user_ids.map do |user_id|
    {
      :user_id => user_id,
      :team_id => team_id
    }
  end

  # Create the user team associations on the server.
  created_associations = uta_service.create_user_team_associations(associations)

  if created_associations.to_a.size > 0
    created_associations.each do |association|
      puts ('A user team association between user ID %d and team ID %d was ' +
          'created.') % [association[:user_id], association[:team_id]]
    end
  else
    puts 'No user team associations were created.'
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
    team_id = 'INSERT_TEAM_ID_HERE'.to_i
    user_ids = ['INSERT_USER_ID_HERE'.to_i, 'INSERT_USER_ID_HERE'.to_i]
    create_user_team_associations(ad_manager, team_id, user_ids)

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
