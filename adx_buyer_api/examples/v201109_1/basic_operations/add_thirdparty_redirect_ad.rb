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
    :snippet =>
        '<img src="https://sandbox.google.com/sandboximages/image.jpg"/>',
    :impression_beacon_url => 'http://www.examples.com/beacon',
    :certified_vendor_format_id => 119,
    :is_cookie_targeted => false,
    :is_user_interest_targeted => false,
    :is_tagged => false
  }

  # Create an operation to add the ad.
  operation = {
    :operator => 'ADD',
    :operand => {
      :ad_group_id => ad_group_id,
      :ad => redirect_ad
    }
  }

  # Add third party redirect ad. Multiple operations could be passed as an
  # array.
  response = ad_group_ad_srv.mutate([operation])
  ads = response[:value]
  puts "Added %d third party redirect ad(s) to ad group ID %d:" %
      [ads.length, ad_group_id]
  ads.each do |ad|
    puts "\tAd ID %d, type '%s' and status '%s'" %
        [ad[:ad][:id], ad[:ad][:ad_type], ad[:status]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201109_1

  begin
    # Ad group ID to add text ads to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_thirdparty_redirect_ad(ad_group_id)

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
