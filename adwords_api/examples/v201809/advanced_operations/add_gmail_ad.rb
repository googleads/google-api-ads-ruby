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
# This example adds a Gmail ad to a given ad group. The ad group's campaign
# needs to have an AdvertisingChannelType of DISPLAY and
# AdvertisingChannelSubType of DISPLAY_GMAIL_AD. To get ad groups, run
# get_ad_groups.rb.

require 'adwords_api'
require 'base64'

def add_gmail_ad(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # This ad format does not allow the creation of an image using the
  # Image.data field. An image must first be created using the MediaService,
  # and Image.mediaId must be populated when creating the ad.
  logo_image_id = upload_image(adwords, 'https://goo.gl/mtt54n')
  logo_image = {
    :xsi_type => 'Image',
    :media_id => logo_image_id
  }

  marketing_image_id = upload_image(adwords, 'http://goo.gl/3b9Wfh')
  ad_image = {
    :xsi_type => 'Image',
    :media_id => marketing_image_id
  }

  teaser = {
    :headline => 'Dream',
    :description => 'Create your own adventure',
    :business_name => 'Interplanetary Ships',
    :logo_image => logo_image
  }

  gmail_ad = {
    :xsi_type => 'GmailAd',
    :teaser => teaser,
    :marketing_image => ad_image,
    :marketing_image_headline => 'Travel',
    :marketing_image_description => 'Take to the skies!',
    :final_urls => ['http://www.example.com']
  }

  ad_group_ad = {
    :ad_group_id => ad_group_id,
    :ad => gmail_ad,
    :status => 'PAUSED'
  }

  operation = {
    :operator => 'ADD',
    :operand => ad_group_ad
  }

  result = ad_group_ad_srv.mutate([operation])
  result[:value].each do |ad_group_ad|
    puts 'A Gmail ad with id %d and short headline "%s" was added.' %
        [ad_group_ad[:ad][:id], ad_group_ad[:ad][:teaser][:headline]]
  end
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

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

    add_gmail_ad(ad_group_id)

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
