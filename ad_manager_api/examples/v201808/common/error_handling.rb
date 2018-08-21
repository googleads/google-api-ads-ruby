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
# This example runs incorrect query and demonstrates how to handle errors.

require 'ad_manager_api'

def produce_api_error(ad_manager)
  # Get the UserService.
  user_service = ad_manager.service(:UserService, API_VERSION)

  # Omitting "id" field here to produce an error.
  user = {:preferred_locale => 'en_UK', :name => 'foo_bar'}

  # Execute request and get the response, this should raise an exception.
  user = user_service.update_user(user)

  # Output retrieved data. (This code will not actually be executed, since the
  # call to update_user raises an exception.)
  puts 'User ID: %d, name: %s, email: %s' %
      [user[:id], user[:name], user[:email]]
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    # This function should produce an exception for demo.
    produce_api_error(ad_manager)

  # One of two kinds of exception might occur, general HTTP error like 403 or
  # 404 and Ad Manager API error defined in WSDL and described in documentation.

  # Handling HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # Handling API errors.
  rescue AdManagerApi::Errors::ApiException => e
    # Standard Ad Manager API error includes message and array of errors
    # occured.
    puts "Message: %s" % e.message
    puts 'Errors:'
    # Print out each of the errors.
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
