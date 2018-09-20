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
# This example updates an expanded text ad. To get expanded text ads, run
# get_expanded_text_ads.rb.

require 'adwords_api'

def update_expanded_text_ad(ad_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_srv = adwords.service(:AdService, API_VERSION)

  # Updates an expanded text ad using the provided ad ID.
  trip_number = (Time.new.to_f * 1000).to_i
  # Creates an expanded text ad using the provided ad ID and updates some
  # properties of the expanded text ad.
  expanded_text_ad = {
    :id => ad_id,
    :xsi_type => 'ExpandedTextAd',
    :headline_part1 => 'Cruise to Mars #%d' % trip_number,
    :headline_part2 => 'Best Space Cruise Line',
    :description => 'Buy your tickets now!',
    :final_urls => ['http://www.example.com/%d' % trip_number],
    :final_mobile_urls => ['http://www.example.com/mobile/%d' % trip_number]
  }

  # Creates ad group ad operation.
  operation = {
    :operator => 'SET',
    :operand => expanded_text_ad
  }

  # Updates the ad on the server.
  response = ad_srv.mutate([operation])

  # Prints out some information.
  if response and response[:value]
    updated_ad = response[:value].first
    puts 'Expanded text ad with ID %d was successfully updated' %
        updated_ad[:id]
    puts ('Headline part 1 is "%s". Headline part 2 is "%s".' +
        ' Description is "%s".') %
        [updated_ad[:headline_part1],
        updated_ad[:headline_part2],
        updated_ad[:description]]
    puts 'Final URL is "%s". Final mobile URL is "%s".' %
        [updated_ad[:final_urls][0], updated_ad[:final_mobile_urls][0]]
  else
    raise StandardError, 'No ads were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    # Ad ID to update.
    ad_id = 'INSERT_AD_ID_HERE'.to_i
    update_expanded_text_ad(ad_id)

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
