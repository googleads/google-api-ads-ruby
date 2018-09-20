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
# This code example adds a page feed to specify precisely which URLs to use with
# your Dynamic Search Ads campaign. To use a Dynamic Search Ads campaign, run
# add_dynamic_search_ads_campaign.rb. To get campaigns, run get_campaigns.rb.

require 'adwords_api'

def add_dynamic_page_feed(campaign_id, ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  dsa_page_url_label = "discounts"

  # Get the page feed details. This code example creates a new feed, but you can
  # fetch and re-use an existing feed.
  feed_details = create_feed(adwords)
  create_feed_mapping(adwords, feed_details)
  create_feed_items(adwords, feed_details, dsa_page_url_label)

  # Associate the page feed with the campaign.
  update_campaign_dsa_setting(adwords, campaign_id, feed_details)

  # Optional: Target web pages matching the feed's label in the ad group.
  add_dsa_targeting(adwords, ad_group_id, dsa_page_url_label)

  puts "Dynamic page feed setup is complete for campaign ID %d." % campaign_id
end

def create_feed(adwords)
  feed_srv = adwords.service(:FeedService, API_VERSION)

  url_attribute = {
    :type => 'URL_LIST',
    :name => 'Page URL'
  }

  label_attribute = {
    :type => 'STRING_LIST',
    :name => 'Label'
  }

  dsa_page_feed = {
    :name => 'DSA Feed #%s' % (Time.now.to_f * 1000).to_i,
    :attributes => [url_attribute, label_attribute],
    :origin => 'USER'
  }

  operation = {
    :operand => dsa_page_feed,
    :operator => 'ADD'
  }

  new_feed = feed_srv.mutate([operation])[:value].first

  feed_details = {
    :feed_id => new_feed[:id],
    :url_attribute_id => new_feed[:attributes][0][:id],
    :label_attribute_id => new_feed[:attributes][1][:id]
  }
  puts ("Feed with name '%s' and ID %d with urlAttributeId %d and " +
      "labelAttributeId %d was created.") % [
        new_feed[:name],
        feed_details[:feed_id],
        feed_details[:url_attribute_id],
        feed_details[:label_attribute_id]
      ]

  return feed_details
end

def create_feed_mapping(adwords, feed_details)
  feed_mapping_srv = adwords.service(:FeedMappingService, API_VERSION)

  url_field_mapping = {
    :feed_attribute_id => feed_details[:url_attribute_id],
    :field_id => DSA_PAGE_URLS_FIELD_ID
  }

  label_field_mapping = {
    :feed_attribute_id => feed_details[:label_attribute_id],
    :field_id => DSA_LABEL_FIELD_ID
  }

  feed_mapping = {
    :criterion_type => DSA_PAGE_FEED_CRITERION_TYPE,
    :feed_id => feed_details[:feed_id],
    :attribute_field_mappings => [url_field_mapping, label_field_mapping]
  }

  operation = {
    :operand => feed_mapping,
    :operator => 'ADD'
  }

  new_feed_mapping = feed_mapping_srv.mutate([operation])[:value].first
  puts ("Feed mapping with ID %d and criterionType %d was saved for feed " +
      "with ID %d.") % [
        new_feed_mapping[:feed_mapping_id],
        new_feed_mapping[:criterion_type],
        new_feed_mapping[:feed_id]
      ]
end

def create_feed_items(adwords, feed_details, label_name)
  feed_item_srv = adwords.service(:FeedItemService, API_VERSION)

  operations = [
    create_dsa_url_add_operation(
      feed_details,
      'http://www.example.com/discounts/rental-cars',
      label_name
    ),
    create_dsa_url_add_operation(
      feed_details,
      'http://www.example.com/discounts/hotel-deals',
      label_name
    ),
    create_dsa_url_add_operation(
      feed_details,
      'http://www.example.com/discounts/flight-deals',
      label_name
    )
  ]

  result = feed_item_srv.mutate(operations)
  result[:value].each do |item|
    puts "Feed item with feed item ID %d was added." % item[:feed_item_id]
  end
end

def create_dsa_url_add_operation(feed_details, url, label_name)
  # Optional: Add the {feeditem} valuetrack parameter to track which page
  # feed items lead to each click.
  url = url + '?id={feeditem}'

  url_attribute_value = {
    :feed_attribute_id => feed_details[:url_attribute_id],
    # See https://support.google.com/adwords/answer/7166527 for page feed URL
    # recommendations and rules.
    :string_values => [url]
  }

  label_attribute_value = {
    :feed_attribute_id => feed_details[:label_attribute_id],
    :string_values => [label_name]
  }

  feed_item = {
    :feed_id => feed_details[:feed_id],
    :attribute_values => [url_attribute_value, label_attribute_value]
  }

  operation = {
    :operand => feed_item,
    :operator => 'ADD'
  }

  return operation
end

def update_campaign_dsa_setting(adwords, campaign_id, feed_details)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  selector = {
    :fields => ['Id', 'Settings'],
    :predicates => [
      {:field => 'CampaignId', :operator => 'IN', :values => [campaign_id]}
    ]
  }

  campaign_page = campaign_srv.get(selector)
  if campaign_page.nil? or campaign_page[:entries].nil? or
      campaign_page[:total_num_entries] == 0
    raise 'No campaign found with ID: %d' % campaign_id
  end

  campaign = campaign_page[:entries].first

  if campaign[:settings].nil?
    raise 'Campaign with ID %d is not a DSA campaign.' % campaign_id
  end

  dsa_setting = nil
  campaign[:settings].each do |setting|
    if setting[:setting_type] == 'DynamicSearchAdsSetting'
      dsa_setting = setting
      break
    end
  end

  if dsa_setting.nil?
    raise 'Campaign with ID %d is not a DSA campaign.' % campaign_id
  end

  # Use a page feed to specify precisely which URLs to use with your Dynamic
  # Search Ads.
  page_feed = {
    :feed_ids => [feed_details[:feed_id]]
  }
  dsa_setting[:page_feed] = page_feed

  # Optional: Specify whether only the supplied URLs should be used with your
  # Dynamic Search Ads.
  dsa_setting[:use_supplied_urls_only] = true

  updated_campaign = {
    :id => campaign_id,
    :settings => campaign[:settings]
  }

  operation = {
    :operand => updated_campaign,
    :operator => 'SET'
  }

  updated_campaign = campaign_srv.mutate([operation])[:value].first
  puts "DSA page feed for campaign ID %d was updated with feed ID %d." % [
    updated_campaign[:id], feed_details[:feed_id]
  ]
end

def add_dsa_targeting(adwords, ad_group_id, dsa_page_url_label)
  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  webpage = {
    :xsi_type => 'Webpage',
    :parameter => {
      :criterion_name => 'Test criterion',
      :conditions => [{
        :operand => 'CUSTOM_LABEL',
        :argument => dsa_page_url_label
      }]
    }
  }

  bidding_strategy_configuration = {
    :bids => [{
      :xsi_type => 'CpcBid',
      :bid => {
        :micro_amount => 1_500_000
      }
    }]
  }

  criterion = {
    :xsi_type => 'BiddableAdGroupCriterion',
    :ad_group_id => ad_group_id,
    :criterion => webpage,
    :bidding_strategy_configuration => bidding_strategy_configuration
  }

  operation = {
    :operand => criterion,
    :operator => 'ADD'
  }

  new_criterion = ad_group_criterion_srv.mutate([operation])[:value].first
  puts "Web page criterion with ID %d and status '%s' was created." %
      [new_criterion[:criterion][:id], new_criterion[:user_status]]
end

if __FILE__ == $0
  API_VERSION = :v201809

  # The criterion type to be used for DSA page feeds. DSA page feeds use
  # criterionType field instead of the placeholderType field unlike most other
  # feed types.
  DSA_PAGE_FEED_CRITERION_TYPE = 61

  # ID that corresponds to the page URLs.
  DSA_PAGE_URLS_FIELD_ID = 1

  # ID that corresponds to the labels.
  DSA_LABEL_FIELD_ID = 2

  begin
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

    add_dynamic_page_feed(campaign_id, ad_group_id)

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
