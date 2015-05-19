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
# This example illustrates how to use OAuth2.0 authentication method with
# Service Account (JWT). For this example to work, your Service Account must be
# a Google Apps for Business Account.
#
# See https://developers.google.com/doubleclick-publishers/docs/service_accounts
# for more information.
#
# Tags: UserService.getUsersByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def oauth2_jwt_handling()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Option 1: provide key filename as authentication -> oauth2_keyfile in the
  #           configuration file. No additional code is necessary.
  # To provide a file name at runtime, use authorize:
  # dfp.authorize({:oauth2_keyfile => key_filename})

  # Option 2: retrieve key manually and create OpenSSL::PKCS12 object.
  # key_filename = 'INSERT_FILENAME_HERE'
  # key_secret = 'INSERT_SECRET_HERE'
  # key_file_data = File.read(key_filename)
  # key = OpenSSL::PKCS12.new(key_file_data, key_secret).key
  # dfp.authorize({:oauth2_key => key})

  # Now you can make API calls.

  # Get the UserService.
  user_service = dfp.service(:UserService, API_VERSION)

  # Create a statement to select all users.
  statement = DfpApiStatement::FilterStatement.new('ORDER BY id ASC')
  # Define initial values.

  begin
    # Get users by statement.
    page = user_service.get_users_by_statement(
        statement.toStatement())

    if page[:results]
      page[:results].each_with_index do |user, index|
        puts "%d) User ID: %d, name: %s, email: %s" %
            [index + statement.offset, user[:id], user[:name], user[:email]]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer
  if page.include?(:total_result_set_size)
    puts "Total number of users: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    oauth2_jwt_handling()

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
