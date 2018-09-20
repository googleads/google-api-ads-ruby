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
# This code example uploads an image asset. To get images,
# run get_all_image_assets.rb.

require 'adwords_api'

def upload_image_asset()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  asset_srv = adwords.service(:AssetService, API_VERSION)

  # The image needs to be in a BASE64 encoded form
  image_url = 'https://goo.gl/3b9Wfh'
  image_data = AdsCommon::Http.get(image_url, adwords.config)
  image_data_base64 = Base64.encode64(image_data)

  # Create the image asset.
  image_asset = {
    :xsi_type => 'ImageAsset',
    # Optional: Provide a unique friendly name to identify your asset. If you
    # specify the assetName field, then both the asset name and the image being
    # uploaded should be unique, and should not match another ACTIVE asset in
    # this customer account.
    # :asset_name => 'Jupiter Trip %s' % (Time.new.to_f * 1000).to_i,
    :image_data => image_data_base64
  }

  # Create the operation.
  asset_operation = {:operator => 'ADD', :operand => image_asset}

  begin
    # Make the mutate request.
    response = asset_srv.mutate([asset_operation])

    # Display the results
    if response and response[:value]
      uploaded_asset = response[:value].first
      puts 'Image asset with id = "%s" and name = "%s" was created.' %
          [uploaded_asset[:asset_id], uploaded_asset[:asset_name]]
    else
      puts 'No image asset was created.'
    end
  rescue Exception => e
    puts 'Failed to create image asset.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    upload_image_asset()

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
