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
# This example illustrates how to use OAuth authentication method.
#
# Tags: CampaignService.get

require 'adwords_api'

def use_oauth()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Get all the campaigns for this account; empty selector.
  selector = {
    :fields => ['Id', 'Name', 'Status'],
    :ordering => [
      {:field => 'Name', :sort_order => 'ASCENDING'}
    ]
  }

  retry_count = 0

  begin
    response = campaign_srv.get(selector)
  rescue AdsCommon::Errors::OAuthVerificationRequired => e
    if retry_count < MAX_RETRIES
      puts "Hit Auth error, please navigate to URL:\n\t%s" % e.oauth_url
      print 'log in and type the verification code: '
      verification_code = gets.chomp
      adwords.credential_handler.set_credential(
          :oauth_verification_code, verification_code)
      retry_count += 1
      retry
    else
      raise AdsCommon::Errors::AuthError, 'Failed to authenticate.'
    end
  end

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
  API_VERSION = :v201109
  MAX_RETRIES = 3

  begin
    use_oauth()

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
