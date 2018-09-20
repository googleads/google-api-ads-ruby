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
# This example adds expanded text ads to a given ad group.
# To get ad groups, run get_ad_groups.rb.

require 'adwords_api'
require 'date'

def add_expanded_text_ads(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create text ads.
  # The 'xsi_type' field allows you to specify the xsi:type of the object
  # being created. It's only necessary when you must provide an explicit
  # type that the client library can't infer.
  operations = 5.times.map do |i|
    expanded_text_ad = {
      :xsi_type => 'ExpandedTextAd',
      :headline_part1 => 'Cruise to Mars #%d' % (Time.new.to_f * 1000).to_i,
      :headline_part2 => 'Best Space Cruise Line',
      :headline_part3 => 'For Your Loved Ones',
      :description => 'Buy your tickets now!',
      :description2 => 'Discount ends soon',
      :final_urls => ['http://www.example.com/%d' % i],
      :path1 => 'all-inclusive',
      :path2 => 'deals'
    }

    ad_group_ad = {
      :ad_group_id => ad_group_id,
      :ad => expanded_text_ad,
      # Additional properties (non-required).
      :status => 'PAUSED'
    }

    operation = {
      :operator => 'ADD',
      :operand => ad_group_ad
    }
  end

  # Add ads.
  response = ad_group_ad_srv.mutate(operations)
  if response and response[:value]
    response[:value].each do |ad_group_ad|
      headline_part3 = ad_group_ad[:ad][:headline_part3]
      headline_part3_string = ''
      unless headline_part3.nil?
        headline_part3_string = ' | %s' % headline_part3
      end
      puts ('New expanded text ad with id "%d" and headline "%s | %s%s" was ' +
          'added.') % [
              ad_group_ad[:ad][:id],
              ad_group_ad[:ad][:headline_part1],
              ad_group_ad[:ad][:headline_part2],
              headline_part3_string
          ]
    end
  else
    raise StandardError, 'No ads were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    # Ad group ID to add text ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_expanded_text_ads(ad_group_id)

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
