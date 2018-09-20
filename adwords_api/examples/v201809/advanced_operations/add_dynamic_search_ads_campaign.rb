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
# This code example adds a Dynamic Search Ads campaign. To get campaigns, run
# get_campaigns.rb.

require 'date'

require 'adwords_api'

def add_dynamic_search_ads_campaign()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  budget = create_budget(adwords)

  campaign = create_campaign(adwords, budget)
  ad_group = create_ad_group(adwords, campaign)
  create_expanded_dsa(adwords, ad_group)
  add_web_page_criteria(adwords, ad_group)
end

def create_budget(adwords)
  budget_srv = adwords.service(:BudgetService, API_VERSION)

  shared_budget = {
    :name => "Interplanetary Cruise #%d" % (Time.now.to_f * 1000).to_i,
    :amount => {
      :micro_amount => 50_000_000
    },
    :delivery_method => 'STANDARD'
  }

  budget_operation = {
    :operand => shared_budget,
    :operator => 'ADD'
  }

  budget = budget_srv.mutate([budget_operation])[:value].first

  return budget
end

def create_campaign(adwords, budget)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  campaign = {
    :name => "Interplanetary Cruise #%d" % (Time.now.to_f * 1000).to_i,
    :advertising_channel_type => 'SEARCH',
    # Recommendation: Set the campaign to PAUSED when creating it to prevent the
    # ads from immediately serving. Set to ENABLED once you've added targeting
    # and the ads are ready to serve.
    :status => 'PAUSED',
    :bidding_strategy_configuration => {
      :bidding_strategy_type => 'MANUAL_CPC'
    },
    # Only the budgetId should be sent; all other fields will be ignored by
    # CampaignService.
    :budget => {
      :budget_id => budget[:budget_id]
    },
    :settings => [
      :xsi_type => 'DynamicSearchAdsSetting',
      :domain_name => 'example.com',
      :language_code => 'en'
    ],
    # Optional: Set the start and end dates.
    :start_date => DateTime.parse((Date.today + 1).to_s).strftime('%Y%m%d'),
    :end_date => DateTime.parse(Date.today.next_year.to_s).strftime('%Y%m%d')
  }

  operation = {
    :operand => campaign,
    :operator => 'ADD'
  }

  new_campaign = campaign_srv.mutate([operation])[:value].first
  puts "Campaign with name '%s' and ID %d was added." %
      [new_campaign[:name], new_campaign[:id]]

  return new_campaign
end

def create_ad_group(adwords, campaign)
  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  ad_group = {
    # Required: Set the ad group's tpe to Dynamic Search Ads.
    :ad_group_type => 'SEARCH_DYNAMIC_ADS',
    :name => "Earth to Mars Cruises #%d" % (Time.now.to_f * 1000).to_i,
    :campaign_id => campaign[:id],
    :status => 'PAUSED',
    # Recommended: Set a tracking URL template for your ad group if you want to
    # use URL tracking software.
    :tracking_url_template =>
        'http://tracker.example.com/traveltracker/{escapedlpurl}',
    :bidding_strategy_configuration => {
      :bids => [{
        :xsi_type => 'CpcBid',
        :bid => {
          :micro_amount => 3_000_000
        }
      }]
    }
  }

  operation = {
    :operand => ad_group,
    :operator => 'ADD'
  }

  new_ad_group = ad_group_srv.mutate([operation])[:value].first
  puts "Ad group with name '%s' and ID %d was added." %
      [new_ad_group[:name], new_ad_group[:id]]

  return new_ad_group
end

def create_expanded_dsa(adwords, ad_group)
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create the expanded Dynamic Search Ad. This ad will have its headline and
  # final URL auto-generated at serving time according to domain name specific
  # information provided by DynamicSearchAdsSetting at the campaign level.
  expanded_dsa = {
    :xsi_type => 'ExpandedDynamicSearchAd',
    :description => 'Buy your tickets now!',
    :description2 => 'Discount ends soon'
  }

  ad_group_ad = {
    :ad_group_id => ad_group[:id],
    :ad => expanded_dsa,
    # Optional: Set the status.
    :status => 'PAUSED'
  }

  operation = {
    :operand => ad_group_ad,
    :operator => 'ADD'
  }

  new_ad_group_ad = ad_group_ad_srv.mutate([operation])[:value].first
  new_expanded_dsa = new_ad_group_ad[:ad]
  puts ("Expanded Dynamic Search Ad with ID %d, description '%s', and " +
      "description 2 '%s' was added.") % [new_expanded_dsa[:id],
      new_expanded_dsa[:description], new_expanded_dsa[:description2]]
end

def add_web_page_criteria(adwords, ad_group)
  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  webpage = {
    :xsi_type => 'Webpage',
    :parameter => {
      :criterion_name => 'Special offers',
      :conditions => [
        {
          :operand => 'URL',
          :argument => '/specialoffers'
        },
        {
          :operand => 'PAGE_TITLE',
          :argument => 'Special Offer'
        }
      ]
    }
  }

  biddable_ad_group_criterion = {
    :xsi_type => 'BiddableAdGroupCriterion',
    :ad_group_id => ad_group[:id],
    :criterion => webpage,
    :user_status => 'PAUSED',
    # Optional: set a custom bid.
    :bidding_strategy_configuration => {
      :bids => [{
        :xsi_type => 'CpcBid',
        :bid => {
          :micro_amount => 10_000_000
        }
      }]
    }
  }

  operation = {
    :operand => biddable_ad_group_criterion,
    :operator => 'ADD'
  }

  new_ad_group_criterion =
      ad_group_criterion_srv.mutate([operation])[:value].first
  puts "Webpage criterion with ID %d was added to ad group ID %d." % [
    new_ad_group_criterion[:criterion][:id],
    new_ad_group_criterion[:ad_group_id]
  ]
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    add_dynamic_search_ads_campaign()

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
