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
# This example removes the user from all its teams. To determine which users
# exist, run get_all_users.rb.
#
# Tags: UserTeamAssociationService.getUserTeamAssociationsByStatement
# Tags: UserTeamAssociationService.performUserTeamAssociationAction

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201411

def delete_user_team_associations()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserTeamAssociationService.
  uta_service = dfp.service(:UserTeamAssociationService, API_VERSION)

  # Set the user to remove from its teams.
  user_id = 'INSERT_USER_ID_HERE'.to_i

  # Create filter text to remove association by user ID.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE userId = :user_id',
      [
          {:key => 'user_id',
           :value => {:value => user_id, :xsi_type => 'NumberValue'}}
      ]
  )

  begin
    # Get user team associations by statement.
    page = uta_service.get_user_team_associations_by_statement(
        statement.toStatement())

    if page[:results]
      page[:results].each do |association|
        puts ("User team association of user ID %d with team ID %d will be " +
            "deleted.") % [association[:user_id], association[:team_id]]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Reset offset back to 0 to perform action.
  statement.toStatementForAction()

  # Perform the action.
  result = uta_service.perform_user_team_association_action(
      {:xsi_type => 'DeleteUserTeamAssociations'}, statement.toStatement())

  # Display results.
  if result and result[:num_changes] > 0
    puts "Number of user team associations deleted: %d" % result[:num_changes]
  else
    puts 'No user team associations were deleted.'
  end
end

if __FILE__ == $0
  begin
    delete_user_team_associations()

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
