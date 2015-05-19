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
# This example creates new users. To determine which users exist, run
# get_all_users.rb. To determine which roles exist, run get_all_roles.rb.
#
# Tags: UserService.createUsers

require 'dfp_api'

API_VERSION = :v201505

def create_users()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the UserService.
  user_service = dfp.service(:UserService, API_VERSION)

  # Set the user's email addresses and names.
  emails_and_names = [
      {:name => 'INSERT_NAME_HERE',
       :email => 'INSERT_EMAIL_ADDRESS_HERE'},
      {:name => 'INSERT_NAME_HERE',
       :email => 'INSERT_EMAIL_ADDRESS_HERE'}
  ]

  # Set the role ID for new users.
  role_id = 'INSERT_ROLE_ID_HERE'.to_i

  # Create an array to store local user objects.
  users = emails_and_names.map do |email_and_name|
    email_and_name.merge({:role_id => role_id, :preferred_locale => 'en_US'})
  end

  # Create the users on the server.
  return_users = user_service.create_users(users)

  if return_users
    return_users.each do |user|
      puts "User with ID: %d, name: %s and email: %s was created." %
          [user[:id], user[:name], user[:email]]
    end
  else
    raise 'No users were created.'
  end
end

if __FILE__ == $0
  begin
    create_users()

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
