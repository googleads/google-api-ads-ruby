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
# This example adds an ad customizer feed using Extension Services. Then it adds
# an ad that uses the feed to populate dynamic data.
#
# Tags: AdCustomizerFeedService.mutate, FeedItemService.mutate
# Tags: AdGroupAdService.mutate

require 'adwords_api'
require 'date'

def add_ad_customizers(feed_name, ad_group_ids)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  feed_item_srv = adwords.service(:FeedItemService, API_VERSION)
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create a customizer feed. One feed per account can be used for all ads.
  feed_data = create_customizer_feed(adwords, feed_name)

  # Now adding feed items -- the values we'd like to place.
  now_date = Date.today()

  items_data = [
    {
      :name => 'Mars',
      :price => '$1234.56',
      :date => now_date.strftime('%Y%m01 000000'),
      :ad_group_id => ad_group_ids[0]
    },
    {
      :name => 'Venus',
      :price => '$1450.00',
      :date => now_date.strftime('%Y%m15 000000'),
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

  # All set! We can now create ads with customizations.
  text_ad = {
    :xsi_type => 'TextAd',
    :headline => 'Luxury Cruise to {=%s.Name}' % feed_name,
    :description1 => 'Only {=%s.Price}' % feed_name,
    :description2 => 'Offer ends in {=countdown(%s.Date)}!' % feed_name,
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

def create_customizer_feed(adwords, feed_name)
  ad_customizer_srv = adwords.service(:AdCustomizerFeedService, API_VERSION)
  feed = {
    :feed_name => feed_name,
    :feed_attributes => [
      {:name => 'Name', :type => 'STRING'},
      {:name => 'Price', :type => 'PRICE'},
      {:name => 'Date', :type => 'DATE_TIME'}
    ]
  }
  operation = {:operand => feed, :operator => 'ADD'}
  added_feed = ad_customizer_srv.mutate([operation])[:value].first()
  puts "Created ad customizer feed with ID = %d and name = '%s'." %
      [added_feed[:feed_id], added_feed[:feed_name]]
  return {
    :feed_id => added_feed[:feed_id],
    :name_id => added_feed[:feed_attributes][0][:id],
    :price_id => added_feed[:feed_attributes][1][:id],
    :date_id => added_feed[:feed_attributes][2][:id]
  }
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    feed_name = 'INSERT_FEED_NAME_HERE'.to_s
    ad_group_ids = [
        'INSERT_AD_GROUP_ID_HERE'.to_i,
        'INSERT_AD_GROUP_ID_HERE'.to_i
    ]
    add_ad_customizers(feed_name, ad_group_ids)

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
