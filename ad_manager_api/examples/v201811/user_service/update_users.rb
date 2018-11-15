#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example updates a single user's name. To determine which users exist,
# run get_all_users.rb.

require 'ad_manager_api'

def update_users(ad_manager, user_id)
  # Get the UserService.
  user_service = ad_manager.service(:UserService, API_VERSION)

  # Create a statement to get all users.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :user_id'
    sb.with_bind_variable('user_id', user_id)
    sb.limit = 1
  end

  # Get users by statement.
  response = user_service.get_users_by_statement(statement.to_statement())
  raise 'No users found to update.' if response[:results].to_a.empty?
  user = response[:results].first

  # Update the user object's name field.
  user[:name] ||= ''
  user[:name] += ' Ph.D.'

  # Update the users on the server.
  updated_users = user_service.update_users(users)

  if updated_users.to_a.size > 0
    updated_users.each do |user|
      puts 'User with ID %d and email "%s" was updated with name "%s".' %
          [user[:id], user[:email], user[:name]]
    end
  else
    puts 'No users were updated.'
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
    update_users(ad_manager, user_id)

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
