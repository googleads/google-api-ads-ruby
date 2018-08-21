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
# This example updates user team associations. It updates a user team
# association by setting the overridden access type to read only for the first
# 500 teams that the user belongs to. To determine which users exists, run
# get_all_users.rb.

require 'ad_manager_api'

def update_user_team_associations(ad_manager, user_id)
  # Get the UserTeamAssociationService.
  uta_service = ad_manager.service(:UserTeamAssociationService, API_VERSION)

  # Create filter text to select user team associations by the user ID.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'userId = :user_id'
    sb.with_bind_variable('user_id', user_id)
    sb.order_by = 'id'
  end

  # Get user team associations by statement.
  page = uta_service.get_user_team_associations_by_statement(
      statement.to_statement()
  )
  if page[:results].to_a.empty?
    raise 'No user team assiciations found to update.'
  end

  associations = page[:results]
  associations.each do |association|
    # Update local user team association to read-only access.
    association[:overridden_team_access_type] = 'READ_ONLY'
  end

  # Update the user team association on the server.
  updated_associations =
      uta_service.update_user_team_associations(associations)

  # Display results.
  if updated_associations.to_a.size > 0
    updated_associations.each do |association|
      puts ('User team association between user ID %d and team ID %d was ' +
          'updated with access type "%s".') % [association[:user_id],
          association[:team_id], association[:overridden_team_access_type]]
    end
  else
    puts 'No user team associations were updated.'
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
    user_id = 'INSERT_USER_ID_HERE'.to_i
    update_user_team_associations(ad_manager, user_id)

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
