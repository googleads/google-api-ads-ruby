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
# This example updates user team associations. It updates a user team
# association by setting the overridden access type to read only for the first
# 500 teams that the user belongs to. To determine which users exists, run
# get_all_users.rb.
#
# Tags: UserTeamAssociationService.getUserTeamAssociationsByStatement
# Tags: UserTeamAssociationService.updateUserTeamAssociations

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_user_team_associations()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserTeamAssociationService.
  uta_service = dfp.service(:UserTeamAssociationService, API_VERSION)

  # Set the user to set to read only access within its teams.
  user_id = 'INSERT_USER_ID_HERE'.to_i

  # Create filter text to select user team associations by the user ID.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE userId = :user_id ORDER BY id ASC',
      [
          {:key => 'user_id',
           :value => {:value => user_id, :xsi_type => 'NumberValue'}},
      ]
  )

  # Get user team associations by statement.
  page = uta_service.get_user_team_associations_by_statement(
      statement.toStatement())

  if page[:results] and !page[:results].empty?
    associations = page[:results]
    associations.each do |association|
      # Update local user team association to read-only access.
      association[:overridden_team_access_type] = 'READ_ONLY'
    end

    # Update the user team association on the server.
    return_associations =
        uta_service.update_user_team_associations(associations)

    # Display results.
    return_associations.each do |association|
      puts ("User team association between user ID %d and team ID %d was " +
          "updated with access type '%s'") %
          [association[:user_id], association[:team_id],
           association[:overridden_team_access_type]]
    end
  else
    puts 'No user team associations were updated.'
  end
end

if __FILE__ == $0
  begin
    update_user_team_associations()

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
