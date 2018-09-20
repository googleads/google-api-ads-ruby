#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example adds a universal app campaign.
#
# To get campaigns, run get_campaigns.rb. To upload image assets for this
# campaign, run upload_image.rb.

require 'adwords_api'
require 'date'

def add_universal_app_campaigns()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)
  budget_srv = adwords.service(:BudgetService, API_VERSION)

  # Create a budget.
  budget = {
    :name => 'Interplanetary budget #%d' % (Time.new.to_f * 1000).to_i,
    :amount => {:micro_amount => 50000000},
    :delivery_method => 'STANDARD',
    # Universal app campaigns don't support shared budgets.
    :is_explicitly_shared => false
  }
  budget_operation = {:operator => 'ADD', :operand => budget}

  # Add the budget.
  return_budget = budget_srv.mutate([budget_operation])
  budget_id = return_budget[:value].first[:budget_id]

  # Create campaigns.
  universal_app_campaign = {
    :name => "Interplanetary Cruise #%d" % (Time.new.to_f * 1000).to_i,
    # Recommendation: Set the campaign to PAUSED when creating it to stop the
    # ads from immediately serving. Set it to ENABLED once you've added
    # targeting and the ads are ready to serve.
    :status => 'PAUSED',
    # Set the advertising channel and subchannel types for universal app
    # campaigns.
    :advertising_channel_type => 'MULTI_CHANNEL',
    :advertising_channel_sub_type => 'UNIVERSAL_APP_CAMPAIGN',
    # Set the campaign's bidding strategy. Universal app campaigns only support
    # the TARGET_CPA bidding strategy.
    :bidding_strategy_configuration => {
      :bidding_scheme => {
        :xsi_type => 'TargetCpaBiddingScheme',
        :target_cpa => {
          :micro_amount => 1000000
        }
      }
    },
    # Budget (required) - note only the budget ID is required.
    :budget => {:budget_id => budget_id},
    # Optional fields:
    :start_date =>
        DateTime.parse((Date.today + 1).to_s).strftime('%Y%m%d'),
    :end_date =>
        DateTime.parse((Date.today + 365).to_s).strftime('%Y%m%d')
  }

  universal_app_setting = {
    # Set the campaign's assets and ad text ideas. These values will be used to
    # generate ads.
    :xsi_type => 'UniversalAppCampaignSetting',
    :app_id => 'com.labpixies.colordrips',
    :app_vendor => 'VENDOR_GOOGLE_MARKET',
    :description1 => 'A cool puzzle game',
    :description2 => 'Remove connected blocks',
    :description3 => '3 difficulty levels',
    :description4 => '4 colorful fun skins'
    # Optional: You can set up to 20 image assets for your campaign. See
    # upload_image.rb for an example on how to upload images.
    #
    # :image_media_ids => [INSERT_IMGAGE_MEDIA_ID(s)_HERE]
  }

  # Optimize this campaign for getting new users for your app.
  universal_app_setting[:universal_app_bidding_strategy_goal_type] =
      'OPTIMIZE_FOR_INSTALL_CONVERSION_VOLUME'

  # Optional: If you select OPTIMIZE_FOR_IN_APP_CONVERSION_VOLUME goal type,
  # then also specify your in-app conversion types so AdWords can focus your
  # campaign on people who are most likely to complete the corresponding in-app
  # actions.
  # Conversion type IDs can be retrieved using ConversionTrackerService.get.
  #
  # universal_app_campaign[:selective_optimization] = {
  #   :conversion_type_ids => [INSERT_CONVERSION_TYPE_ID(s)_HERE]
  # }

  # Optional: Set the campaign settings for Advanced location options.
  geo_setting = {
    :xsi_type => 'GeoTargetTypeSetting',
    :positive_geo_target_type => 'DONT_CARE',
    :negative_geo_target_type => 'DONT_CARE'
  }

  universal_app_campaign[:settings] = [
    universal_app_setting,
    geo_setting
  ]

  # Construct the operation and add the campaign.
  operations = [{
    :operator => 'ADD',
    :operand => universal_app_campaign
  }]

  campaigns = campaign_srv.mutate(operations)[:value]

  if campaigns
    campaigns.each do |campaign|
      puts "Universal app campaign with name '%s' and ID %d was added." %
          [campaign[:name], campaign[:id]]
      set_campaign_targeting_criteria(adwords, campaign)
    end
  else
    raise new StandardError, 'No universal app campaigns were added.'
  end
end

def set_campaign_targeting_criteria(adwords, campaign)
  campaign_criterion_service =
      adwords.service(:CampaignCriterionService, API_VERSION)

  criteria = [
    {
      :xsi_type => 'Location',
      :id => 21137 # California
    },
    {
      :xsi_type => 'Location',
      :id => 2484 # Mexico
    },
    {
      :xsi_type => 'Language',
      :id => 1000 # English
    },
    {
      :xsi_type => 'Language',
      :id => 1003 # Spanish
    }
  ]

  operations = criteria.map do |criterion|
    {
      :operator => 'ADD',
      :operand => {
        :campaign_id => campaign[:id],
        :criterion => criterion
      }
    }
  end

  response = campaign_criterion_service.mutate(operations)

  if response and response[:value]
    # Display the added campaign targets.
    response[:value].each do |criterion|
      puts 'Campaign criteria of type "%s" and id %d was added.' % [
          criterion[:criterion][:criterion_type],
          criterion[:criterion][:id]
      ]
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    add_universal_app_campaigns()

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
