#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This example migrates your feed based sitelinks at campaign level to use
# extension settings. To learn more about extensionsettings, see
# https://developers.google.com/adwords/api/docs/guides/extension-settings.
# To learn more about migrating Feed based extensions to extension settings,
# see
# https://developers.google.com/adwords/api/docs/guides/migrate-to-extension-settings.
#
# Tags: FeedService.query, FeedMappingService.query, FeedItemService.query
# Tags: CampaignExtensionSettingService.mutate, CampaignFeedService.query
# Tags: CampaignFeedService.mutate

require 'adwords_api'
require 'set'

def migrate_to_extension_settings()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # Get all of the feeds for the current user.
  feeds = get_feeds(adwords)

  feeds.each do |feed|
    # Retrieve all the sitelinks from the current feed.
    feed_items = get_site_links_from_feed(adwords, feed)

    # Get all the instances where a sitelink from this feed has been added
    # to a campaign.
    campaign_feeds = get_campaign_feeds(adwords, feed, PLACEHOLDER_SITELINKS)

    all_feed_items_to_delete = campaign_feeds.map do |campaign_feed|
      # Retrieve the sitelinks that have been associated with this campaign.
      feed_item_ids = get_feed_item_ids_for_campaign(campaign_feed)

      if feed_item_ids.empty?
        puts(("Migration skipped for campaign feed with campaign ID %d " +
            "and feed ID %d because no mapped feed item IDs were found in " +
            "the campaign feed's matching function.") %
            [campaign_feed[:campaign_id], campaign_feed[:feed_id]])
        next
      end

      platform_restrictions = get_platform_restrictions(campaign_feed)

      # Delete the campaign feed that associates the sitelinks from the
      # feed to the campaign.
      delete_campaign_feed(adwords, campaign_feed)

      # Create extension settings instead of sitelinks.
      create_extension_setting(adwords, feed_items, campaign_feed,
          feed_item_ids, platform_restrictions)

      # Mark the sitelinks from the feed for deletion.
      feed_item_ids
    end.flatten.to_set.reject {|id| id.nil?}

    # Delete all the sitelinks from the feed.
    delete_old_feed_items(adwords, all_feed_items_to_delete, feed)
  end
end

def get_site_links_from_feed(adwords, feed)
  # Retrieve the feed's attribute mapping.
  feed_mappings = get_feed_mapping(adwords, feed, PLACEHOLDER_SITELINKS)

  feed_items = {}

  get_feed_items(adwords, feed).each do |feed_item|
    site_link_from_feed = {}

    feed_item[:attribute_values].each do |attribute_value|
      # Skip this attribute if it hasn't been mapped to a field.
      next unless feed_mappings.has_key?(
          attribute_value[:feed_attribute_id])

      feed_mappings[attribute_value[:feed_attribute_id]].each do |field_id|
        case field_id
        when PLACEHOLDER_FIELD_SITELINK_LINK_TEXT
          site_link_from_feed[:text] = attribute_value[:string_value]
        when PLACEHOLDER_FIELD_SITELINK_URL
          site_link_from_feed[:url] = attribute_value[:string_value]
        when PLACEHOLDER_FIELD_FINAL_URLS
          site_link_from_feed[:final_urls] = attribute_value[:string_values]
        when PLACEHOLDER_FIELD_FINAL_MOBILE_URLS
          site_link_from_feed[:final_mobile_urls] =
              attribute_value[:string_values]
        when PLACEHOLDER_FIELD_TRACKING_URL_TEMPLATE
          site_link_from_feed[:tracking_url_template] =
              attribute_value[:string_value]
        when PLACEHOLDER_FIELD_LINE_2_TEXT
          site_link_from_feed[:line2] = attribute_value[:string_value]
        when PLACEHOLDER_FIELD_LINE_3_TEXT
          site_link_from_feed[:line3] = attribute_value[:string_value]
        end
      end
    end
    site_link_from_feed[:scheduling] = feed_item[:scheduling]

    feed_items[feed_item[:feed_item_id]] = site_link_from_feed
  end
  return feed_items
end

