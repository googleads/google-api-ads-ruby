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
# This example adds a sitelinks feed and associates it with a campaign.
#
# Tags: CampaignExtensionSettingService.mutate

require 'adwords_api'
require 'date'

def add_site_links(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  customer_srv = adwords.service(:CustomerService, API_VERSION)
  customer = customer_srv.get()
  customer_time_zone = customer[:date_time_zone]

  campaign_extension_setting_srv =
      adwords.service(:CampaignExtensionSettingService, API_VERSION)

  sitelink_1 = {
    :xsi_type => "SitelinkFeedItem",
    :sitelink_text => "Store Hours",
    :sitelink_url => "http://www.example.com/storehours"
  }

  sitelink_2 = {
    :xsi_type => "SitelinkFeedItem",
    :sitelink_text => "Thanksgiving Specials",
    :sitelink_url => "http://www.example.com/thanksgiving",
    :start_time => DateTime.new(Date.today.year, 11, 20, 0, 0, 0).
        strftime("%Y%m%d %H%M%S ") + customer_time_zone,
    :end_time => DateTime.new(Date.today.year, 11, 27, 23, 59, 59).
        strftime("%Y%m%d %H%M%S ") + customer_time_zone
  }

  sitelink_3 = {
    :xsi_type => "SitelinkFeedItem",
    :sitelink_text => "Wifi available",
    :sitelink_url => "http://www.example.com/mobile/wifi",
    :device_preference => {:device_preference => 30001}
  }

  sitelink_4 = {
    :xsi_type => "SitelinkFeedItem",
    :sitelink_text => "Happy hours",
    :sitelink_url => "http://www.example.com/happyhours",
    :scheduling => {
      :feed_item_schedules => [
        {
          :day_of_week => 'MONDAY',
          :start_hour => 18,
          :start_minute => 'ZERO',
          :end_hour => 21,
          :end_minute => 'ZERO'
        },
        {
          :day_of_week => 'TUESDAY',
          :start_hour => 18,
          :start_minute => 'ZERO',
          :end_hour => 21,
          :end_minute => 'ZERO'
        },
        {
          :day_of_week => 'WEDNESDAY',
          :start_hour => 18,
          :start_minute => 'ZERO',
          :end_hour => 21,
          :end_minute => 'ZERO'
        },
        {
          :day_of_week => 'THURSDAY',
          :start_hour => 18,
          :start_minute => 'ZERO',
          :end_hour => 21,
          :end_minute => 'ZERO'
        },
        {
          :day_of_week => 'FRIDAY',
          :start_hour => 18,
          :start_minute => 'ZERO',
          :end_hour => 21,
          :end_minute => 'ZERO'
        }
      ]
    }
  }

  campaign_extension_setting = {
    :campaign_id => campaign_id,
    :extension_type => 'SITELINK',
    :extension_setting => {
      :extensions => [sitelink_1, sitelink_2, sitelink_3, sitelink_4]
    }
  }

  operation = {
    :operand => campaign_extension_setting,
    :operator => 'ADD'
  }

  response = campaign_extension_setting_srv.mutate([operation])
  if response and response[:value]
    new_extension_setting = response[:value].first
    puts "Extension setting wiht type = %s was added to campaign ID %d" % [
      new_extension_setting[:extension_type],
      new_extension_setting[:campaign_id]
    ]
  elsif
    puts "No extension settings were created."
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    # Campaign ID to add site link to.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    add_site_links(campaign_id)

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
