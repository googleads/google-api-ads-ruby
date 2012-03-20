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
# This example illustrates how to handle 'two factor' authorization error.

require 'adwords_api'

def handle_two_factor_authorization_error()
  # Set up credentials with an account that has 2Factor enabled.
  config = {
      :authentication => {
          :method => 'ClientLogin',
          :email => '2steptester@gmail.com',
          :password => 'testaccount',
          :user_agent => 'Ruby 2 Factor Sample'
      },
      :service => {
          :environment => 'PRODUCTION'
      }
  }
  adwords = AdwordsApi::Api.new(config)

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  begin
    # Forcing library to request authorization token.
    auth_token = adwords.authorize()
    puts 'Successfully retrieved the token.'

  # Second factor error is one of AuthErrors.
  rescue AdsCommon::Errors::AuthError => e
    puts "Authorization failed with message:"
    puts "\t%s" % e.message
    # Checking 'Info' field for particular auth error type.
    if e.info and e.info.casecmp('InvalidSecondFactor') == 0
      puts "The user has enabled two factor authentication in this account." +
      " Please use OAuth authentication method or have the user generate an" +
      " application-specific password to make calls against the AdWords" +
      " API. See \n" +
      "    http://adwordsapi.blogspot.com/2011/02/authentication-changes-with" +
      "-2-step.html\n" +
      "for more details."
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    handle_two_factor_authorization_error()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
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
