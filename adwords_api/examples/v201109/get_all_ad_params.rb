#!/usr/bin/ruby
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
# This example illustrates how to retrieve all the ad parameters for an ad
# group. To create an ad parameter, run set_ad_params.rb.
#
# Tags: AdParamService.get

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201109

def get_all_ad_params()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_param_srv = adwords.service(:AdParamService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Get all the ad parameters for this ad group.
  selector = {
      :fields => ['AdGroupId', 'CriterionId', 'InsertionText', 'ParamIndex'],
      :predicates => [
          {:field => 'AdGroupId',
           :operator => 'EQUALS',
           :values => [ad_group_id]}
      ]
  }
  response = ad_param_srv.get(selector)

  if response and response[:entries]
    ad_params = response[:entries]
    puts "Ad group ID %d has %d ad param(s):" % [ad_group_id, ad_params.length]
    ad_params.each do |ad_param|
      puts "\tAd param index %d for criterion ID %d has insertion_text '%s' " %
          [ad_param[:param_index], ad_param[:criterion_id],
           ad_param[:insertion_text]]
    end
  else
    puts "No ad params found for ad group ID %d" % ad_group_id
  end
end

if __FILE__ == $0
  begin
    get_all_ad_params()

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
