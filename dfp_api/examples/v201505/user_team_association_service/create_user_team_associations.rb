#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
#
# Tags: UserTeamAssociationService.createUserTeamAssociations

require 'dfp_api'

API_VERSION = :v201505

def create_user_team_associations()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserTeamAssociationService.
  uta_service = dfp.service(:UserTeamAssociationService, API_VERSION)

  # Set the users and team to add them to.
  team_id = 'INSERT_TEAM_ID_HERE'.to_i
  user_ids = ['INSERT_USER_ID_HERE'.to_i]

  # Create an array to store local user team association objects.
  associations = user_ids.map do |user_id|
    {
      :user_id => user_id,
      :team_id => team_id
    }
  end

  # Create the user team associations on the server.
  return_associations = uta_service.create_user_team_associations(associations)

  if return_associations
    return_associations.each do |association|
      puts ("A user team association between user ID %d and team ID %d was " +
          "created.") % [association[:user_id], association[:team_id]]
    end
  else
    raise 'No user team associations were created.'
  end
end

if __FILE__ == $0
  begin
    create_user_team_associations()

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
