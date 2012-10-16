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
# This example illustrates how to retrieve all third party redirect ads for an
# ad group. To add third party redirect ad to an existing ad group, run
# add_thirdparty_redirect_ad.rb.
#
# Tags: AdGroupAdService.get

require 'adwords_api'

def get_all_ads(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Create selector to get all third party redirect ads for this ad group.
  selector = {
    :fields => ['Id', 'Status', 'Url', 'DisplayUrl'],
    :ordering => [{:field => 'Id', :sort_order => 'ASCENDING'}],
    # By default, disabled ads aren't returned by the selector. To return them,
    # include the DISABLED status in a predicate.
    :predicates => [
      {:field => 'AdGroupId', :operator => 'IN', :values => [ad_group_id]},
      {
        :field => 'Status',
        :operator => 'IN',
        :values => ['ENABLED', 'PAUSED', 'DISABLED']
      },
      {
        :field => 'AdType',
        :operator => 'EQUALS',
        :values => ['THIRD_PARTY_REDIRECT_AD']
      }
    ]
  }

  # Request the ads.
  response = ad_group_ad_srv.get(selector)
  if response and response[:entries]
    ads = response[:entries]
    puts "Ad group ID %d has %d third party redirect ads." %
        [ad_group_id, ads.length]
    ads.each do |ad|
      puts "\tAd ID is %d, type is '%s', status is '%s'" %
          [ad[:ad][:id], ad[:ad][:xsi_type], ad[:status]]
      puts "\tURL:         %s" % ad[:url]
      puts "\tDisplay URL: %s" % ad[:display_url]
    end
  else
    puts "No ads found for ad group ID %d." % ad_group_id
  end
end

if __FILE__ == $0
  API_VERSION = :v201209

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    get_all_ads(ad_group_id)

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
