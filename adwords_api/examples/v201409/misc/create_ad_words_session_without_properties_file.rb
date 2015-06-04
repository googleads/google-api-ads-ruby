#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This example demonstrates how to make AdWords queries without using the
# adwords_api.yml file.

require 'adwords_api'
require 'date'

def create_ad_words_session(client_id, client_secret, refresh_token,
        developer_token, client_customer_id, user_agent)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new({
    :authentication => {
      :method => 'OAuth2',
      :oauth2_client_id => client_id,
      :oauth2_client_secret => client_secret,
      :developer_token => developer_token,
      :client_customer_id => client_customer_id,
      :user_agent => user_agent,
      :oauth2_token => {
        :refresh_token => refresh_token
      }
    },
    :service => {
      :environment => 'PRODUCTION'
    }
  })

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the hash above or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  customer_srv = adwords.service(:CustomerService, API_VERSION)
  customer = customer_srv.get()
  puts "You are logged in as customer: %d" % customer[:id]
end

if __FILE__ == $0
  API_VERSION = :v201409

  begin
    client_id = 'INSERT_CLIENT_ID_HERE'
    client_secret = 'INSERT_CLIENT_SECRET_HERE'
    refresh_token = 'INSERT_REFRESH_TOKEN_HERE'
    developer_token = 'INSERT_DEVELOPER_TOKEN_HERE'
    client_customer_id = 'INSERT_CLIENT_CUSTOMER_ID_HERE'
    user_agent = 'INSERT_USER_AGENT_HERE'

    create_ad_words_session(client_id, client_secret, refresh_token,
        developer_token, client_customer_id, user_agent)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'http://code.google.com/p/google-api-ads-ruby/wiki/OAuth2'

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
