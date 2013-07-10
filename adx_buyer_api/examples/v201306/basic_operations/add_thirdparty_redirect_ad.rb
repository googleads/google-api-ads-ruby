#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This code example adds a third party redirect ad to an ad group. To create an
# ad group, run add_ad_group.rb.
#
# Tags: AdGroupAdService.mutate

require 'adwords_api'

def add_thirdparty_redirect_ad(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create third party redirect ad.
  # The 'xsi_type' field allows you to specify the xsi:type of the object
  # being created. It's only necessary when you must provide an explicit
  # type that the client library can't infer.
  redirect_ad = {
    :xsi_type => 'ThirdPartyRedirectAd',
    :name => 'Example third party ad %d' % (Time.new.to_f * 1000).to_i,
    :url => 'http://www.example.com',
    :dimensions => {
      :height => 250,
      :width => 300
    },
    # This field normally contains the javascript ad tag.
    :snippet => '<img src="http://goo.gl/HJM3L"/>',
    # DoubleClick Rich Media Expandable format ID.
    :certified_vendor_format_id => 232,
    :is_cookie_targeted => false,
    :is_user_interest_targeted => false,
    :is_tagged => false,
    # Expandable Ad properties.
    :expanding_directions => ['EXPANDING_UP', 'EXPANDING_DOWN'],
    :ad_attributes => ['ROLL_OVER_TO_EXPAND']
  }

  # Create in-stream third party redirect ad.
  in_stream_ad = {
    :xsi_type => 'ThirdPartyRedirectAd',
    :name => 'Example in stream ad %d' % (Time.new.to_f * 1000).to_i,
    :url => 'http://www.example.com',
    # 15 secs.
    :ad_duration => 15000,
    :source_url => 'http://ad.doubleclick.net/pfadx/N270.126913.6102203221521' +
        '/B3876671.21;dcadv=2215309;sz=0x0;ord=%5btimestamp%5d;dcmt=text/xml',
    :certified_vendor_format_id => 303,
    :rich_media_ad_type => 'IN_STREAM_VIDEO'
  }

  # Create operations to add the ads.
  operations = [
    {
      :operator => 'ADD',
      :operand => {
        :ad_group_id => ad_group_id,
        :ad => redirect_ad
      }
    },
    {
      :operator => 'ADD',
      :operand => {
        :ad_group_id => ad_group_id,
        :ad => in_stream_ad
      }
    }
  ]

  # Add the ads.
  response = ad_group_ad_srv.mutate(operations)

  ads = response[:value]
  puts "Added %d third party redirect ads to ad group ID %d:" %
      [ads.length, ad_group_id]
  ads.each do |ad|
    puts "\tAd ID %d, type '%s' and status '%s'" %
        [ad[:ad][:id], ad[:ad][:ad_type], ad[:status]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201306

  begin
    # Ad group ID to add text ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_thirdparty_redirect_ad(ad_group_id)

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
