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
# This example creates new users. To determine which users exist, run
# get_all_users.rb. To determine which roles exist, run get_all_roles.rb.

require 'ad_manager_api'

def create_users(ad_manager, emails_and_names, role_id)
  # Get the UserService.
  user_service = ad_manager.service(:UserService, API_VERSION)

  # Create an array to store local user objects.
  users = emails_and_names.map do |email_and_name|
    email_and_name.merge({:role_id => role_id})
  end

  # Create the users on the server.
  created_users = user_service.create_users(users)

  if created_users.to_a.size > 0
    created_users.each do |user|
      puts 'User with ID %d, name "%s", and email "%s" was created.' %
          [user[:id], user[:name], user[:email]]
    end
  else
    puts 'No users were created.'
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
    emails_and_names = [
      {
        :name => 'INSERT_NAME_HERE',
        :email => 'INSERT_EMAIL_ADDRESS_HERE'
      },
      {
        :name => 'INSERT_NAME_HERE',
        :email => 'INSERT_EMAIL_ADDRESS_HERE'
      }
    ]
    role_id = 'INSERT_ROLE_ID_HERE'.to_i
    create_users(ad_manager, emails_and_names, role_id)

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
