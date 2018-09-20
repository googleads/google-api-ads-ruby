#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example adds a Shopping campaign for Showcase ads.

require 'adwords_api'
require 'date'
require 'base64'

def add_shopping_campaign_for_showcase_ads(budget_id, merchant_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign = create_campaign(adwords, budget_id, merchant_id)
  puts "Campaign with name '%s' and ID %d was added." %
      [campaign[:name], campaign[:id]]

  ad_group = create_ad_group(adwords, campaign)
  puts "Ad group with name '%s' and ID %d was added." %
      [ad_group[:name], ad_group[:id]]

  ad_group_ad = create_showcase_ad(adwords, ad_group)
  puts "Showcase ad with ID %d was added." % ad_group_ad[:ad][:id]

  ad_group_criterion = create_product_partitions(adwords, ad_group[:id])
  puts "Product partition tree with %d nodes was added." %
      ad_group_criterion.length
end

def create_campaign(adwords, budget_id, merchant_id)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  campaign = {
    :name => 'Shopping campaign #%d' % (Time.new.to_f * 1000).to_i,
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
  campaign = result[:value].first
  return campaign
end

def create_ad_group(adwords, campaign)
  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  ad_group = {
    :campaign_id => campaign[:id],
    :name => 'Ad Group #%d' % (Time.new.to_f * 1000).to_i,
    # Required: Set the ad group type to SHOPPING_SHOWCASE_ADS.
    :ad_group_type => 'SHOPPING_SHOWCASE_ADS',
    # Required: Set the ad group's bidding strategy configuration.
    # Note: Showcase ads require that the campaign has a ManualCpc
    # BiddingStrategyConfiguration.
    :bidding_strategy_configuration => {
      :bids => [
        :xsi_type => 'CpcBid',
        :bid => {:micro_amount => 1000000}
      ]
    }
  }

  ad_group_operation = {:operator => 'ADD', :operand => ad_group}

  # Make the mutate request.
  result = ad_group_srv.mutate([ad_group_operation])
  ad_group = result[:value].first
  return ad_group
end

def create_showcase_ad(adwords, ad_group)
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  ad_group_ad = {
    :ad_group_id => ad_group[:id],
    :ad => {
      :xsi_type => 'ShowcaseAd',
      :name => 'Showcase ad #%d' % (Time.new.to_f * 1000).to_i,
      :final_urls => ['http://example.com/showcase'],
      :display_url => 'example.com',
      # Required: Set the ad's expanded image.
      :expanded_image => {
        :media_id => upload_image(adwords, 'https://goo.gl/IfVlpF')
      },
      # Optional: Set the collapsed image.
      :collapsed_image => {
        :media_id => upload_image(adwords, 'https://goo.gl/NqTxAE')
      }
    }
  }

  ad_group_operation = {:operator => 'ADD', :operand => ad_group_ad}

  # Make the mutate request.
  result = ad_group_ad_srv.mutate([ad_group_operation])
  ad_group_ad = result[:value].first
  return ad_group_ad
end

def upload_image(adwords, image_url)
  media_srv = adwords.service(:MediaService, API_VERSION)

  raw_image_data = AdsCommon::Http.get(image_url, adwords.config)
  image = {
    :xsi_type => 'Image',
    :data => Base64.encode64(raw_image_data),
    :type => 'IMAGE'
  }

  # Upload the image.
  response = media_srv.upload([image])
  image = response.first
  return image[:media_id]
end

def create_product_partitions(adwords, ad_group_id)
  ad_group_criterion_srv = adwords.service(:AdGroupCriterionService,
      API_VERSION)

  helper = ProductPartitionHelper.new(ad_group_id)

  root = helper.create_subdivision()

  new_product_canonical_condition = {
    :xsi_type => 'ProductCanonicalCondition',
    :condition => 'NEW'
  }

  used_product_canonical_condition = {
    :xsi_type => 'ProductCanonicalCondition',
    :condition => 'USED'
  }

  other_product_canonical_condition = {
    :xsi_type => 'ProductCanonicalCondition'
  }

  helper.create_unit(root, new_product_canonical_condition)
  helper.create_unit(root, used_product_canonical_condition)
  helper.create_unit(root, other_product_canonical_condition)

  result = ad_group_criterion_srv.mutate(helper.operations)
  ad_group_criterion = result[:value]
  return ad_group_criterion
end

class ProductPartitionHelper
  attr_reader :operations

  def initialize(ad_group_id)
    # The next temporary criterion ID to be used.
    #
    # When creating our tree we need to specify the parent-child relationships
    # between nodes. However, until a criterion has been created on the server
    # we do not have a criterionId with which to refer to it.
    #
    # Instead we can specify temporary IDs that are specific to a single mutate
    # request. Once the criteria have been created they are assigned an ID as
    # normal and the temporary ID will no longer refer to it.
    #
    # A valid temporary ID is any negative integer.
    @next_id = -1

    # The set of mutate operations needed to create the current tree.
    @operations = []

    # The ID of the AdGroup that we wish to attach the partition tree to.
    @ad_group_id = ad_group_id
  end

  def create_subdivision(parent = nil, value = nil)
    division = {
      :xsi_type => 'ProductPartition',
      :partition_type => 'SUBDIVISION',
      :id => @next_id
    }

    @next_id -= 1

    unless parent.nil? || value.nil?
      division[:parent_criterion_id] = parent[:id]
      division[:case_value] = value
    end

    ad_group_criterion = {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => @ad_group_id,
      :criterion => division
    }

    create_add_operation(ad_group_criterion)

    return division
  end

  def create_unit(parent = nil, value = nil, bid_amount = nil)
    unit = {
      :xsi_type => 'ProductPartition',
      :partition_type => 'UNIT'
    }

    unless parent.nil? || value.nil?
      unit[:parent_criterion_id] = parent[:id]
      unit[:case_value] = value
    end

    ad_group_criterion = {}
    if bid_amount && bid_amount > 0
      bidding_strategy_configuration = {
        :bids => [{
          :xsi_type => 'CpcBid',
          :bid => {
            :xsi_type => 'Money',
            :micro_amount => bid_amount
          }
        }]
      }
      ad_group_criterion[:xsi_type] = 'BiddableAdGroupCriterion'
      ad_group_criterion[:bidding_strategy_configuration] =
          bidding_strategy_configuration
    else
      ad_group_criterion[:xsi_type] = 'NegativeAdGroupCriterion'
    end
    ad_group_criterion[:ad_group_id] = @ad_group_id
    ad_group_criterion[:criterion] = unit

    create_add_operation(ad_group_criterion)

    return unit
  end

  private

  def create_add_operation(ad_group_criterion)
    operation = {
      :operator => 'ADD',
      :operand => ad_group_criterion
    }

    @operations << operation
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    budget_id = 'INSERT_BUDGET_ID_HERE'.to_i
    merchant_id = 'INSERT_MERCHANT_ID_HERE'.to_i

    add_shopping_campaign_for_showcase_ads(budget_id, merchant_id)

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
