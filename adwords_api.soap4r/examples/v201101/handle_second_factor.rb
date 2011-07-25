#!/usr/bin/ruby
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
# This example illustrates how to handle 2 factor authorization errors.

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101

def handle_second_factor()
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
  begin
    handle_second_factor()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'API Exception caught.'
    puts 'Message: %s' % e.message
    puts 'Code: %d' % e.code if e.code
    puts 'Trigger: %s' % e.trigger if e.trigger
    puts 'Errors:'
    if e.errors
      e.errors.each_with_index do |error, index|
        puts ' %d. Error type is %s. Fields:' % [index + 1, error[:xsi_type]]
        error.each_pair do |field, value|
          if field != :xsi_type
            puts '     %s: %s' % [field, value]
          end
        end
      end
    end
  end
end
