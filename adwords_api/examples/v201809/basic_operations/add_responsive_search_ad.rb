#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2018 Google LLC
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
# This example adds a responsive search ad to a given ad group.
# To get ad groups, run get_ad_groups.rb.

require 'adwords_api'
require 'date'

def add_responsive_search_ad(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # The 'xsi_type' field allows you to specify the xsi:type of the object
  # being created. It's only necessary when you must provide an explicit
  # type that the client library can't infer.
  responsive_search_ad = {
    :xsi_type => 'ResponsiveSearchAd',
    :headlines => [
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Cruise to Mars #%d' % (Time.new.to_f * 1000).to_i
        },
        # Set a pinning to always choose this asset for HEADLINE_1. Pinning is
        # optional; if no pinning is set, then headlines and descriptions will
        # be rotated and the ones that perform best will be used more often.
        :pinned_field => 'HEADLINE_1'
      },
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Best Space Cruise Line'
        }
      },
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Experience the Stars'
        }
      }
    ],
    :descriptions => [
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Buy your tickets now'
        }
      },
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Visit the Red Planet'
        }
      }
    ],
    :final_urls => ['http://www.example.com/cruise'],
    :path1 => 'all-inclusive',
    :path2 => 'deals'
  }

  ad_group_ad = {
    :ad_group_id => ad_group_id,
    :ad => responsive_search_ad,
    # Additional properties (non-required).
    :status => 'PAUSED'
  }

  operation = {
    :operator => 'ADD',
    :operand => ad_group_ad
  }

  # Add ad.
  response = ad_group_ad_srv.mutate([operation])
  if response and response[:value]
    response[:value].each do |ad_group_ad|
      ad = ad_group_ad[:ad]
      puts 'New responsive search ad with ID %d was added.' % ad[:id]
      puts '  Headlines:'
      ad[:headlines].each do |headline|
        pinning = headline[:pinned_field]
        puts '    %s' % headline[:asset][:asset_text]
        puts '      (pinned to %s)' % pinning unless pinning.nil?
      end
      puts '  Descriptions:'
      ad[:descriptions].each do |description|
        pinning = description[:pinned_field]
        puts '    %s' % description[:asset][:asset_text]
        puts '      (pinned to %s)' % pinning unless pinning.nil?
      end
    end
  else
    raise StandardError, 'No ads were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    # Ad group ID to add responsive search ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_responsive_search_ad(ad_group_id)

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