def get_feed_mapping(adwords, feed, placeholder_type)
  feed_mapping_srv = adwords.service(:FeedMappingService, API_VERSION)
  query = ("SELECT FeedMappingId, AttributeFieldMappings " +
      "WHERE FeedId = %d AND PlaceholderType = %d AND Status = 'ENABLED'") %
      [feed[:id], placeholder_type]

  attribute_mappings = {}
  offset = 0

  begin
    page_query = (query + " LIMIT %d, %d") % [offset, PAGE_SIZE]
    page = feed_mapping_srv.query(page_query)

    unless page[:entries].nil?
      # Normally, a feed attribute is mapped only to one field. However, you
      # may map it to more than one field if needed.
      page[:entries].each do |feed_mapping|
        feed_mapping[:attribute_field_mappings].each do |attribute_mapping|
          # Since attribute_mappings can have multiple values for each key,
          # we set up an array to store the values.
          if attribute_mappings.has_key?(attribute_mapping[:feed_attribute_id])
            attribute_mappings[attribute_mapping[:feed_attribute_id]] <<
                attribute_mapping[:field_id]
          else
            attribute_mappings[attribute_mapping[:feed_attribute_id]] =
                [attribute_mapping[:field_id]]
          end
        end
      end
    end
    offset += PAGE_SIZE
  end while page[:total_num_entries] > offset

  return attribute_mappings
end

def get_feeds(adwords)
  feed_srv = adwords.service(:FeedService, API_VERSION)
  query = "SELECT Id, Name, Attributes " +
      "WHERE Origin = 'USER' AND FeedStatus = 'ENABLED'"

  feeds = []
  offset = 0

  begin
    page_query = (query + " LIMIT %d, %d") % [offset, PAGE_SIZE]
    page = feed_srv.query(page_query)

    unless page[:entries].nil?
      feeds += page[:entries]
    end
    offset += PAGE_SIZE
  end while page[:total_num_entries] > offset

  return feeds
end

def get_feed_items(adwords, feed)
  feed_item_srv = adwords.service(:FeedItemService, API_VERSION)
  query = ("SELECT FeedItemId, AttributeValues, Scheduling " +
      "WHERE Status = 'ENABLED' AND FeedId = %d") % feed[:id]

  feed_items = []
  offset = 0

  begin
    page_query = (query + " LIMIT %d, %d") % [offset, PAGE_SIZE]
    page = feed_item_srv.query(page_query)

    unless page[:entries].nil?
      feed_items += page[:entries]
    end
    offset += PAGE_SIZE
  end while page[:total_num_entries] > offset

  return feed_items
end

def get_platform_restrictions(campaign_feed)
  platform_restrictions = nil

  if campaign_feed[:matching_function][:operator] == 'AND'
    campaign_feed[:matching_function][:lhs_operand].each do |argument|
      # Check if matchingFunction is EQUALS(CONTEXT.DEVICE, 'Mobile')
      if argument[:value][:operator] == 'EQUALS'
        request_context_operand = argument[:value][:lhs_operand].first()
        if request_context_operand &&
            request_context_operand == 'DEVICE_PLATFORM'
          platform_restrictions =
              argument[:value][:rhs_operand].first().upcase()
          break
        end
      end
    end
  end
  return platform_restrictions
end

def delete_old_feed_items(adwords, feed_item_ids, feed)
  return if feed_item_ids.empty?

  feed_item_srv = adwords.service(:FeedItemService, API_VERSION)

  operations = feed_item_ids.map do |feed_item_id|
    {
      :operator => 'REMOVE',
      :operand => {
        :feed_id => feed[:id],
        :feed_item_id => feed_item_id
      }
    }
  end

  feed_item_srv.mutate(operations)
end

