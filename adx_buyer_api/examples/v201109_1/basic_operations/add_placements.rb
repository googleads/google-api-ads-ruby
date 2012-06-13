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
# This example illustrates how to add a placement to a given ad group. To create
# an ad group, run add_ad_group.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'adwords_api'

def add_placements(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Create placements.
  placements = [
    {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Placement',
        :url => 'http://mars.google.com'
      }
    },
    {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Placement',
        :url => 'http://pluto.google.com'
      }
    },
  ]

  # Create operations to add placements.
  plc_operations = placements.map do |placement|
    {:operator => 'ADD', :operand => placement}
  end

  # Add placements.
  response = ad_group_criterion_srv.mutate(plc_operations)
  ad_group_criteria = response[:value]
  puts "Added %d placements to ad group ID %d." %
     [ad_group_criteria.length, ad_group_id]
  ad_group_criteria.each do |ad_group_criterion|
    puts "\tPlacement ID is %d and type is '%s'." %
        [ad_group_criterion[:criterion][:id],
         ad_group_criterion[:criterion][:xsi_type]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201109_1

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    add_placements(ad_group_id)

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
