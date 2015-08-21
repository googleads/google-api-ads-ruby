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
# This example adds demographic criteria to an ad group. To get ad groups list,
# run get_ad_groups.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'adwords_api'

def add_demographic_targeting_criteria(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Create ad group criteria.
  ad_group_criteria = [
    # Targeting criterion.
    {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Gender',
        # See system codes section for IDs:
        # https://developers.google.com/adwords/api/docs/appendix/genders
        :id => 11
      }
    },
    # Exclusion criterion.
    {
      :xsi_type => 'NegativeAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'AgeRange',
        # See system codes section for IDs:
        # https://developers.google.com/adwords/api/docs/appendix/ages
        :id => 503999
      }
    }
  ]

  # Create operations.
  operations = ad_group_criteria.map do |criterion|
    {:operator => 'ADD', :operand => criterion}
  end

  response = ad_group_criterion_srv.mutate(operations)

  if response and response[:value]
    criteria = response[:value]
    criteria.each do |ad_group_criterion|
      criterion = ad_group_criterion[:criterion]
      puts ("Ad group criterion with ad group ID %d, criterion ID %d and " +
          "type '%s' was added.") % [ad_group_criterion[:ad_group_id],
          criterion[:id], criterion[:criterion_type]]
    end
  else
    puts 'No criteria were returned.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'
    add_demographic_targeting_criteria(ad_group_id)

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
