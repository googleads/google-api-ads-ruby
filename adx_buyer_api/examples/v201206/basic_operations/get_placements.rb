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
# This example illustrates how to retrieve all the placements for an ad group.
# To add a placement to an existing ad group, run add_placements.rb.
#
# Tags: AdGroupCriterionService.get

require 'adwords_api'

def get_placements(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Get all the criteria for this ad group.
  selector = {
    :fields => ['Id', 'PlacementUrl'],
    :ordering => [
      {:field => 'AdGroupId', :sort_order => 'ASCENDING'}
    ],
    :predicates => [
      {:field => 'AdGroupId', :operator => 'IN', :values => [ad_group_id]},
      {
        :field => 'CriteriaType',
        :operator => 'EQUALS',
        :values => ['PLACEMENT']
      }
    ]
  }
  response = ad_group_criterion_srv.get(selector)
  if response and response[:entries]
    ad_group_criteria = response[:entries]
    puts "Ad group ID %d has %d placements." %
        [ad_group_id, ad_group_criteria.length]
    ad_group_criteria.each do |ad_group_criterion|
      puts "\tPlacement ID is %d and URL is '%s'." %
          [ad_group_criterion[:criterion][:id],
           ad_group_criterion[:criterion][:placement_url]]
    end
  else
    puts "No placements found for ad group ID %d" % ad_group_id
  end
end

if __FILE__ == $0
  API_VERSION = :v201206

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    get_placements(ad_group_id)

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
