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
# This example creates new teams with the logged in user added to each team. To
# determine which teams exist, run get_all_teams.rb.

require 'securerandom'
require 'ad_manager_api'

def create_teams(ad_manager, number_of_teams_to_create)
  # Get the TeamService.
  team_service = ad_manager.service(:TeamService, API_VERSION)

  # Create an array to store local team objects.
  teams = (1..number_of_teams_to_create).map do |index|
    {
      :name => "Team #%d - %s" % [index, SecureRandom.uuid()],
      :has_all_companies => false,
      :has_all_inventory => false
    }
  end

  # Create the teams on the server.
  created_teams = team_service.create_teams(teams)

  if created_teams.to_a.size > 0
    created_teams.each do |team|
      puts 'Team with ID %d and name "%s" was created.' %
          [team[:id], team[:name]]
    end
  else
    puts 'No teams were created.'
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
    number_of_teams_to_create = 5
    create_teams(ad_manager, number_of_teams_to_create)

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
