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
# This example illustrates how to create ad groups. To get a list of existing
# campaigns run get_campaigns.rb.
#
# Tags: AdGroupService.mutate

require 'adwords_api'

def add_ad_groups(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  ad_groups = [
    {:name => "Earth to Mars Cruises #%d" % (Time.new.to_f * 1000).to_i,
     :status => 'ENABLED',
     :campaign_id => campaign_id,
     :bids => {
       # The 'xsi_type' field allows you to specify the xsi:type of the object
       # being created. It's only necessary when you must provide an explicit
       # type that the client library can't infer.
       :xsi_type => 'ManualCPCAdGroupBids',
       :keyword_max_cpc => {
         :amount => {
           :micro_amount => 10000000
         }
       },
       # Optional field.
       :keyword_content_max_cpc => {:amount => {:micro_amount => 2000000}}
     }},
    {:name => "Earth to Pluto Cruises #%d" % (Time.new.to_f * 1000).to_i,
     :status => 'ENABLED',
     :campaign_id => campaign_id,
     :bids => {
       # The 'xsi_type' field allows you to specify the xsi:type of the object
       # being created. It's only necessary when you must provide an explicit
       # type that the client library can't infer.
       :xsi_type => 'ManualCPCAdGroupBids',
       :keyword_max_cpc => {
         :amount => {
           :micro_amount => 10000000
         }
       }
     }}
  ]

  # Prepare operations for adding ad groups.
  operations = ad_groups.map do |ad_group|
    {:operator => 'ADD', :operand => ad_group}
  end

  # Add ad groups.
  response = ad_group_srv.mutate(operations)
  if response and response[:value]
    response[:value].each do |ad_group|
      puts "Ad group ID %d was successfully added." % ad_group[:id]
    end
  else
    raise StandardError, 'No ad group was added'
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    # Campaign ID to add ad group to.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    add_ad_groups(campaign_id)

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
