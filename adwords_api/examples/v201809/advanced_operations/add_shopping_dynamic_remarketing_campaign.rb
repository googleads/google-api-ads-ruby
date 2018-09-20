#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
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
# This example adds a Shopping dynamic remarketing campaign for the Display
# Network via the following steps:
# * Creates a new Display Network campaign.
# * Links the campaign with Merchant Center.
# * Links the user list to the ad group.
# * Creates a responsive display ad to render the dynamic text.

require 'adwords_api'

def add_shopping_dynamic_remarketing_campaign(merchant_id, budget_id,
    user_list_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign = create_campaign(adwords, merchant_id, budget_id)
  puts "Campaign with name '%s' and ID %d was added." %
      [campaign[:name], campaign[:id]]

  ad_group = create_ad_group(adwords, campaign)
  puts "Ad group with name '%s' and ID :%d was added." %
      [ad_group[:name], ad_group[:id]]

  ad_group_ad = create_ad(adwords, ad_group)
  puts "Responsive display ad with ID %d was added." % ad_group_ad[:ad][:id]

  attach_user_list(adwords, ad_group, user_list_id)
  puts "User list with ID %d was attached to ad group with ID %d." %
      [user_list_id, ad_group[:id]]
end

def create_campaign(adwords, merchant_id, budget_id)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  campaign = {
    :name => 'Shopping campaign #%d' % (Time.new.to_f * 1000).to_i,
    # Dynamic remarketing campaigns are only available on the Google Display
    # Network
    :advertising_channel_type => 'DISPLAY',
    :status => 'PAUSED',
    :budget => {
      :budget_id => budget_id
    },
    # This example uses a Manual CPC bidding strategy, but you should select the
    # strategy that best aligns with your sales goals. More details here:
    # https://support.google.com/adwords/answer/2472725
    :bidding_strategy_configuration => {
      :bidding_strategy_type => 'MANUAL_CPC'
    },
    :settings => [{
      :xsi_type => 'ShoppingSetting',
      # Campaigns with numerically higher priorities take precedence over those
      # with lower priorities.
      :campaign_priority => 0,
      # Set the Merchant Center account ID from which to source products.
      :merchant_id => merchant_id,
      # Display Network campaigns do not support partition by country. The only
      # supported value is "ZZ". This signals that products from all countries
      # are available in the campaign. The actual products which serve are based
      # on the products tagged in the user list entry.
      :sales_country => 'ZZ',
      # Optional: Enable local inventory ads (items for sale in physical
      # stores.)
      :enable_local => true
    }]
  }

  operation = {
    :operator => 'ADD',
    :operand => campaign
  }

  result = campaign_srv.mutate([operation])
  return result[:value].first
end

def create_ad_group(adwords, campaign)
  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  ad_group = {
    :name => 'Dynamic remarketing ad group',
    :campaign_id => campaign[:id],
    :status => 'ENABLED'
  }

  operation = {
    :operator => 'ADD',
    :operand => ad_group
  }

  result = ad_group_srv.mutate([operation])
  return result[:value].first
end

def create_ad(adwords, ad_group)
  ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  optional_media_id = upload_image(adwords, 'https://goo.gl/mtt54n')

  ad = {
    :xsi_type => 'ResponsiveDisplayAd',
    # This ad format does not allow the creation of an image using the
    # Image.data field. An image must first be created using the MediaService,
    # and Image.mediaId must be populated when creating the ad.
    :marketing_image => {
      :xsi_type => 'Image',
      :media_id => upload_image(adwords, 'https://goo.gl/3b9Wfh')
    },
    :short_headline => 'Travel',
    :long_headline => 'Travel the World',
    :description => 'Take to the air!',
    :business_name => 'Interplanetary Cruises',
    :final_urls => ['http://www.example.com'],
    # Optional: Call to action text.
    # Valid texts: https://support.google.com/adwords/answer/7005917
    :call_to_action_text => 'Apply Now',
    # Optional: Set dynamic display ad settings, composed of landscape logo
    # image, promotion text, and price prefix.
    :dynamic_display_ad_settings => create_dynamic_display_ad_settings(adwords),
    # Optional: Create a logo image and set it to the ad.
    :logo_image => {
      :xsi_type => 'Image',
      :media_id => optional_media_id
    },
    # Optional: Create a square marketing image and set it to the ad.
    :square_marketing_image => {
      :xsi_type => 'Image',
      :media_id => optional_media_id
    },
    # Whitelisted accounts only: Set color settings using hexadecimal values.
    # Set allowFlexibleColor to false if you want your ads to render by always
    # using your colors strictly.
    # :main_color => '#0000ff',
    # :accent_color => '#ffff00',
    # :allow_flexible_color => false,
    # Whitelisted accounts only: Set the format setting that the ad will be
    # served in.
    # :format_setting => 'NON_NATIVE'
  }

  ad_group_ad = {
    :ad => ad,
    :ad_group_id => ad_group[:id]
  }

  operation = {
    :operator => 'ADD',
    :operand => ad_group_ad
  }

  result = ad_srv.mutate([operation])
  return result[:value].first
end

def attach_user_list(adwords, ad_group, user_list_id)
  ad_group_criterion_srv = adwords.service(:AdGroupCriterionService,
      API_VERSION)

  user_list = {
    :xsi_type => 'CriterionUserList',
    :user_list_id => user_list_id
  }

  ad_group_criterion = {
    :xsi_type => 'BiddableAdGroupCriterion',
    :criterion => user_list,
    :ad_group_id => ad_group[:id]
  }

  operation = {
    :operator => 'ADD',
    :operand => ad_group_criterion
  }

  result = ad_group_criterion_srv.mutate([operation])
end

def upload_image(adwords, url)
  media_srv = adwords.service(:MediaService, API_VERSION)

  image_data = AdsCommon::Http.get(url, adwords.config)
  base64_image_data = Base64.encode64(image_data)

  image = {
    :xsi_type => 'Image',
    :data => base64_image_data,
    :type => 'IMAGE'
  }

  response = media_srv.upload([image])
  return response.first[:media_id]
end

def create_dynamic_display_ad_settings(adwords)
  logo = {
    :xsi_type => 'Image',
    :media_id => upload_image(adwords, 'https://goo.gl/dEvQeF')
  }

  dynamic_settings = {
    :landscape_logo_image => logo,
    :price_prefix => 'as low as',
    :promo_text => 'Free shipping!'
  }

  return dynamic_settings
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    merchant_id = 'INSERT_MERCHANT_CENTER_ID_HERE'.to_i
    budget_id = 'INSERT_BUDGET_ID_HERE'.to_i
    user_list_id = 'INSERT_USER_LIST_ID_HERE'.to_i

    add_shopping_dynamic_remarketing_campaign(merchant_id, budget_id,
        user_list_id)

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
