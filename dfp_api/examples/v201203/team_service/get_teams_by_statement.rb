#!/usr/bin/env ruby
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
# This example gets all teams that you belong to. The statement retrieves up to
# the maximum page size limit of 500. To create teams, run create_teams.rb.
#
# Tags: TeamService.getTeamsByStatement, UserService.getCurrentUser

require 'dfp_api'

API_VERSION = :v201203

def get_teams_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the TeamService.
  team_service = dfp.service(:TeamService, API_VERSION)

  # Get the UserService.
  user_service = dfp.service(:UserService, API_VERSION)

  # Get the current user's team IDs.
  current_user = user_service.get_current_user()
  team_ids = current_user[:team_ids]

  unless team_ids.empty?
    # Create a statement to only select teams by their IDs.
    statement = {:query => "WHERE Id IN (%s) LIMIT 500" % team_ids.join(', ')}

    # Get teams by statement.
    page = team_service.get_teams_by_statement(statement)

    if page and page[:results]
      page[:results].each_with_index do |team, index|
        puts "%d) Team ID: %d, name: %s." % [index, team[:id], team[:name]]
      end
    end

    # Print a footer.
    if page.include?(:total_result_set_size)
      puts "Number of results found: %d" % page[:total_result_set_size]
    end
  end
end

if __FILE__ == $0
  begin
    get_teams_by_statement()

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
