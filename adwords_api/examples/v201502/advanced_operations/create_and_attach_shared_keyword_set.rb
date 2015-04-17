#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This example creates a shared list of negative broad match keywords, it then
# attaches them to a campaign.
#
# Tags: SharedSetService.mutate, CampaignSharedSetService.mutate

require 'adwords_api'
require 'date'

def create_and_attach_shared_keyword_set(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  shared_set_srv = adwords.service(:SharedSetService, API_VERSION)
  shared_criterion_srv = adwords.service(:SharedCriterionService, API_VERSION)
  campaign_shared_set_srv =
      adwords.service(:CampaignSharedSetService, API_VERSION)

  # Keywords to create a shared set of.
  keywords = ['mars cruise', 'mars hotels']

  # Create shared negative keyword set.
  shared_set = {
    :name => 'API Negative keyword list - %d' % (Time.new.to_f * 1000).to_i,
    :type => 'NEGATIVE_KEYWORDS'
  }

  # Add shared set.
  response = shared_set_srv.mutate([
      {:operator => 'ADD', :operand => shared_set}
  ])

  if response and response[:value]
    shared_set = response[:value].first
    shared_set_id = shared_set[:shared_set_id]
    puts "Shared set with ID %d and name '%s' was successfully added." %
        [shared_set_id, shared_set[:name]]
  else
    raise StandardError, 'No shared set was added'
  end

  # Add negative keywords to shared set.
  shared_criteria = keywords.map do |keyword|
    {
      :criterion => {
        :xsi_type => 'Keyword',
        :text => keyword,
        :match_type => 'BROAD'
      },
      :negative => true,
      :shared_set_id => shared_set_id
    }
  end

  operations = shared_criteria.map do |criterion|
    {:operator => 'ADD', :operand => criterion}
  end

  response = shared_criterion_srv.mutate(operations)
  if response and response[:value]
    response[:value].each do |shared_criterion|
      puts "Added shared criterion ID %d '%s' to shared set with ID %d." %
          [shared_criterion[:criterion][:id],
           shared_criterion[:criterion][:text],
           shared_criterion[:shared_set_id]]
    end
  else
    raise StandardError, 'No shared keyword was added'
  end

  # Attach the articles to the campaign.
  campaign_set = {
    :campaign_id => campaign_id,
    :shared_set_id => shared_set_id
  }

  response = campaign_shared_set_srv.mutate([
    {:operator => 'ADD', :operand => campaign_set}
  ])
  if response and response[:value]
    campaign_shared_set = response[:value].first
    puts 'Shared set ID %d was attached to campaign ID %d' %
        [campaign_shared_set[:shared_set_id], campaign_shared_set[:campaign_id]]
  else
    raise StandardError, 'No campaign shared set was added'
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    # Campaign ID to attach shared keyword set to.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

    create_and_attach_shared_keyword_set(campaign_id)

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
