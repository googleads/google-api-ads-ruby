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
# This example illustrates how to create a campaign.
#
# Tags: CampaignService.mutate, BudgetService.mutate

require 'adwords_api'

def add_campaign()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  budget_srv = adwords.service(:BudgetService, API_VERSION)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Create a budget, which can be shared by multiple campaigns.
  budget = {
    :name => 'Interplanetary budget #%d' % (Time.new.to_f * 1000).to_i,
    :amount => {:micro_amount => 50000000},
    :delivery_method => 'STANDARD',
    :period => 'DAILY'
  }
  budget_operation = {:operator => 'ADD', :operand => budget}

  # Add budget.
  return_budget = budget_srv.mutate([budget_operation])
  budget_id = return_budget[:value].first[:budget_id]

  # Prepare for adding campaign.
  operation = {
    :operator => 'ADD',
    :operand => {
      :name => 'Interplanetary Cruise #%s' % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :advertising_channel_type => 'DISPLAY',
      :bidding_strategy_configuration => {
        :bidding_strategy_type => 'MANUAL_CPM'
      },
      :budget => {:budget_id => budget_id},
      :start_date => (Date.today + 1).strftime('%Y%m%d'),
      :end_date => (Date.today + 365).strftime('%Y%m%d'),
      :ad_serving_optimization_status => 'ROTATE',
      :network_setting => {
        :target_content_network => true
      },
      :settings => [
        {:xsi_type => 'RealTimeBiddingSetting', :opt_in => 'true'},
        {:xsi_type => 'KeywordMatchSetting', :opt_in => 'true'}
      ],
      :frequency_cap => {
        :impressions => 5,
        :time_unit => 'DAY',
        :level => 'ADGROUP'
      }
    }
  }

  # Add campaign.
  response = campaign_srv.mutate([operation])
  campaign = response[:value].first
  puts "Campaign with name '%s' and ID %d was added." %
      [campaign[:name], campaign[:id]]
end

if __FILE__ == $0
  API_VERSION = :v201402

  begin
    add_campaign()

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
