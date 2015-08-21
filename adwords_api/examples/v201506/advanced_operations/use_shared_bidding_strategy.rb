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
# This example adds a Shared Bidding Strategy and uses it to construct a
# campaign.
#
# Tags: BiddingStrategyService.mutate, CampaignService.mutate
# Tags: BudgetService.mutate

require 'adwords_api'
require 'date'

def use_shared_bidding_strategy()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  budget_srv = adwords.service(:BudgetService, API_VERSION)
  bidding_srv = adwords.service(:BiddingStrategyService, API_VERSION)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Create a budget, which can be shared by multiple campaigns.
  budget = {
    :name => 'Interplanetary budget #%d' % (Time.new.to_f * 1000).to_i,
    :amount => {:micro_amount => 50000000},
    :delivery_method => 'STANDARD',
    :period => 'DAILY',
    :is_explicitly_shared => true
  }
  return_budget = budget_srv.mutate([
    {:operator => 'ADD', :operand => budget}])
  budget_id = return_budget[:value].first[:budget_id]

  # Create a shared bidding strategy.
  shared_bidding_strategy = {
    :name => 'Maximize Clicks #%d' % (Time.new.to_f * 1000).to_i,
    :bidding_scheme => {
      :xsi_type => 'TargetSpendBiddingScheme',
      # Optionally set additional bidding scheme parameters.
      :bid_ceiling => {:micro_amount => 20000000},
      :spend_target => {:micro_amount => 40000000}
    }
  }
  return_strategy = bidding_srv.mutate([
    {:operator => 'ADD', :operand => shared_bidding_strategy}])

  bidding_strategy = return_strategy[:value].first
  puts ("Shared bidding strategy with name '%s' and ID %d of type '%s' was " +
      'created') %
      [bidding_strategy[:name], bidding_strategy[:id], bidding_strategy[:type]]

  # Create campaigns.
  campaigns = [
    {
      :name => "Interplanetary Cruise #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :bidding_strategy_configuration => {
        :bidding_strategy_id => bidding_strategy[:id]
      },
      # Budget (required) - note only the budget ID is required.
      :budget => {:budget_id => budget_id},
      :advertising_channel_type => 'SEARCH',
      :network_setting => {
        :target_google_search => true,
        :target_search_network => true,
        :target_content_network => true
      }
    },
    {
      :name => "Interplanetary Cruise banner #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :bidding_strategy_configuration => {
        :bidding_strategy_id => bidding_strategy[:id]
      },
      :budget => {:budget_id => budget_id},
      :advertising_channel_type => 'DISPLAY',
      :network_setting => {
        :target_google_search => false,
        :target_search_network => false,
        :target_content_network => true
      }
    }
  ]

  # Prepare for adding campaign.
  operations = campaigns.map do |campaign|
    {:operator => 'ADD', :operand => campaign}
  end

  # Add campaign.
  response = campaign_srv.mutate(operations)
  if response and response[:value]
    response[:value].each do |campaign|
      puts "Campaign with name '%s' and ID %d was added." %
          [campaign[:name], campaign[:id]]
    end
  else
    raise new StandardError, 'No campaigns were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    use_shared_bidding_strategy()

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
