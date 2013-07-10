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
# This example migrates legacy sitelinks to upgraded sitelinks for a given list
# of campaigns. The campaigns must be upgraded to enhanced campaigns before you
# can run this example. To upgrade a campaign to enhanced, run
# set_campaign_enhanced.rb. To get all campaigns, run get_campaigns.rb.
#
# Tags: CampaignAdExtensionService.get, CampaignAdExtensionService.mutate
# Tags: FeedService.mutate, FeedItemService.mutate, FeedMappingService.mutate
# Tags: CampaignFeedService.mutate

require 'adwords_api'

def upgrade_legacy_sitelinks(campaign_ids)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # Obtain the required services.
  campaign_ad_extension_srv =
      adwords.service(:CampaignAdExtensionService, API_VERSION)
  feed_mapping_srv = adwords.service(:FeedMappingService, API_VERSION)
  feed_srv = adwords.service(:FeedService, API_VERSION)
  feed_item_srv = adwords.service(:FeedItemService, API_VERSION)
  campaign_feed_srv = adwords.service(:CampaignFeedService, API_VERSION)

  # Try to retrieve an existing feed that has been mapped for use with
  # sitelinks. If multiple such feeds exist, the first matching feed is
  # retrieved. You could modify this code example to retrieve all the feeds
  # and pick the appropriate feed based on user input.
  site_links_feed = get_existing_feed(feed_mapping_srv)
  if site_links_feed.nil?
    # Create a feed for storing sitelinks.
    site_links_feed = create_site_links_feed(feed_srv)
    # Map the feed for using with sitelinks.
    create_site_links_feed_mapping(feed_mapping_srv, site_links_feed)
  end

  campaign_ids.each do |campaign_id|
    # Get legacy extensions for the campaign.
    legacy_extensions = get_legacy_extensions_for_campaign(
        campaign_ad_extension_srv, campaign_id)
    legacy_extensions.each do |extension|
      # Get the sitelinks.
      legacy_site_links = extension[:ad_extension][:sitelinks]

      # Add the sitelinks to the feed.
      site_link_feed_item_ids = create_site_link_feed_items(feed_item_srv,
                                                            site_links_feed,
                                                            legacy_site_links)

      # Associate feeditems to the campaign.
      associate_sitelink_feed_items_with_campaign(campaign_feed_srv,
                                                  site_links_feed,
                                                  site_link_feed_item_ids,
                                                  campaign_id)

      # Once the upgraded sitelinks are added to a campaign, the legacy
      # sitelinks will stop serving. You can delete the legacy sitelinks
      # once you have verified that the migration went fine. In case the
      # migration didn't succeed, you can roll back the migration by deleting
      # the campaign feed you created in the previous step.
      campaign_ad_extension_srv.mutate([
          {:operator => 'REMOVE', :operand => extension}
      ])
    end
  end
end

# Create a feed for holding upgraded sitelinks.
def create_site_links_feed(feed_srv)
  # Create the feed.
  site_links_feed = {
    :name => 'Feed For Sitelinks',
    :attributes => [
      {:type => 'STRING', :name => 'Link Text'},
      {:type => 'URL', :name => 'Link URL'}
    ],
    :origin => 'USER'
  }

  # Add the feed.
  response = feed_srv.mutate([
      {:operator => 'ADD', :operand => site_links_feed}
  ])

  saved_feed = response[:value].first
  return {
    :site_links_feed_id => saved_feed[:id],
    :saved_attributes => saved_feed[:attributes],
    :link_text_feed_attribute_id => saved_feed[:attributes][0][:id],
    :link_url_feed_attribute_id => saved_feed[:attributes][1][:id]
  }
end

# Map the feed for use with Sitelinks.
def create_site_links_feed_mapping(feed_mapping_srv, site_links_feed)
  # Map the feedAttributeIds to the fieldId constants.
  link_text_field_mapping = {
    :feed_attribute_id => site_links_feed[:link_text_feed_attribute_id],
    :field_id => PLACEHOLDER_FIELD_SITELINK_TEXT
  }
  link_url_field_mapping = {
    :feed_attribute_id => site_links_feed[:link_url_feed_attribute_id],
    :field_id => PLACEHOLDER_FIELD_SITELINK_URL
  }

  # Create the field mapping.
  feed_mapping = {
    :placeholder_type => PLACEHOLDER_SITELINKS,
    :feed_id => site_links_feed[:site_links_feed_id],
    :attribute_field_mappings =>
        [link_text_field_mapping, link_url_field_mapping]
  }

  # Save the field mapping.
  feed_mapping_srv.mutate([{:operator => 'ADD', :operand => feed_mapping}])
end

