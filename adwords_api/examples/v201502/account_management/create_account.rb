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
# This example illustrates how to create an account. Note by default this
# account will only be accessible via parent MCC.
#
# Tags: ManagedCustomerService.mutate

require 'adwords_api'
require 'adwords_api/utils'

def create_account()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  managed_customer_srv = adwords.service(:ManagedCustomerService, API_VERSION)

  # Create a local Customer object.
  customer = {
    :name => 'Account created with ManagedCustomerService',
    :currency_code => 'EUR',
    :date_time_zone => 'Europe/London'
  }

  # Prepare operation to create an account.
  operation = {
      :operator => 'ADD',
      :operand => customer
  }

  # Create the account. It is possible to create multiple accounts with one
  # request by sending an array of operations.
  response = managed_customer_srv.mutate([operation])

  response[:value].each do |new_account|
    puts "Account with customer ID '%s' was successfully created." %
        AdwordsApi::Utils.format_id(new_account[:customer_id])
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    create_account()

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
