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
# This example illustrates how to create an ad group. To create a campaign, run
# add_campaign.rb.
#
# Tags: AdGroupService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201003

def add_ad_group()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Prepare for adding ad group.
  operation = {
    :operator => 'ADD',
    :operand => {
      :name => "Earth to Mars Cruises #%d" % (Time.new.to_f * 1000).to_i,
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
      },
    }
  }

  # Add ad group.
  response = ad_group_srv.mutate([operation])
  ad_group = response[:value].first
  puts "Ad group ID %d was successfully added." % ad_group[:id]
end

if __FILE__ == $0
  begin
    add_ad_group()

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