def create_extension_setting(
    adwords, feed_items, campaign_feed, feed_item_ids, platform_restrictions)
  campaign_extension_setting_srv = adwords.service(
      :CampaignExtensionSettingService, API_VERSION)

  extension_feed_items = feed_item_ids.map do |feed_item_id|
    site_link_from_feed = feed_items[:feed_item_id]
    site_link_feed_item = {
      :sitelink_text => site_link_from_feed[:text],
      :sitelink_line2 => site_link_from_feed[:line2],
      :sitelink_line3 => site_link_from_feed[:line3],
      :scheduling => site_link_from_feed[:scheduling]
    }
    if !site_link_from_feed.final_urls.nil? &&
        site_link_from_feed[:final_urls].length > 0
      site_link_feed_item[:sitelink_final_urls] = {
        :urls => site_link_from_feed[:final_urls]
      }
      unless site_link_from_feed[:final_mobile_urls].nil?
        site_link_feed_item[:sitelink_final_mobile_urls] = {
          :urls => site_link_from_feed[:final_mobile_urls]
        }
      end
      site_link_feed_item[:sitelink_tracking_url_template] =
          site_link_from_feed[:tracking_url_template]
    else
      site_link_feed_item[:sitelink_url] = site_link_from_feed[:url]
    end

    site_link_feed_item
  end

  extension_setting = {
    :extensions => extension_feed_items
  }

  unless platform_restrictions.nil?
    extension_setting[:platform_restrictions] = platform_restrictions
  end

  campaign_extension_setting = {
    :campaign_id => campaign_feed[:campaign_id],
    :extension_type => 'SITELINK',
    :extension_setting => extension_setting
  }

  operation = {
    :operand => campaign_extension_setting,
    :operator => 'ADD'
  }

  campaign_extension_setting_srv.mutate([operation])
end

def delete_campaign_feed(adwords, campaign_feed)
  campaign_feed_srv = adwords.service(:CampaignFeedService, API_VERSION)

  operation = {
    :operand => campaign_feed,
    :operator => 'REMOVE'
  }

  campaign_feed_srv.mutate([operation])
end

def get_feed_item_ids_for_campaign(campaign_feed)
  feed_item_ids = Set.new
  if !campaign_feed[:matching_function][:lhs_operand].empty? &&
      campaign_feed[:matching_function][:lhs_operand].first[:xsi_type] ==
      'RequestContextOperand'
    request_context_operand =
        campaign_feed[:matching_function][:lhs_operand].first
    if request_context_operand[:context_type] == 'FEED_ITEM_ID' &&
        campaign_feed[:matching_function][:operator] == 'IN'
      campaign_feed[:matching_function][:rhs_operand].each do |argument|
        if argument[:xsi_type] == 'ConstantOperand'
          feed_item_ids.add(argument[:long_value])
        end
      end
    end
  end
  return feed_item_ids
end

def get_campaign_feeds(adwords, feed, placeholder_type)
  campaign_feed_srv = adwords.service(:CampaignFeedService, API_VERSION)
  query = ("SELECT CampaignId, MatchingFunction, PlaceholderTypes " +
      "WHERE Status = 'ENABLED' AND FeedId = %d " +
      "AND PlaceholderTypes CONTAINS_ANY [%d]") % [feed[:id], placeholder_type]

  campaign_feeds = []
  offset = 0

  begin
    page_query = (query + " LIMIT %d, %d") % [offset, PAGE_SIZE]
    page = campaign_feed_srv.query(page_query)

    unless page[:entries].nil?
      campaign_feeds += page[:entries]
    end
    offset += PAGE_SIZE
  end while page[:total_num_entries] > offset

  return campaign_feeds
end

if __FILE__ == $0
  API_VERSION = :v201506
  PAGE_SIZE = 500

  # See the Placeholder reference page for a liste of all placeholder types
  # and fields.
  # https://developers.google.com/adwords/api/docs/appendix/placeholders
  PLACEHOLDER_SITELINKS = 1
  PLACEHOLDER_FIELD_SITELINK_LINK_TEXT = 1
  PLACEHOLDER_FIELD_SITELINK_URL = 2
  PLACEHOLDER_FIELD_LINE_2_TEXT = 3
  PLACEHOLDER_FIELD_LINE_3_TEXT = 4
  PLACEHOLDER_FIELD_FINAL_URLS = 5
  PLACEHOLDER_FIELD_FINAL_MOBILE_URLS = 6
  PLACEHOLDER_FIELD_TRACKING_URL_TEMPLATE = 7

  begin
    migrate_to_extension_settings()

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
