#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example deactivates a user. Deactivated users can no longer make requests
# to the API. The user making the request cannot deactivate itself. To determine
# which users exist, run get_all_users.rb.
#
# Tags: UserService.getUsersByStatement, UserService.performUserAction

require 'dfp_api'

API_VERSION = :v201505

def deactivate_users()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserService.
  user_service = dfp.service(:UserService, API_VERSION)

  # Set the ID of the user to deactivate
  user_id = 'INSERT_USER_ID_HERE'

  # Create filter text to select user by id.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :user_id',
      [
          {:key => 'user_id',
           :value => {:value => user_id, :xsi_type => 'NumberValue'}}
      ]
  )

  # Get users by statement.
  page = user_service.get_users_by_statement(statement.toStatement())

  if page[:results]
    page[:results].each do |user|
      puts "User ID: %d, name: %s and status: %s will be deactivated." %
          [user[:id], user[:name], user[:status]]
    end

    # Perform action.
    result = user_service.perform_user_action(
        {:xsi_type => 'DeactivateUsers'}, statement.toStatement())

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of users deactivated: %d" % result[:num_changes]
    else
      puts 'No users were deactivated.'
    end
  else
    puts 'No user found to deactivate.'
  end
end

if __FILE__ == $0
  begin
    deactivate_users()

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
