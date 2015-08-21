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
# This example creates new teams with the logged in user added to each team. To
# determine which teams exist, run get_all_teams.rb.
#
# Tags: TeamService.createTeams

require 'dfp_api'

API_VERSION = :v201505
ITEM_COUNT = 5

def create_teams()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the TeamService.
  team_service = dfp.service(:TeamService, API_VERSION)

  # Create an array to store local team objects.
  teams = (1..ITEM_COUNT).map do |index|
    {
      :name => "Team #%d" % index,
      :has_all_companies => false,
      :has_all_inventory => false
    }
  end

  # Create the teams on the server.
  return_teams = team_service.create_teams(teams)

  if return_teams
    return_teams.each do |team|
      puts "Team with ID: %d and name: '%s' was created." %
          [team[:id], team[:name]]
    end
  else
    raise 'No teams were created.'
  end
end

if __FILE__ == $0
  begin
    create_teams()

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
