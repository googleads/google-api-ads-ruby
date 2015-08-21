#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This example illustrates how to set up OAuth2.0 authentication credentials.
#
# Tags: CampaignService.get

require 'adwords_api'

def setup_oauth2()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # You can call authorize explicitly to obtain the access token. Otherwise, it
  # will be invoked automatically on the first API call.
  # There are two ways to provide verification code, first one is via the block:
  token = adwords.authorize() do |auth_url|
    puts "Hit Auth error, please navigate to URL:\n\t%s" % auth_url
    print 'log in and type the verification code: '
    verification_code = gets.chomp
    verification_code
  end
  if token
    print "\nWould you like to update your adwords_api.yml to save " +
        "OAuth2 credentials? (y/N): "
    response = gets.chomp
    if ('y'.casecmp(response) == 0) or ('yes'.casecmp(response) == 0)
      adwords.save_oauth2_token(token)
      puts 'OAuth2 token is now saved to ~/adwords_api.yml and will be ' +
          'automatically used by the library.'
    end
  end

  # Alternatively, you can provide one within the parameters:
  # token = adwords.authorize({:oauth2_verification_code => verification_code})

  # Note, 'token' is a Hash. Its value is not used in this example. If you need
  # to be able to access the API in offline mode, with no user present, you
  # should persist it to be used in subsequent invocations like this:
  # adwords.authorize({:oauth2_token => token})

  # No exception thrown - we are good to make a request.
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    setup_oauth2()

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
