#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This code example adds a campaign group and sets a performance target for that
# group. To get campaigns, run get_campaigns.rb. To download reports, run
# download_criteria_report_with_awql.rb.

require 'date'

require 'adwords_api'

def add_campaign_groups_and_performance_targets(campaign_ids)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_group = create_campaign_group(adwords)
  add_campaigns_to_group(adwords, campaign_group, campaign_ids)
  create_performance_target(adwords, campaign_group)
end

def create_campaign_group(adwords)
  campaign_group_srv = adwords.service(:CampaignGroupService, API_VERSION)

  campaign_group = {
    :name => "Mars campaign group #%d" % (Time.new.to_f * 1000).to_i
  }

  operation = {
    :operand => campaign_group,
    :operator => 'ADD'
  }

  new_campaign_group = campaign_group_srv.mutate([operation])[:value].first
  puts "Campaign group with ID %d and name '%s' was created." % [
    new_campaign_group[:id],
    new_campaign_group[:name]
  ]

  return new_campaign_group
end

def add_campaigns_to_group(adwords, campaign_group, campaign_ids)
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  operations = campaign_ids.map do |campaign_id|
    {
      :operand => {
        :id => campaign_id,
        :campaign_group_id => campaign_group[:id]
      },
      :operator => 'SET'
    }
  end

  return_value = campaign_srv.mutate(operations)
  puts ("The following campaign IDs were added to the campaign group with " +
      " ID %d:") % campaign_group[:id]
  return_value[:value].each do |campaign|
    puts "\t%d" % campaign[:id]
  end
end

def create_performance_target(adwords, campaign_group)
  campaign_group_performance_target_srv = adwords.service(
      :CampaignGroupPerformanceTargetService, API_VERSION)

  campaign_group_performance_target = {
    :campaign_group_id => campaign_group[:id],
    :performance_target => {
      # Keep the CPC for the campaigns <=$3.
      :efficiency_target_type => 'CPC_LESS_THAN_OR_EQUAL_TO',
      :efficiency_target_value => 3_000_000,
      # Keep the maximum spend under $50.
      :spend_target_type => 'MAXIMUM',
      :spend_target => {
        :micro_amount => 50_000_000
      },
      # Aim for at least 3000 clicks.
      :volume_target_value => 3000,
      :volume_goal_type => 'MAXIMIZE_CLICKS',
      # Start the performance target today, and run it for the next 90 days.
      :start_date => DateTime.parse((Date.today).to_s).strftime('%Y%m%d'),
      :end_date => DateTime.parse((Date.today + 90).to_s).strftime('%Y%m%d')
    }
  }

  operation = {
    :operand => campaign_group_performance_target,
    :operator => 'ADD'
  }

  new_campaign_group_performance_target =
      campaign_group_performance_target_srv.mutate([operation])[:value].first

  puts ("Campaign group performance target with ID %s was added for campaign " +
      "group ID %d") % [new_campaign_group_performance_target[:id],
      new_campaign_group_performance_target[:campaign_group_id]]
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    campaign_id_1 = 'INSERT_CAMPAIGN_ID_1_HERE'.to_i
    campaign_id_2 = 'INSERT_CAMPAIGN_ID_2_HERE'.to_i
    add_campaign_groups_and_performance_targets([campaign_id_1, campaign_id_2])

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
