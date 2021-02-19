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
# This code example adds a responsive display ad (MultiAssetResponsiveDisplayAd)
# to an ad group. Image assets are uploaded using AssetService. To get
# ad groups, run get_ad_groups.rb.


require 'adwords_api'

def add_multi_asset_responsive_display_ad(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create the ad.
  ad = {
    :xsi_type => 'MultiAssetResponsiveDisplayAd',
    :headlines => [
      {
        # Text assets can be specified directly in the asset field
        # when creating the ad.
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Travel to Mars'
        }
      },
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Travel to Jupiter'
        }
      },
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Travel to Pluto'
        }
      }
    ],
    :descriptions => [
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'Visit the planet in a luxury spaceship.'
        }
      },
      {
        :asset => {
          :xsi_type => 'TextAsset',
          :asset_text => 'See the planet in style.'
        }
      }
    ],
    :business_name => 'Galactic Luxury Cruises',
    :long_headline => {
      :asset => {
        :xsi_type => 'TextAsset',
        :asset_text => 'Visit the planet in a luxury spaceship.'
      }
    },
    # This ad format does not allow the creation of an image asset by setting
    # the asset.imageData field. An image asset must first be created using the
    # AssetService, and asset.assetId must be populated when creating the ad.
    :marketing_images => [
      {
        :asset => {
          :xsi_type => 'ImageAsset',
          :asset_id => upload_image_asset('https://goo.gl/3b9Wfh')
        }
      }
    ],
    :square_marketing_images => [
      {
        :asset => {
          :xsi_type => 'ImageAsset',
          :asset_id => upload_image_asset('https://goo.gl/mtt54n')
        }
      }
    ],
    :final_urls => [
      'http://www.example.com'
    ],
    :call_to_action_text => 'Shop Now',
    :main_color => '#0000ff',
    :accent_color => '#ffff00',
    :allow_flexible_color => false,
    :format_setting => 'NON_NATIVE',
    :dynamic_settings_price_prefix => 'as low as',
    :dynamic_settings_promo_text => 'Free shipping!',
    :logo_images => [
      {
        :asset => {
          :xsi_type => 'ImageAsset',
          :asset_id => upload_image_asset('https://goo.gl/mtt54n')
        }
      }
    ],
  }

  # Create the ad group ad.
  ad_group_ad = {
    :xsi_type => 'AdGroupAd',
    :ad => ad,
    :ad_group_id => ad_group_id
  };

  # Create the operation.
  ad_group_operation = {:operator => 'ADD', :operand => ad_group_ad}

  begin
    # Make the mutate request.
    result = ad_group_srv.mutate([ad_group_operation])

    # Display the results
    if result[:value].length > 0
      result[:value].each do |entry|
        new_ad = entry[:ad]
        puts ('Responsive display ad v2 with ID "%s" ' +
            'and short headline "%s" was added.') %
            [new_ad[:id], new_ad[:long_headline][:asset][:asset_text]]
      end
    else
      puts 'No responsive display ad v2 were created.'
    end
  rescue Exception => e
    puts 'Failed to create responsive display ad v2.'
  end
end

def upload_image_asset(image_url, adwords_api_instance)

  asset_srv = adwords_api_instance.service(:AssetService, API_VERSION)

  # The image needs to be in a BASE64 encoded form
  image_data = AdsCommon::Http.get(image_url, adwords_api_instance.config)
  image_data_base64 = Base64.encode64(image_data)

  # Create the image asset
  image_asset = {
    :xsi_type => 'ImageAsset',
    # Optional: Provide a unique friendly name to identify your asset. If you
    # specify the assetName field, then both the asset name and the image being
    # uploaded should be unique, and should not match another ACTIVE asset in
    # this customer account.
    # :asset_name => 'Image asset %s' % (Time.new.to_f * 1000).to_i,
    :image_data => image_data_base64
  }

  # Create the operation.
  asset_operation = {:operator => 'ADD', :operand => image_asset}

  # Make the mutate request.
  result = asset_srv.mutate([asset_operation])

  # return the generated Id
  result[:value].first[:asset_id]
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

    add_multi_asset_responsive_display_ad(ad_group_id)

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
