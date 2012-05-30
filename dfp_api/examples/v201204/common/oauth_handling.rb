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
# This example shows how to use OAuth authorization method. It is designed to be
# run from console and requires user input.
#
# Tags: UserService.getUsersByStatement

require 'dfp_api'

API_VERSION = :v201204
PAGE_SIZE = 500
MAX_RETRIES = 3

def oauth_handling()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Forcing authorization. A callback URL and other parameters could be
  # specified as parameter for OAuth method.
  token = dfp.authorize({:oauth_callback => 'oob'}) do |oauth_url|
    # For command-line we ask user to go to URL and type in code.
    verification_code = get_verification_code(oauth_url)
    # Return verification code from the block.
    (verification_code.empty?) ? nil : verification_code
  end

  # Get the UserService.
  user_service = dfp.service(:UserService, API_VERSION)

  # Define initial values.
  offset = 0
  page = Hash.new
  retry_count = 0

  begin
    # Create statement for one page with current offset.
    statement = {:query => "LIMIT %d OFFSET %d" % [PAGE_SIZE, offset]}

    begin
      # Get users by statement.
      page = user_service.get_users_by_statement(statement)

    # The second way to do OAuth authentication is to make a request and catch
    # the OAuthVerificationRequired exception. Add the verification code to the
    # credentials once acquired.
    rescue AdsCommon::Errors::OAuthVerificationRequired => e
      if retry_count < MAX_RETRIES
        verification_code = get_verification_code(e.oauth_url)
        dfp.credential_handler.set_credential(
            :oauth_verification_code, verification_code)
        retry_count += 1
        retry
      else
        raise AdsCommon::Errors::AuthError, 'Failed to authenticate.'
      end
    end

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE

      # Get the start index for printout.
      start_index = page[:start_index]

      # Print details about each user in results page.
      page[:results].each_with_index do |user, index|
        puts "%d) User ID: %d, name: %s, email: %s" %
            [index + start_index, user[:id], user[:name], user[:email]]
      end
    end
  end while offset < page[:total_result_set_size]

  # Print a footer
  if page.include?(:total_result_set_size)
    puts "Total number of users: %d" % page[:total_result_set_size]
  end
end

# Misc util to get the verification code from the console.
def get_verification_code(url)
  puts "Hit Auth error, please navigate to URL:\n\t%s" % url
  print 'Log in and type the verification code: '
  verification_code = gets.chomp
  return verification_code
end

if __FILE__ == $0
  begin
    oauth_handling()

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
