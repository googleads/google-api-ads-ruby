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
# This example updates all users by adding "Sr." to the end of a single user.
# To determine which users exist, run get_all_users.rb.
#
# Tags: UserService.getUsersByStatement, UserService.updateUsers

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_users()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserService.
  user_service = dfp.service(:UserService, API_VERSION)

  user_id = 'INSERT_USER_ID_HERE'.to_i

  # Create a statement to get all users.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id ORDER BY id ASC',
      [
         {:key => 'id',
          :value => {:value => user_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  # Get users by statement.
  page = user_service.get_users_by_statement(statement.toStatement())

  if page[:results]
    users = page[:results]

    # Update each local users object by changing its name.
    users.each {|user| user[:name] += ' Sr.'}

    # Update the users on the server.
    return_users = user_service.update_users(users)

    if return_users
      return_users.each do |user|
        puts ("User ID: %d, email: %s was updated with name %s") %
            [user[:id], user[:email], user[:name]]
      end
    else
      raise 'No users were updated.'
    end
  else
    puts 'No users found to update.'
  end
end

if __FILE__ == $0
  begin
    update_users()

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
