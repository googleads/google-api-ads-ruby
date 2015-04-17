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
# See https://developers.google.com/adwords/api/docs/guides/service-accounts
# for more information.
#
# Tags: CampaignService.get

require 'adwords_api'

def use_oauth2_jwt()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # Option 1: provide key filename as authentication -> oauth2_keyfile in the
  #           configuration file. No additional code is necessary.
  # To provide a file name at runtime, use authorize:
  # adwords.authorize({:oauth2_keyfile => key_filename})

  # Option 2: retrieve key manually and create OpenSSL::PKCS12 object.
  # key_filename = 'INSERT_FILENAME_HERE'
  # key_secret = 'INSERT_SECRET_HERE'
  # key_file_data = File.read(key_filename)
  # key = OpenSSL::PKCS12.new(key_file_data, key_secret).key
  # adwords.authorize({:oauth2_key => key})

  # Now you can make API calls.
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Get all the campaigns for this account; empty selector.
  selector = {
    :fields => ['Id', 'Name', 'Status'],
    :ordering => [
      {:field => 'Name', :sort_order => 'ASCENDING'}
    ]
  }

  response = campaign_srv.get(selector)
  if response and response[:entries]
    campaigns = response[:entries]
    campaigns.each do |campaign|
      puts "Campaign ID %d, name '%s' and status '%s'" %
          [campaign[:id], campaign[:name], campaign[:status]]
    end
  else
    puts 'No campaigns were found.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201409

  begin
    use_oauth2_jwt()

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
