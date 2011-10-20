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
# This example illustrates how to retrieve all the criteria for an ad group.
# To add criteria to an existing ad group, run add_ad_group_criteria.rb.
#
# Tags: AdGroupCriterionService.get

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201109
def get_all_ad_group_criteria()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Get all the criteria for this ad group.
  selector = {
    :fields => ['Id'],
    :ordering => [{
      :field => 'AdGroupId',
      :sort_order => 'ASCENDING'
    }],
    :predicates => [{
      :field => 'AdGroupId',
      :operator => 'IN',
      :values => [ad_group_id]
    }]
  }
  response = ad_group_criterion_srv.get(selector)
  if response and response[:entries]
    ad_group_criteria = response[:entries]
    puts "Ad group #%d has %d criteria." % [ad_group_id,
        ad_group_criteria.length]
    ad_group_criteria.each do |ad_group_criterion|
      puts "\tCriterion ID is %d and type is '%s'" %
          [ad_group_criterion[:criterion][:id],
           ad_group_criterion[:criterion][:type]]
    end
  else
    puts "No criteria found for ad group #%d" % ad_group_id
  end
end

if __FILE__ == $0
  begin
    get_all_ad_group_criteria()

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
