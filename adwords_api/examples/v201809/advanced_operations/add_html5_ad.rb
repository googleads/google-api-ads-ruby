#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This code example adds an HTML5 ad to a given ad group.
# To get ad groups, run basic_operations/get_ad_groups.rb.

require 'adwords_api'
require 'base64'

def add_html5_ad(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # The HTML5 zip file contains all the HTML, CSS, and images needed for the
  # HTML5 ad. For help on creating an HTML5 zip file, check out Google Web
  # Designer (https://www.google.com/webdesigner).
  html5_url = 'http://goo.gl/9Y7qI2'
  html5_data = AdsCommon::Http.get(html5_url, adwords.config)
  html5_data_base64 = Base64.encode64(html5_data)

  # Create a media bundle containing the zip file with all the HTML5
  # components.
  media_bundle = {
    :xsi_type => 'MediaBundle',
    :data => html5_data_base64,
    :entry_point => 'carousel/index.html',
    :type => 'MEDIA_BUNDLE'
  }

  # Create the template elements for the ad. You can refer to
  # https://developers.google.com/adwords/api/docs/appendix/templateads
  # for the list of available template fields.
  ad_data = {
    :unique_name => 'adData',
    :fields => [
      {
        :name => 'Custom_layout',
        :field_media => media_bundle,
        :type => 'MEDIA_BUNDLE'
      },
      {
        :name => 'layout',
        :field_text => 'Custom',
        :type => 'ENUM'
      }
    ]
  }

  html5_ad = {
    :xsi_type => 'TemplateAd',
    :name => 'Ad for HTML5',
    :template_id => 419,
    :final_urls => ['http://example.com/html5'],
    :display_url => 'www.example.com/html5',
    :dimensions => {
      :width => 300,
      :height => 250
    },
    :template_elements => [ad_data]
  }

  ad_group_ad = {
    :ad_group_id => ad_group_id,
    :ad => html5_ad,
    :status => 'PAUSED'
  }

  operation = {
    :operator => 'ADD',
    :operand => ad_group_ad
  }

  response = ad_group_ad_srv.mutate([operation])
  if response and !response.empty?
    response[:value].each do |ad_group_ad|
      puts "New HTML5 ad with ID %d and display url '%s' was added." %
          [ad_group_ad[:ad][:id], ad_group_ad[:ad][:display_url]]
    end
  else
    puts "No HTML5 ads were added."
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    # Ad group ID to add text ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_html5_ad(ad_group_id)

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
