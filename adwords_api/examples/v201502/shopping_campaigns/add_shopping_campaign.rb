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
# This example adds a Shopping campaign.
#
# Tags: CampaignService.mutate, AdGroupService.mutate, AdGroupAdService.mutate

require 'adwords_api'
require 'date'

def add_shopping_campaign(budget_id, merchant_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)
  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create campaign.
  campaign = {
    :name => "Shopping campaign #%d" % (Time.new.to_f * 1000).to_i,
    # The advertising_channel_type is what makes this a Shopping campaign.
    :advertising_channel_type => 'SHOPPING',
    :budget => {:budget_id => budget_id},
    :bidding_strategy_configuration => {
      :bidding_strategy_type => 'MANUAL_CPC'
    },
    :settings => [
      {
        :xsi_type => 'ShoppingSetting',
        :sales_country => 'US',
        :campaign_priority => 0,
        :merchant_id => merchant_id,
        # Set to "true" to enable Local Inventory Ads in your campaign.
        :enable_local => true
      }
    ]
  }
  campaign_operation = {:operator => 'ADD', :operand => campaign}

  # Make the mutate request.
  result = campaign_srv.mutate([campaign_operation])

  # Print the result.
  campaign = result[:value].first
  puts "Campaign with name '%s' and ID %d was added." %
      [campaign[:name], campaign[:id]]

  # Create ad group.
  ad_group = {
    :campaign_id => campaign[:id],
    :name => 'Ad Group #%d' % (Time.new.to_f * 1000).to_i
  }
  ad_group_operation = {:operator => 'ADD', :operand => ad_group}

  # Make the mutate request.
  result = ad_group_srv.mutate([ad_group_operation])

  # Print the result.
  ad_group = result[:value].first
  puts "Ad group with name '%s' and ID %d was added." %
      [ad_group[:name], ad_group[:id]]

  # Create product ad.
  ad_group_ad = {
    :ad_group_id => ad_group[:id],
    :ad => {:xsi_type => 'ProductAd'}
  }
  ad_group_operation = {:operator => 'ADD', :operand => ad_group_ad}

  # Make the mutate request.
  result = ad_group_ad_srv.mutate([ad_group_operation])

  # Print the result.
  ad_group_ad = result[:value].first
  puts "Product ad with ID %d was added." % [ad_group_ad[:id]]
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    budget_id = 'INSERT_BUDGET_ID_HERE'.to_i
    merchant_id = 'INSERT_MERCHANT_ID_HERE'.to_i

    add_shopping_campaign(budget_id, merchant_id)

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
