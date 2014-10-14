#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
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
# This example updates an existing sitelinks feed as follows:
#  * Adds FeedItemAttributes for line 1 and line 2 descriptions to the Feed
#  * Populates the new FeedItemAttributes on FeedItems in the Feed
#  * Replaces the Feed's existing FeedMapping with one that contains the new
#     set of FeedItemAttributes
#
# The end result of this is that any campaign or ad group whose CampaignFeed
# or AdGroupFeed points to the Feed's ID will now serve line 1 and line 2
# descriptions in its sitelinks.
#
# Tags: FeedItemService.mutate
# Tags: FeedMappingService.mutate, FeedService.mutate

require 'adwords_api'

def update_site_links(feed_id, feed_item_descriptions)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  feed_srv = adwords.service(:FeedService, API_VERSION)
  feed_item_srv = adwords.service(:FeedItemService, API_VERSION)
  feed_mapping_srv = adwords.service(:FeedMappingService, API_VERSION)

  feed_selector = {
    :fields => ['Id', 'Attributes'],
    :predicates => [
      {:field => 'Id', :operator => 'EQUALS', :values => [feed_id]}
    ]
  }

  feed = feed_srv.get(feed_selector)[:entries][0]

  # Add new line1 and line2 feed attributes.
  next_attribute_index = feed[:attributes].length()

  feed[:attributes] = [
    {:type => 'STRING', :name => 'Line 1 Description'},
    {:type => 'STRING', :name => 'Line 2 Description'}
  ]

  mutated_feed_result = feed_srv.mutate([
    {:operator => 'SET', :operand => feed}
  ])

  mutated_feed = mutated_feed_result[:value][0]
  line_1_attribute = mutated_feed[:attributes][next_attribute_index]
  line_2_attribute = mutated_feed[:attributes][next_attribute_index + 1]

  # Update feed items.
  feed_item_ids = feed_item_descriptions.keys
  item_selector = {
    :fields => ['FeedId', 'FeedItemId', 'AttributeValues'],
    :predicates => [
      {:field => 'FeedId', :operator => 'EQUALS', :values => [feed_id]},
      {:field => 'FeedItemId', :operator => 'IN', :values => feed_item_ids}
    ]
  }

  feed_items = feed_item_srv.get(item_selector)[:entries]

  item_operations = feed_items.map do |feed_item|
    feed_item[:attribute_values] = [
      {
        :feed_attribute_id => line_1_attribute[:id],
        :string_value => feed_item_descriptions[feed_item[:feed_item_id]][0]
      },
      {
        :feed_attribute_id => line_2_attribute[:id],
        :string_value => feed_item_descriptions[feed_item[:feed_item_id]][1]
      }
    ]

    {:operator => 'SET', :operand => feed_item}
  end
  items_update_result = feed_item_srv.mutate(item_operations)
  puts 'Updated %d items' % items_update_result[:value].length

  # Update feed mapping.
  mapping_selector = {
    :fields => [
      'FeedId',
      'FeedMappingId',
      'PlaceholderType',
      'AttributeFieldMappings'
    ],
    :predicates => [
      {:field => 'FeedId', :operator => 'EQUALS', :values => [feed_id]}
    ]
  }
  feed_mapping_results = feed_mapping_srv.get(mapping_selector)
  feed_mapping = feed_mapping_results[:entries][0]

  # Feed mappings are immutable, so we have to delete it and re-add
  # it with modifications.
  feed_mapping_srv.mutate([
    {:operator => 'REMOVE', :operand => feed_mapping}
  ])[:value][0]

  feed_mapping[:attribute_field_mappings].push(
    {
      :feed_attribute_id => line_1_attribute[:id],
      :field_id => PLACEHOLDER_FIELD_LINE_1_TEXT
    },
    {
      :feed_attribute_id => line_2_attribute[:id],
      :field_id => PLACEHOLDER_FIELD_LINE_2_TEXT
    }
  )
  mapping_update_result = feed_mapping_srv.mutate([
    {:operator => 'ADD', :operand => feed_mapping}
  ])

  mutated_mapping = mapping_update_result[:value][0]
  puts 'Updated field mappings for feedId %d and feedMappingId %d to:' %
    [mutated_mapping[:feed_id], mutated_mapping[:feed_mapping_id]]
  mutated_mapping[:attribute_field_mappings].each do |field_mapping|
    puts "\tfeedAttributeId %d --> fieldId %d" %
      [field_mapping[:feed_attribute_id], field_mapping[:field_id]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201409

  # See the Placeholder reference page for a list of all the placeholder types
  # and fields:
  #     https://developers.google.com/adwords/api/docs/appendix/placeholders
  PLACEHOLDER_FIELD_LINE_1_TEXT = 3
  PLACEHOLDER_FIELD_LINE_2_TEXT = 4

  begin
    feed_id = 'INSERT_FEED_ID_HERE'.to_i
    feed_item_descriptions = {
      'INSERT_FEED_ITEM_A_ID_HERE'.to_i => [
        'INSERT_FEED_ITEM_A_LINE1_DESC_HERE',
        'INSERT_FEED_ITEM_A_LINE2_DESC_HERE'
      ],
      'INSERT_FEED_ITEM_B_ID_HERE'.to_i => [
        'INSERT_FEED_ITEM_B_LINE1_DESC_HERE',
        'INSERT_FEED_ITEM_B_LINE2_DESC_HERE'
      ]
    }

    update_site_links(feed_id, feed_item_descriptions)

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
