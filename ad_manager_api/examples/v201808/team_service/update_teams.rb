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
# This example updates a team's description. To determine which teams exist, run
# get_all_teams.rb.

require 'ad_manager_api'

def update_teams(ad_manager, team_id)
  # Get the TeamService.
  team_service = ad_manager.service(:TeamService, API_VERSION)

  # Create a statement to select the matching team.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :team_id'
    sb.with_bind_variable('team_id', team_id)
    sb.limit = 1
  end

  # Get team by statement.
  response = team_service.get_teams_by_statement(statement.to_statement())
  raise 'No teams found to update.' if response[:results].to_a.empty?
  team = response[:results].first

  # Change the description of the team.
  team[:description] ||= ''
  team[:description] += ' - UPDATED'

  # Update the teams on the server.
  updated_teams = team_service.update_teams(updated_teams)

  # Display the results.
  if updated_teams.to_a.size > 0
    updated_teams.each do |team|
      puts 'Team ID %d and name "%s" was updated' % [team[:id], team[:name]]
    end
  else
    puts 'No teams were updated.'
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
    team_id = 'INSERT_TEAM_ID_HERE'.to_i
    update_teams(ad_manager, team_id)

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
