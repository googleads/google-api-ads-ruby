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
# This example adds an ad customizer feed and associates it with the customer.
# Then it adds an ad that uses the feed to populate dynamic data.
#
# Tags: CustomerFeedService.mutate, FeedItemService.mutate
# Tags: FeedMappingService.mutate, FeedService.mutate
# Tags: AdGroupAdService.mutate

require 'adwords_api'

def add_ad_customizers(ad_group_ids)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  feed_srv = adwords.service(:FeedService, API_VERSION)
  feed_item_srv = adwords.service(:FeedItemService, API_VERSION)
  feed_mapping_srv = adwords.service(:FeedMappingService, API_VERSION)
  customer_feed_srv = adwords.service(:CustomerFeedService, API_VERSION)
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # First, create a customizer feed. One feed per account can be used for
  # all ads.
  customizer_feed = {
    :name => 'CustomizerFeed',
    :attributes => [
      {:type => 'STRING', :name => 'Name'},
      {:type => 'STRING', :name => 'Price'},
      {:type => 'DATE_TIME', :name => 'Date'}
    ]
  }

  response = feed_srv.mutate([
      {:operator => 'ADD', :operand => customizer_feed}
  ])

  feed_data = {}
  if response and response[:value]
    feed = response[:value].first
    feed_data = {
        :feed_id => feed[:id],
        :name_id => feed[:attributes][0][:id],
        :price_id => feed[:attributes][1][:id],
        :date_id => feed[:attributes][2][:id]
    }
    puts "Feed with name '%s' and ID %d was added with:" %
        [feed[:name], feed[:id]]
    puts ("\tName attribute ID %d and price attribute ID %d " +
        "and date attribute ID %d.") % [
          feed_data[:name_id],
          feed_data[:price_id],
          feed_data[:date_id]
        ]
  else
    raise new StandardError, 'No feeds were added.'
  end

  # Creating feed mapping to map the fields with customizer IDs.
  feed_mapping = {
    :placeholder_type => PLACEHOLDER_AD_CUSTOMIZER,
    :feed_id => feed_data[:feed_id],
    :attribute_field_mappings => [
      {
        :feed_attribute_id => feed_data[:name_id],
        :field_id => PLACEHOLDER_FIELD_STRING
      },
      {
        :feed_attribute_id => feed_data[:price_id],
        :field_id => PLACEHOLDER_FIELD_PRICE
      },
      {
        :feed_attribute_id => feed_data[:date_id],
        :field_id => PLACEHOLDER_FIELD_DATE
      }
    ]
  }

  response = feed_mapping_srv.mutate([
      {:operator => 'ADD', :operand => feed_mapping}
  ])
  if response and response[:value]
    feed_mapping = response[:value].first
    puts ('Feed mapping with ID %d and placeholder type %d was saved for feed' +
        ' with ID %d.') % [
          feed_mapping[:feed_mapping_id],
          feed_mapping[:placeholder_type],
          feed_mapping[:feed_id]
        ]
  else
    raise new StandardError, 'No feed mappings were added.'
  end

  # Now adding feed items -- the values we'd like to place.
  items_data = [
    {
      :name => 'Mars',
      :price => '$1234.56',
      :date => '20140601 000000',
      :ad_group_id => ad_group_ids[0]
    },
    {
      :name => 'Venus',
      :price => '$1450.00',
      :date => '20140615 120000',
      :ad_group_id => ad_group_ids[1]
     }
  ]

  feed_items = items_data.map do |item|
    {
      :feed_id => feed_data[:feed_id],
      :attribute_values => [
        {
          :feed_attribute_id => feed_data[:name_id],
          :string_value => item[:name]
        },
        {
          :feed_attribute_id => feed_data[:price_id],
          :string_value => item[:price]
        },
        {
          :feed_attribute_id => feed_data[:date_id],
          :string_value => item[:date]
        }
      ],
      :ad_group_targeting => {
        :targeting_ad_group_id => item[:ad_group_id]
      }
    }
  end

  feed_items_operations = feed_items.map do |item|
    {:operator => 'ADD', :operand => item}
  end

  response = feed_item_srv.mutate(feed_items_operations)
  if response and response[:value]
    response[:value].each do |feed_item|
      puts 'Feed item with ID %d was added.' % feed_item[:feed_item_id]
    end
  else
    raise new StandardError, 'No feed items were added.'
  end

  # Finally, creating a customer (account-level) feed with a matching function
  # that determines when to use this feed. For this case we use the "IDENTITY"
  # matching function that is always 'true' just to associate this feed with
  # the customer. The targeting is done within the feed items using the
  # :campaign_targeting, :ad_group_targeting, or :keyword_targeting attributes.
  matching_function = {
    :operator => 'IDENTITY',
    :lhs_operand => [
      {
        :xsi_type => 'ConstantOperand',
        :type => 'BOOLEAN',
        :boolean_value => true
      }
    ]
  }

  customer_feed = {
    :feed_id => feed_data[:feed_id],
    :matching_function => matching_function,
    :placeholder_types => [PLACEHOLDER_AD_CUSTOMIZER]
  }

  response = customer_feed_srv.mutate([
      {:operator => 'ADD', :operand => customer_feed}
  ])
  if response and response[:value]
    feed = response[:value].first
    puts 'Customer feed with ID %d was added.' % [feed[:feed_id]]
  else
    raise new StandardError, 'No customer feeds were added.'
  end

  # All set! We can now create ads with customizations.
  text_ad = {
    :xsi_type => 'TextAd',
    :headline => 'Luxury Cruise to {=CustomizerFeed.Name}',
    :description1 => 'Only {=CustomizerFeed.Price}',
    :description2 => 'Offer ends in {=countdown(CustomizerFeed.Date)}!',
    :final_urls => ['http://www.example.com'],
    :display_url => 'www.example.com'
  }

  # We add the same ad to both ad groups. When they serve, they will show
  # different values, since they match different feed items.
  operations = ad_group_ids.map do |ad_group_id|
    {
      :operator => 'ADD',
      :operand => {
        :ad_group_id => ad_group_id,
        :ad => text_ad.dup()
      }
    }
  end

  response = ad_group_ad_srv.mutate(operations)
  if response and response[:value]
    ads = response[:value]
    ads.each do |ad|
      puts "\tCreated an ad with ID %d, type '%s' and status '%s'" %
          [ad[:ad][:id], ad[:ad][:ad_type], ad[:status]]
    end
  else
    raise StandardError, 'No ads were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201409

  # See the Placeholder reference page for a list of all the placeholder types
  # and fields:
  #     https://developers.google.com/adwords/api/docs/appendix/placeholders
  PLACEHOLDER_AD_CUSTOMIZER = 10
  PLACEHOLDER_FIELD_INTEGER = 1
  PLACEHOLDER_FIELD_FLOAT = 2
  PLACEHOLDER_FIELD_PRICE = 3
  PLACEHOLDER_FIELD_DATE = 4
  PLACEHOLDER_FIELD_STRING = 5

  begin
    ad_group_ids = [
        'INSERT_AD_GROUP_ID_HERE'.to_i,
        'INSERT_AD_GROUP_ID_HERE'.to_i
    ]
    add_ad_customizers(ad_group_ids)

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
