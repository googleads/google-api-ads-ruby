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
# This example removes the user from all its teams. To determine which users
# exist, run get_all_users.rb.

require 'ad_manager_api'

def delete_user_team_associations(ad_manager, user_id)
  # Get the UserTeamAssociationService.
  uta_service = ad_manager.service(:UserTeamAssociationService, API_VERSION)

  # Create filter text to remove association by user ID.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'userId = :user_id'
    sb.with_bind_variable('user_id', user_id)
  end

  begin
    # Get user team associations by statement.
    page = uta_service.get_user_team_associations_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      page[:results].each do |association|
        puts ('User team association of user ID %d with team ID %d will be ' +
            'deleted.') % [association[:user_id], association[:team_id]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Configure the statement to perform the delete action.
  statement.configure do |sb|
    sb.offset = nil
    sb.limit = nil
  end

  # Perform the action.
  result = uta_service.perform_user_team_association_action(
      {:xsi_type => 'DeleteUserTeamAssociations'},
      statement.to_statement()
  )

  # Display results.
  if !result.nil? && result[:num_changes] > 0
    puts 'Number of user team associations deleted: %d' % result[:num_changes]
  else
    puts 'No user team associations were deleted.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    user_id = 'INSERT_USER_ID_HERE'.to_i
    delete_user_team_associations(ad_manager, user_id)

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
