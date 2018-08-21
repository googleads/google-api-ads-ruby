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
# This example illustrates how to use OAuth2 authentication method with
# Service Account (JWT). For this example to work, your Service Account must be
# a Google Apps for Business Account.
#
# See https://developers.google.com/ad-manager/docs/service_accounts
# for more information.

require 'ad_manager_api'

def oauth2_jwt_handling(ad_manager)
  # Option 1: provide key filename as authentication -> oauth2_keyfile in the
  #           configuration file. No additional code is necessary.
  # To provide a file name at runtime, use authorize:
  # ad_manager.authorize({:oauth2_keyfile => key_filename})

  # Option 2: retrieve key manually and create OpenSSL::PKCS12 object.
  # key_filename = 'INSERT_FILENAME_HERE'
  # key_secret = 'INSERT_SECRET_HERE'
  # key_file_data = File.read(key_filename)
  # key = OpenSSL::PKCS12.new(key_file_data, key_secret).key
  # ad_manager.authorize({:oauth2_key => key})

  # Now you can make API calls.

  # Get the UserService.
  user_service = ad_manager.service(:UserService, API_VERSION)

  # Create a statement to select all users.
  statement = ad_manager.new_statement_builder do |sb|
    sb.order_by = 'id'
  end
  # Define initial values.

  page = {:total_result_set_size => 0}
  begin
    # Get users by statement.
    page = user_service.get_users_by_statement(statement.to_statement())

    unless page[:results].nil?
      page[:results].each_with_index do |user, index|
        puts '%d) User ID: %d, name: %s, email: %s' %
            [index + statement.offset, user[:id], user[:name], user[:email]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Print a footer
  puts 'Total number of users: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    oauth2_jwt_handling(ad_manager)

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
