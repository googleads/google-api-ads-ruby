#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This code example upgrades an ad to use upgraded URLs.
#
# Tags: AdGroupAdService.get, AdGroupAdService.upgradeUrl

require 'adwords_api'

def upgrade_ad_url(ad_group_id, ad_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  selector = {
    :fields => ['Id', 'Url'],
    :predicates => [
      {:field => 'AdGroupId', :operator => 'EQUALS', :values => [ad_group_id]},
      {:field => 'Id', :operator => 'EQUALS', :values => [ad_id]}
    ]
  }

  page = ad_group_ad_srv.get(selector)
  ad_group_ad = page[:entries][0] if page[:entries]

  raise StandardError, "Ad not found." if ad_group_ad.nil?

  ad_url_upgrade = {
    :ad_id => ad_group_ad[:ad][:id],
    :final_url => ad_group_ad[:ad][:url]
  }

  response = ad_group_ad_srv.upgrade_url([ad_url_upgrade])
  if response
    ad_group_ad = response.first
    puts "Ad with ID %d and destination url '%s' was upgraded." %
        [ad_group_ad[:id], ad_group_ad[:final_urls].first]
  else
    raise StandardError, 'failed to upgrade ads.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    ad_id = 'INSERT_AD_ID_HERE'.to_i
    upgrade_ad_url(ad_group_id, ad_id)

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
