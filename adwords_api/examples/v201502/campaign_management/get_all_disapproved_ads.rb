#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example illustrates how to retrieve all the disapproved ads in a given
# ad group. To add ads, run add_text_ads.rb.
#
# Tags: AdGroupAdService.get

require 'adwords_api'

def get_all_disapproved_ads(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Get all the disapproved ads for this campaign.
  selector = {
    :fields => ['Id', 'AdGroupAdDisapprovalReasons'],
    :ordering => [{:field => 'Id', :sort_order => 'ASCENDING'}],
    :predicates => [
      {:field => 'AdGroupId', :operator => 'IN', :values => [ad_group_id]},
      {
        :field => 'AdGroupCreativeApprovalStatus',
        :operator => 'IN',
        :values => ['DISAPPROVED']
      }
    ]
  }
  response = ad_group_ad_srv.get(selector)
  if response and response[:entries]
    puts 'Ad group %d has %d disapproved ad(s).' %
        [ad_group_id, response[:total_num_entries]]
    response[:entries].each do |ad_group_ad|
      puts ("\tAd with ID %d and type '%s' was disapproved for the following " +
          'reasons:') % [ad_group_ad[:ad][:id], ad_group_ad[:ad][:xsi_type]]
      if ad_group_ad.include?(:disapproval_reasons)
        ad_group_ad[:disapproval_reasons].each {|reason| puts "\t\t%s" % reason}
      else
        puts "\t\tReason not provided."
      end
    end
  else
    puts 'No disapproved ads found for ad group %d.' % ad_group_id
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    # ID of an ad group to get disapproved ads for.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    get_all_disapproved_ads(ad_group_id)

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
