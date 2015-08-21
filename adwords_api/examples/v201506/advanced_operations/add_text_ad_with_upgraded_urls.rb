#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This code example adds a text ad that uses advanced features of upgraded
# URLs.
#
# Tags: AdGroupAdService.mutate

require 'adwords_api'

def add_text_ad_with_upgraded_urls(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Since your tracking URL will have two custom parameters, provide their
  # values too. This can be provided at campaign, ad group, ad, criterion, or
  # feed item levels.
  season_parameter = {
    :key => 'season',
    :value => 'christmas'
  }

  promo_code_parameter = {
    :key => 'promocode',
    :value => 'NYC123'
  }

  tracking_url_parameters = {
    :parameters => [season_parameter, promo_code_parameter]
  }

  text_ad = {
    :xsi_type => 'TextAd',
    :headline => 'Luxury Cruise to Mars',
    :description1 => 'Visit the Red Planet in style.',
    :description2 => 'Low-gravity fun for everyone!',
    :display_url => 'www.example.com',
    # Specify a tracking URL for 3rd party tracking provider. You may specify
    # one at customer, campaign, ad group, ad, criterion, or feed item levels.
    :tracking_url_template => 'http://tracker.example.com/' +
        '?season={_season}&promocode={_promocode}&u={lpurl}',
    :url_custom_parameters => tracking_url_parameters,
    # Specify a list of final URLs. This field cannot be set if :url field
    # is set. This may be specified at ad, criterion, and feed item levels.
    :final_urls => [
      'http://www.example.com/cruise/space/',
      'http://www.example.com/locations/mars/'
    ],
    # Specify a list of final mobile URLs. This field cannot be set if :url
    # field is set. This may be specificed at ad, criterion, and
    # feed item levels.
    :final_mobile_urls => [
      'http://mobile.example.com/cruise/space/',
      'http://mobile.example.com/locations/mars/'
    ]
  }

  operation = {
    :operator => 'ADD',
    :operand => {:ad_group_id => ad_group_id, :ad => text_ad}
  }

  # Add ads.
  response = ad_group_ad_srv.mutate([operation])
  if response and response[:value]
    response[:value].each do |ad|
      text_ad = ad[:ad]
      puts "Ad with ID %d and displayUrl '%s' was added." %
          [text_ad[:id], text_ad[:display_url]]
      puts "\tFinal URLs: %s" % [text_ad[:final_urls].join(', ')]
      puts "\tFinal Mobile URLs: %s" % [text_ad[:final_mobile_urls].join(', ')]
      puts "\tTracking URL template: %s" % [text_ad[:tracking_url_template]]
      custom_parameters =
          text_ad[:url_custom_parameters][:parameters].map do |custom_parameter|
            "%s=%s" % [custom_parameter[:key], custom_parameter[:value]]
          end
      puts "\tCustom parameters: %s" % [custom_parameters.join(', ')]
    end
  else
    raise StandardError, 'No ads were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_text_ad_with_upgraded_urls(ad_group_id)

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
