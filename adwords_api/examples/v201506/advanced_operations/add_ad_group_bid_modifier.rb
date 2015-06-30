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
# This example illustrates how to add an ad group level mobile bid modifier
# override for a campaign.
#
# Tags: AdGroupBidModifierService.mutate

require 'adwords_api'

def add_ad_group_bid_modifier(ad_group_id, bid_modifier)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  bid_modifier_srv = adwords.service(:AdGroupBidModifierService, API_VERSION)

  # Mobile criterion ID.
  criterion_id = 30001

  # Prepare to add an ad group level override.
  operation = {
    # Use 'ADD' to add a new modifier and 'SET' to update an existing one. A
    # modifier can be removed with the 'REMOVE' operator.
    :operator => 'ADD',
    :operand => {
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Platform',
        :id => criterion_id
      },
      :bid_modifier => bid_modifier
    }
  }

  # Add ad group level mobile bid modifier.
  response = bid_modifier_srv.mutate([operation])
  if response and response[:value]
    modifier = response[:value].first
    value = modifier[:bid_modifier] || 'unset'
    puts ('Campaign ID %d, AdGroup ID %d, Criterion ID %d was updated with ' +
        'ad group level modifier: %s') %
           [modifier[:campaign_id], modifier[:ad_group_id],
            modifier[:criterion][:id], value]
  else
    puts 'No modifiers were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    # ID of an ad group to add an override for.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    # Bid modifier to override with.
    bid_modifier = 1.5

    add_ad_group_bid_modifier(ad_group_id, bid_modifier)

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
