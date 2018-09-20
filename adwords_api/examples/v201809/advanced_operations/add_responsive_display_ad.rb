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

def add_responsive_display_ad(adwords, ad_group_id)
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # This ad format does not allow the creation of an image using the Image.data
  # field. An image must first be created using the MediaService, and
  # Image.mediaId must be populated when creating the ad.
  ad_image = upload_image(adwords, 'https://goo.gl/3b9Wfh')

  # Create the responsive display ad.
  responsive_display_ad = {
    :xsi_type => 'ResponsiveDisplayAd',
    # This ad format does not allow the creation of an image using the
    # Image.data field. An image must first be created using the MediaService,
    # and Image.mediaId must be populated when creating the ad.
    :marketing_image => {:media_id => ad_image[:media_id]},
    :short_headline => 'Travel',
    :long_headline => 'Traver the World',
    :description => 'Take to the air!',
    :business_name => 'Interplanetary Cruises',
    :final_urls => ['http://www.example.com/'],

    # Optional: Set call to action text.
    :call_to_action_text => 'Shop Now'

    # Whitelisted accounts only: Set color settings using hexadecimal values.
    # Set 'allow_flexible_color' to false if you want your ads to render by
    # always using your colors strictly.
    #:main_color => '#0000ff',
    #:accent_color => '#ffff00',
    #:allow_flexible_color => false,

    # Whitelisted accounts only: Set the format setting that the ad will be
    # served in.
    #:format_setting => 'NON_NATIVE'
  }

  # Optional: Create a square marketing image using MediaService, and set it to
  # the ad.
  square_image = upload_image(adwords, 'https://goo.gl/mtt54n')
  responsive_display_ad[:square_marketing_image] = {
    :media_id => square_image[:media_id]
  }

  # Optional: Set dynamic display ad settings, composed of landscape logo image,
  # promotion text, and price prefix.
  logo_image = upload_image(adwords, 'https://goo.gl/dEvQeF')
  responsive_display_ad[:dynamic_display_ad_settings] = {
    :landscape_logo_image => {:media_id => logo_image[:media_id]},
    :price_prefix => 'as low as',
    :promo_text => 'Free shipping!'
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
      puts ("New responsive display ad with id %d and short headline '%s' was" +
          "added.") % [ad_group_ad[:ad][:id], ad_group_ad[:ad][:short_headline]]
    end
  else
    puts 'No responsive display ads were added.'
  end
end

def upload_image(adwords, image_url)
  media_srv = adwords.service(:MediaService, API_VERSION)

  # Create an image.
  raw_image_data = AdsCommon::Http.get(image_url, adwords.config)
  image = {
    :xsi_type => 'Image',
    :data => Base64.encode64(raw_image_data),
    :type => 'IMAGE'
  }

  # Upload the image.
  response = media_srv.upload([image])
  if response and !response.empty?
    return response.first
  else
    raise StandardError, 'Could not upload image, aborting.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
    # when called without parameters.
    adwords = AdwordsApi::Api.new

    # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
    # the configuration file or provide your own logger:
    # adwords.logger = Logger.new('adwords_xml.log')

    # Ad group ID to add text ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_responsive_display_ad(adwords, ad_group_id)

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
