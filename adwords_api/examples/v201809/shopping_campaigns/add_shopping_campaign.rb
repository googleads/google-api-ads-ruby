#!/usr/bin/env ruby
# Encoding: utf-8
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

require 'adwords_api'
require 'date'

def add_shopping_campaign(budget_id, merchant_id, create_default_partition)
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
    # Recommendation: Set the campaign to PAUSED when creating it to stop the
    # ads from immediately serving. Set to ENABLED once you've added
    # targeting and the ads are ready to serve.
    :status => 'PAUSED',
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

  if create_default_partition
    ad_group_criterion_srv =
        adwords.service(:AdGroupCriterionService, API_VERSION)

    product_partition = {
      :partition_type => 'UNIT',
      # Make sure that caseValue and parentCriterionId are nil. This
      # makes this partition as generic as possible to use as a fallback
      # when others don't match.
      :case_value => nil,
      :parent_criterion_id => nil
    }

    ad_group_criterion = {
      :ad_group_id => ad_group[:id],
      :criterion => product_partition,
      :bidding_strategy_configuration => {
        :bids => [{
          :xsi_type => 'CpcBid',
          :bid => {:micro_amount => 500_000}
        }]
      }
    }

    operation = {
      :operator => 'ADD',
      :operand => ad_group_criterion
    }

    result = ad_group_criterion_srv.mutate([operation])

    ad_group_criterion = result[:value].first
    puts "Ad group criterion with ID %d in ad group with ID %d was added." %
        [ad_group_criterion[:criterion][:id], ad_group_criterion[:ad_group_id]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    budget_id = 'INSERT_BUDGET_ID_HERE'.to_i
    merchant_id = 'INSERT_MERCHANT_ID_HERE'.to_i

    # If set to true, a default partition will be created. If running the
    # add_product_partition_tree.rb example right after this example, make
    # sure this stays set to false.
    create_default_partition = false

    add_shopping_campaign(budget_id, merchant_id)

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
