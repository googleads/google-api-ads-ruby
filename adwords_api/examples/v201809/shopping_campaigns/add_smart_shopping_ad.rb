#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2018 Google LLC
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
# This example adds a Smart Shopping campaign with an ad group and ad group ad.

require 'adwords_api'
require 'date'

def add_smart_shopping_campaign(merchant_id, make_default_partition)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  budget_id = create_budget(adwords)
  campaign_id = create_smart_campaign(adwords, budget_id, merchant_id)
  ad_group_id = create_smart_shopping_ad_group(adwords, campaign_id)
  create_smart_shopping_ad(adwords, ad_group_id)

  create_default_partition(adwords, ad_group_id) if make_default_partition
end

def create_budget(adwords)
  budget_srv = adwords.service(:BudgetService, API_VERSION)

  budget = {
    :name => "Interplanetary budget #%d" % (Time.new.to_f * 1000).to_i,
    :amount => {
      :micro_amount => 50_000_000
    },
    :delivery_method => 'STANDARD',
    # Non-shared budgets are required for Smart Shopping campaigns.
    :is_explicitly_shared => false
  }

  budget_operations = [{
    :operator => 'ADD',
    :operand => budget
  }]

  return budget_srv.mutate(budget_operations)[:value].first[:budget_id]
end

def create_smart_campaign(adwords, budget_id, merchant_id)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  campaign = {
    :name => "Smart Shopping campaign #%d" % (Time.new.to_f * 1000).to_i,
    # The advertisingChannelType is what makes this a Shopping campaign.
    :advertising_channel_type => 'SHOPPING',
    # Sets the advertisingChannelSubType to SHOPPING_GOAL_OPTIMIZED_ADS to
    # make this a Smart Shopping campaign.
    :advertising_channel_sub_type => 'SHOPPING_GOAL_OPTIMIZED_ADS',
    # Recommendation: Set the campaign to PAUSED when creating it to stop the
    # ads from immediately serving. Set to ENABLED once you've added targeting
    # and the ads are ready to serve.
    :status => 'PAUSED',
    # Set portfolio budget (required).
    :budget => {
      :budget_id => budget_id
    },
    # Set a bidding strategy. Only MAXIMIZE_CONVERSION_VALUE is supported.
    :bidding_strategy_configuration => {
      :bidding_strategy_type => 'MAXIMIZE_CONVERSION_VALUE'
    },
    # All Shopping campaigns need a ShoppingSetting.
    :settings => [{
      :xsi_type => 'ShoppingSetting',
      :sales_country => 'US',
      :merchant_id => merchant_id
    }]
  }

  campaign_operations = [{
    :operator => 'ADD',
    :operand => campaign
  }]

  result = campaign_srv.mutate(campaign_operations)[:value].first

  puts 'Smart Shopping campaign with name "%s" and ID %d was added.' %
      [result[:name], result[:id]]

  return result[:id]
end

def create_smart_shopping_ad_group(adwords, campaign_id)
  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  ad_group = {
    :campaign_id => campaign_id,
    :name => "Smart Shopping ad group #%d" % (Time.new.to_f * 1000).to_i,
    # Set the ad group type to SHOPPING_GOAL_OPTIMIZED_ADS
    :ad_group_type => 'SHOPPING_GOAL_OPTIMIZED_ADS'
  }

  ad_group_operations = [{
    :operator => 'ADD',
    :operand => ad_group
  }]

  result = ad_group_srv.mutate(ad_group_operations)[:value].first

  puts 'Smart Shopping ad group with name "%s" and ID %d was added.' %
      [result[:name], result[:id]]

  return result[:id]
end

def create_smart_shopping_ad(adwords, ad_group_id)
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  ad_group_ad = {
    :ad_group_id => ad_group_id,
    # Create a Smart Shopping ad (Goal-optimized Shopping ad).
    :ad => {
      :xsi_type => 'GoalOptimizedShoppingAd'
    }
  }

  ad_operations = [{
    :operator => 'ADD',
    :operand => ad_group_ad
  }]

  result = ad_group_ad_srv.mutate(ad_operations)[:value].first

  puts 'Smart Shopping ad with ID "%s" was added.' % result[:ad][:id]
end

def create_default_partition(adwords, ad_group_id)
  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  criterion = {
    :xsi_type => 'BiddableAdGroupCriterion',
    :ad_group_id => ad_group_id,
    # Make sure that the caseValue and parentCriterionId are left unspecified.
    # This makes this partition as generic as poissible to use as a fallback
    # when others don't match.
    :criterion => {
      :xsi_type => 'ProductPartition',
      :partition_type => 'UNIT'
    }
  }

  criterion_operations = [{
    :operator => 'ADD',
    :operand => criterion
  }]

  result = ad_group_criterion_srv.mutate(criterion_operations)[:value].first

  puts 'Ad group criterion with ID %" in ad group with ID %d was added.' %
      [result[:criterion][:id], result[:ad_group_id]]
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    merchant_id = 'INSTERT_MERCHANT_ID_HERE'.to_i

    # If set to true, a default partition will be created. If running the
    # add_product_partition_tree.rb example right after this example, make
    # sure this stays set to false.
    make_default_partition = false

    add_smart_shopping_campaign(merchant_id, make_default_partition)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

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
