#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example gets users by email.

require 'ad_manager_api'

def get_user_by_email_address(ad_manager, email_address)
  # Get the UserService.
  user_service = ad_manager.service(:UserService, :v201808)

  # Create a statement to select users.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'email = :email_address'
    sb.with_bind_variable('email_address', email_address)
  end

  # Retrieve a small amount of users at a time, paging
  # through until all users have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    page = user_service.get_users_by_statement(statement.to_statement())

    # Print out some information for each user.
    unless page[:results].nil?
      page[:results].each_with_index do |user, index|
        puts '%d) User with ID %d and name "%s" was found.' %
            [index + statement.offset, user[:id], user[:name]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of users: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    email_address = 'INSERT_EMAIL_ADDRESS_HERE';
    get_user_by_email_address(ad_manager, email_address)

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