# Retrieves an existing feed that is mapped to hold sitelinks. The first active
# sitelinks feed is retrieved by this method.
def get_existing_feed(feed_mapping_srv)
  selector = {
    :fields => ['FeedId', 'FeedMappingId', 'PlaceholderType', 'Status',
        'AttributeFieldMappings'],
    :predicates => [
      {
        :field => 'PlaceholderType',
        :operator => 'EQUALS',
        :values => [PLACEHOLDER_SITELINKS]
      },
      {:field => 'Status', :operator => 'EQUALS', :values => ['ACTIVE']}
    ]
  }

  response = feed_mapping_srv.get(selector)
  if response and response[:entries]
    response[:entries].each do |feed_mapping|
      feed_id = feed_mapping[:feed_id]
      text_attribute_id = nil
      url_attribute_id = nil
      feed_mapping[:attribute_field_mappings].each do |attribute_mapping|
        case attribute_mapping[:field_id].to_i
          when PLACEHOLDER_FIELD_SITELINK_TEXT
            text_attribute_id = attribute_mapping[:feed_attribute_id]
          when PLACEHOLDER_FIELD_SITELINK_URL
            url_attribute_id = attribute_mapping[:feed_attribute_id]
        end
      end
      unless feed_id.nil? or text_attribute_id.nil? or url_attribute_id.nil?
        return {
          :site_links_feed_id => feed_id,
          :link_text_feed_attribute_id => text_attribute_id,
          :link_url_feed_attribute_id => url_attribute_id
        }
      end
    end
  end
  return nil
end

# Gets legacy sitelink extensions for a campaign.
def get_legacy_extensions_for_campaign(campaign_ad_extension_srv, campaign_id)
  # Create the selector.
  selector = {
    :fields => ['CampaignId', 'AdExtensionId',
                'Status', 'DisplayText', 'DestinationUrl'],
    :predicates => [
      # Filter the results for specified campaign id.
      {:field => 'CampaignId', :operator => 'EQUALS', :values => [campaign_id]},
      # Filter the results for active campaign ad extensions. You may add
      # additional filtering conditions here as required.
      {:field => 'Status', :operator => 'EQUALS', :values => ['ACTIVE']},
      {
        :field => 'AdExtensionType',
        :operator => 'EQUALS',
        :values => ['SITELINKS_EXTENSION']
      }
    ]
  }
  response = campaign_ad_extension_srv.get(selector)
  return (response and response[:entries]) ? response[:entries] : []
end

# Adds legacy sitelinks to the sitelinks feed.
def create_site_link_feed_items(feed_item_srv, site_links_feed, site_links)
  # Create operation for adding each legacy sitelink to the sitelinks feed.
  feed_item_operations = site_links.map do |site_link|
    {
      :operator => 'ADD',
      :operand => {
        :feed_id => site_links_feed[:site_links_feed_id],
        :attribute_values => [
          {
            :feed_attribute_id => site_links_feed[:link_text_feed_attribute_id],
            :string_value => site_link[:display_text]
          },
          {
            :feed_attribute_id => site_links_feed[:link_url_feed_attribute_id],
            :string_value => site_link[:destination_url]
          }
        ]
      }
    }
  end

  response = feed_item_srv.mutate(feed_item_operations);
  # Retrieve the feed item ids.
  site_link_feed_item_ids = response[:value].map {|item| item[:feed_item_id]}
  return site_link_feed_item_ids
end

# Associates sitelink feed items with a campaign.
def associate_sitelink_feed_items_with_campaign(campaign_feed_srv,
    site_links_feed, site_link_feed_item_ids, campaign_id)
  # Create a custom matching function that matches the given feed items to the
  # campaign.
  request_context_operand = {
    :xsi_type => 'RequestContextOperand',
    :context_type => 'FEED_ITEM_ID'
  }

  operands = site_link_feed_item_ids.map do |feed_item_id|
    {
      :xsi_type => 'ConstantOperand',
      :long_value => feed_item_id,
      :type => 'LONG'
    }
  end

  function = {
    :operator => 'IN',
    :lhs_operand => [request_context_operand],
    :rhs_operand => operands
  }

  # Create upgraded sitelinks for the campaign. Use the sitelinks feed we
  # created, and restrict feed items by matching function.
  campaign_feed = {
    :feed_id => site_links_feed[:site_links_feed_id],
    :campaign_id => campaign_id,
    :matching_function => function,
    :placeholder_types => [PLACEHOLDER_SITELINKS]
  }

  campaign_feed_srv.mutate([{:operator => 'ADD', :operand => campaign_feed}])
end

if __FILE__ == $0
  API_VERSION = :v201302

  # See the Placeholder reference page for a list of all the placeholder types
  # and fields, see:
  #     https://developers.google.com/adwords/api/docs/appendix/placeholders
  PLACEHOLDER_SITELINKS = 1
  PLACEHOLDER_FIELD_SITELINK_TEXT = 1
  PLACEHOLDER_FIELD_SITELINK_URL = 2

  begin
    # IDs of campaigns to add upgrade legacy sitelinks for.
    campaign_ids = [
      'INSERT_CAMPAIGN_ID_HERE'.to_i,
      'INSERT_CAMPAIGN_ID_HERE'.to_i
    ]

    upgrade_legacy_sitelinks(campaign_ids)

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
