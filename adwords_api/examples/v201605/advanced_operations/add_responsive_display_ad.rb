#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This code example adds an image representing the ad using the MediaService and
# then adds a responsive display ad to a given ad group.
# To get ad groups, run basic_operations/get_ad_groups.rb.

require 'adwords_api'
require 'base64'

def add_responsive_display_ad(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)
  media_srv = adwords.service(:MediaService, API_VERSION)

  # Create an image.
  image_url = 'https://goo.gl/3b9Wfh'
  raw_image_data = AdsCommon::Http.get(image_url, adwords.config)
  image_data = Base64.encode64(image_data)
  image = {
    :xsi_type => 'Image',
    :data => image_data,
    :type => 'IMAGE'
  }

  # Upload the image.
  response = media_srv.upload([image])
  if response and !response.empty?
    image = response.first
  else
    raise StandardError, "Could not uplooad image. Aborting before creating ad."
  end

  # Create the responsive display ad.
  responsive_display_ad = {
    :xsi_type => 'ResponsiveDisplayAd',
    :marketing_image => image,
    :short_headline => 'Travel',
    :long_headline => 'Traver the World',
    :description => 'Take to the air!',
    :advertiser_name => 'Interplanetary Cruises',
    :final_urls => ['http://www.example.com/']
  }

  # Create an ad group ad for the responsive display ad.
  responsive_display_ad_group_ad = {
    :ad_group_id => ad_group_id,
    :ad => responsive_display_ad,
    # Additional propertires (non-required).
    :status => 'PAUSED'
  }

  # Create operation.
  responsive_display_ad_group_ad_operations = {
    :operator => 'ADD',
    :operand => responsive_display_ad_group_ad
  }

  # Add the responsive display ad.
  result = ad_group_ad_srv.mutate([responsive_display_ad_group_ad_operations])

  # Display results.
  if result && result[:value]
    result[:value].each do |ad_group_ad|
      puts ('New responsive display ad with id %d and short headline %s was ' +
          'added.') % [ad_group_ad[:ad][:id], ad_group_ad[:ad][:short_headline]]
    end
  else
    puts "No responsive display ads were added."
  end
end

if __FILE__ == $0
  API_VERSION = :v201605

  begin
    # Ad group ID to add text ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_responsive_display_ad(ad_group_id)

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
