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
# This code example gets all image assets. To upload an image asset,
# run upload_image_asset.rb.

require 'adwords_api'

def get_all_image_assets()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  asset_srv = adwords.service(:AssetService, API_VERSION)

  # Create the selector and filter for image assets only.
  selector = {
    :fields => ['AssetName', 'AssetStatus', 'ImageFileSize', 'ImageWidth',
        'ImageHeight', 'ImageFullSizeUrl'],
    :predicates => [
        {:field => 'AssetSubtype', :operator => 'IN', :values => ['IMAGE']}
    ],
    :paging => {
        :start_index => 0,
        :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  begin
    # Get the image assets.
    page = asset_srv.get(selector)

    # Display the results
    if page[:entries]
      page[:entries].each_with_index do |entry, i|
        full_dimensions = entry[:full_size_info]
        puts ('%s) Image asset with id = "%s", name = "%s" ' +
            'and status = "%s" was found.') %
            [i+1, entry[:asset_id], entry[:asset_name], entry[:asset_status]]
        puts '  Size is %sx%s and asset URL is %s.' %
            [full_dimensions[:image_width],
            full_dimensions[:image_height],
            full_dimensions[:image_url]]
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  if page.include?(:total_num_entries)
    puts "\tFound %d entries." % page[:total_num_entries]
  end
end

if __FILE__ == $0
  API_VERSION = :v201809
  PAGE_SIZE = 500

  begin
    get_all_image_assets()

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
