#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example illustrates how to retrieve all the ads for an ad group. To add
# ads to an existing ad group, run add_ads.rb.
#
# Tags: AdGroupAdService.get

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201101

def get_all_ads()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Get all the ads for this ad group.
  selector = {
    :fields => ['Id', 'Status'],
    :ordering => [{:field => 'Id', :sort_order => 'ASCENDING'}],
    # By default, disabled ads aren't returned by the selector. To return them,
    # include the DISABLED status in a predicate.
    :predicates => [
      {:field => 'AdGroupId', :operator => 'IN', :values => [ad_group_id]},
      {
        :field => 'Status',
        :operator => 'IN',
        :values => ['ENABLED', 'PAUSED', 'DISABLED']
      }
    ]
  }
  response = ad_group_ad_srv.get(selector)
  if response and response[:entries]
    ads = response[:entries]
    puts "Ad group ##{ad_group_id} has #{ads.length} ad(s)."
    ads.each do |ad|
      puts "  Ad id is #{ad[:ad][:id]}, type is #{ad[:ad][:xsi_type]} and " +
          "status is \"#{ad[:status]}\"."
    end
  else
    puts "No ads found for ad group ##{ad_group_id}."
  end
end

if __FILE__ == $0
  begin
    get_all_ads()

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
