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
# This example illustrates how to add multiple keywords to a given ad group. To
# create an ad group, run add_ad_group.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'adwords_api'

def add_keywords(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Create keywords.
  # The 'xsi_type' field allows you to specify the xsi:type of the object
  # being created. It's only necessary when you must provide an explicit
  # type that the client library can't infer.
  keywords = [
    {:xsi_type => 'BiddableAdGroupCriterion',
     :ad_group_id => ad_group_id,
     :criterion => {
       :xsi_type => 'Keyword',
       :text => 'mars cruise',
       :match_type => 'BROAD'
     },
     # Optional fields:
     :user_status => 'PAUSED',
     :final_urls => {
       :urls => ['http://example.com/mars']
     }
    },
    {:xsi_type => 'BiddableAdGroupCriterion',
     :ad_group_id => ad_group_id,
     :criterion => {
       :xsi_type => 'Keyword',
       :text => 'space hotel',
       :match_type => 'BROAD'}}
  ]

  # Create 'ADD' operations.
  operations = keywords.map do |keyword|
    {:operator => 'ADD', :operand => keyword}
  end

  # Add keywords.
  response = ad_group_criterion_srv.mutate(operations)
  if response and response[:value]
    ad_group_criteria = response[:value]
    puts "Added %d keywords to ad group ID %d:" %
        [ad_group_criteria.length, ad_group_id]
    ad_group_criteria.each do |ad_group_criterion|
      puts "\tKeyword ID is %d and type is '%s'" %
          [ad_group_criterion[:criterion][:id],
           ad_group_criterion[:criterion][:type]]
    end
  else
    raise StandardError, 'No keywords were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    # Ad group ID to add keywords to.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_keywords(ad_group_id)

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
