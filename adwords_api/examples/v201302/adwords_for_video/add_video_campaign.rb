#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This example illustrates how to create a video campaign.
#
# Note: AdWords for Video API is a Beta feature.
#
# Tags: VideoCampaignService.mutate, BudgetService.mutate

require 'adwords_api'
require 'date'

def add_video_campaign()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  budget_srv = adwords.service(:BudgetService, API_VERSION)
  video_campaign_srv = adwords.service(:VideoCampaignService, API_VERSION)

  # Create a budget, which can be shared by multiple campaigns.
  budget = {
    :name => 'Video budget #%d' % (Time.new.to_f * 1000).to_i,
    :amount => {:micro_amount => 50000000},
    :delivery_method => 'STANDARD',
    :period => 'DAILY'
  }
  budget_operation = {:operator => 'ADD', :operand => budget}

  # Add budget.
  return_budget = budget_srv.mutate([budget_operation])
  budget_id = return_budget[:value].first[:budget_id]

  # Create video campaign.
  campaigns = [{
    :name => "Interplanetary Video #%d" % (Time.new.to_f * 1000).to_i,
    :status => 'PAUSED',
    :budget_id => budget_id,
    # Optional fields:
    :start_date =>
        DateTime.parse((Date.today + 1).to_s).strftime('%Y%m%d'),
  }]

  # Prepare for adding campaign.
  operations = campaigns.map do |campaign|
    {:operator => 'ADD', :operand => campaign}
  end

  # Add video campaign.
  response = video_campaign_srv.mutate(operations)
  if response and response[:value]
    response[:value].each do |campaign|
      puts "Campaign with name '%s' and ID %d was added." %
          [campaign[:name], campaign[:id]]
    end
  else
    raise new StandardError, 'No campaigns were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201302

  begin
    add_video_campaign()

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
