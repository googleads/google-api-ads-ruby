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
# This example gets a user team association by user and team IDs. To determine
# which teams exist, run get_all_teams.rb. To determine which users exist, run
# get_all_users.rb.
#
# Tags: UserTeamAssociationService.getUserTeamAssociation

require 'dfp_api'

API_VERSION = :v201302

def get_user_team_association()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserTeamAssociationService.
  uta_service = dfp.service(:UserTeamAssociationService, API_VERSION)

  # Set the users and team to add them to.
  team_id = 'INSERT_TEAM_ID_HERE'.to_i
  user_id = 'INSERT_USER_ID_HERE'.to_i

  # Get the user team association.
  association = uta_service.get_user_team_association(team_id, user_id)

  if association
    puts "User team association with team ID %d and user ID %d was found." %
        [association[:team_id], association[:user_id]]
  else
    puts 'No user team associations found for these IDs.'
  end
end

if __FILE__ == $0
  begin
    get_user_team_association()

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
