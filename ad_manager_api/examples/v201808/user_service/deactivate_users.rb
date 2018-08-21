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
# This example deactivates a user. Deactivated users can no longer make requests
# to the API. The user making the request cannot deactivate itself. To determine
# which users exist, run get_all_users.rb.

require 'ad_manager_api'

def deactivate_users(ad_manager, user_id)
  # Get the UserService.
  user_service = ad_manager.service(:UserService, API_VERSION)

  # Create filter text to select user by id.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :user_id'
    sb.with_bind_variable('user_id', user_id)
    sb.limit = 1
  end

  # Get users by statement.
  response = user_service.get_users_by_statement(statement.to_statement())
  raise 'No users found to deactivate.' if response[:results].to_a.empty?
  user = response[:results].first

  puts "User ID: %d, name: %s and status: %s will be deactivated." %
      [user[:id], user[:name], user[:status]]

  # Prepare statement for action.
  statement.configure do |sb|
    sb.offset = nil
    sb.limit = nil
  end

  # Perform action.
  result = user_service.perform_user_action(
      {:xsi_type => 'DeactivateUsers'},
      statement.to_statement()
  )

  # Display results.
  if !result.nil? && result[:num_changes] > 0
    puts 'Number of users deactivated: %d' % result[:num_changes]
  else
    puts 'No users were deactivated.'
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
    user_id = 'INSERT_USER_ID_HERE'.to_i
    deactivate_users(ad_manager, user_id)

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
