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
# This example gets all teams that the current user belongs to.
# To create teams, run create_user_team_associations.rb.
#
# Tags: UserTeamAssociationService.getUserTeamAssociationsByStatement
# Tags: UserService.getCurrentUser

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_user_team_associations_by_statement()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserTeamAssociationService.
  uta_service = dfp.service(:UserTeamAssociationService, API_VERSION)

  # Get the UserService.
  user_service = dfp.service(:UserService, API_VERSION)

  # Get the current user.
  user = user_service.get_current_user()

  # Create filter text to select user team associations by the user ID.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE userId = :user_id ORDER BY id',
      [
          {:key => 'user_id',
           :value => {:value => user[:id], :xsi_type => 'NumberValue'}},
      ]
  )

  begin
    # Get user team associations by statement.
    page = uta_service.get_user_team_associations_by_statement(
        statement.toStatement())

    if page and page[:results]
      page[:results].each_with_index do |association, index|
        puts "%d) Team user association between team ID %d and user ID %d." %
            [index + statement.offset, association[:team_id],
             association[:user_id]]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Number of results found: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_user_team_associations_by_statement()

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
