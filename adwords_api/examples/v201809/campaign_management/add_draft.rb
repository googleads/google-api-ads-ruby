#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example illustrates how to create a draft and access its associated
# draft campaign.
#
# See the Campaign Drafts and Experiments guide for more information:
# https://developers.google.com/adwords/api/docs/guides/campaign-drafts-experiments

require 'adwords_api'
require 'date'

def add_draft(base_campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  draft_srv = adwords.service(:DraftService, API_VERSION)

  draft = {
    :base_campaign_id => base_campaign_id,
    :draft_name => 'Test Draft #%d' % (Time.new.to_f * 1000).to_i
  }
  draft_operation = {:operator => 'ADD', :operand => draft}

  draft_result = draft_srv.mutate([draft_operation])

  draft = draft_result[:value].first
  draft_id = draft[:draft_id]
  draft_campaign_id = draft[:draft_campaign_id]

  puts "Draft with id %d and base campaign %d and draft campaign %d created" %
      [draft_id, draft[:base_campaign_id], draft_campaign_id]

  # Once the draft is created, you can modify the draft campaign as if it
  # were a real campaign. For example, you may add criteria, adjust bids,
  # or even include additional ads. Adding a criterion is shown here.
  campaign_criterion_srv =
      adwords.service(:CampaignCriterionService, API_VERSION)

  criterion = {
    :xsi_type => 'Language',
    :id => 1003 # Spanish
  }

  criterion_operation = {
    # Make sure to use the draft_campaign_id when modifying the virtual draft
    # campaign.
    :operator => 'ADD',
    :operand => {
      :campaign_id => draft_campaign_id,
      :criterion => criterion
    }
  }

  criterion_result = campaign_criterion_srv.mutate([criterion_operation])

  criterion = criterion_result[:value].first

  puts "Draft updated to include criteria in campaign %d" % draft_campaign_id
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    base_campaign_id = 'INSERT_BASE_CAMPAIGN_ID_HERE'.to_i

    add_draft(base_campaign_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

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
