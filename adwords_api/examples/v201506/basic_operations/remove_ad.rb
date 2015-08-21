#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example removes an ad using the 'REMOVE' operator. To get ads, run
# get_text_ads.rb.
#
# Tags: AdGroupAdService.mutate

require 'adwords_api'

def remove_ad(ad_group_id, ad_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Prepare for deleting ad.
  operation = {
    :operator => 'REMOVE',
    :operand => {
      :ad_group_id => ad_group_id,
      :ad => {
        :xsi_type => 'Ad',
        :id => ad_id
      }
    }
  }

  # Remove ad.
  response = ad_group_ad_srv.mutate([operation])
  if response and response[:value]
    ad = response[:value].first
    puts "Ad ID %d was successfully removed." % ad[:ad][:id]
  else
    puts 'No ads were removed.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    # IDs of an ad to remove and its ad group.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    ad_id = 'INSERT_AD_ID_HERE'.to_i
    remove_ad(ad_group_id, ad_id)

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
