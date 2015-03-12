#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This code example creates a click-to-download ad, also known as an app
# promotion ad to a given ad group. To list ad groups, run get_ad_groups.rb.
#
# Tags: AdGroupAdService.mutate

require 'adwords_api'

def add_click_to_download_ad(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create the template elements for the ad. You can refer to
  #     https://developers.google.com/adwords/api/docs/appendix/templateads
  # for the list of available template fields.
  ad_data = {
    :unique_name => 'adData',
    :fields => [
      {
        :name => 'headline',
        :field_text => 'Enjoy your drive in Mars',
        :type => 'TEXT'
      },
      {
        :name => 'description1',
        :field_text => 'Realistic physics simulation',
        :type => 'TEXT'
      },
      {
        :name => 'description2',
        :field_text => 'Race against players online',
        :type => 'TEXT'
      },
      {
        :name => 'appId',
        :field_text => 'com.example.demogame',
        :type => 'TEXT'
      },
      {
        :name => 'appStore',
        :field_text => '2',
        :type => 'ENUM'
      }
    ]
  }

  # Create click to download ad.
  click_to_download_app_ad = {
    :xsi_type => 'TemplateAd',
    :name => 'Ad for demo game',
    :template_id => 353,
    :final_urls =>
        ['http://play.google.com/store/apps/details?id=com.example.demogame'],
    :display_url => 'play.google.com',
    :template_elements => [ad_data]
  }

  # Create ad group ad.
  ad_group_ad = {
    :ad_group_id => ad_group_id,
    :ad => click_to_download_app_ad,
    # Optional.
    :status => 'PAUSED'
  }

  # Add ad.
  response = ad_group_ad_srv.mutate([
      {:operator => 'ADD', :operand => ad_group_ad}
  ])
  if response and response[:value]
    response[:value].each do |ad|
      puts "Added new click-to-download ad to ad group ID %d with url '%s'." %
          [ad[:ad][:id], ad[:ad][:final_urls[0]]]
    end
  else
    raise StandardError, 'No ads were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    # Ad group ID to add text ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_click_to_download_ad(ad_group_id)

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
