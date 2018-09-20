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
# This example gets all available campaign criterion bid modifier landscapes
# for a given campaign.
# To get campaigns, run basic_operations/get_campaigns.rb.

require 'adwords_api'

def get_campaign_criterion_bid_modifier_simulations(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  data_srv = adwords.service(:DataService, API_VERSION)

  selector = {
    :fields => [
      'CampaignId',
      'CriterionId',
      'StartDate',
      'EndDate',
      'BidModifier',
      'LocalClicks',
      'LocalCost',
      'LocalImpressions',
      'TotalLocalImpressions',
      'TotalLocalClicks',
      'TotalLocalCost',
      'RequiredBudget'
    ],
    :predicates => [
      {:field => 'CampaignId', :operator => 'IN', :values => [campaign_id]}
    ],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  landscape_points_in_previous_page = 0
  start_index = 0
  begin
    # Offset the start index by the number of landscape points in the last
    # retrieved page, NOT the number of entries (bid landscapes) in the page.
    start_index += landscape_points_in_previous_page
    selector[:paging][:start_index] = start_index

    # Reset the count of landscape points in preparation for processing the
    # next page.
    landscape_points_in_previous_page = 0

    # Request the next page of bid landscapes.
    page = data_srv.get_campaign_criterion_bid_landscape(selector)

    if page[:entries]
      page[:entries].each do |bid_modifier_landscape|
        puts ("Found campaign-level criterion bid modifier landscapes for " +
            "criterion with id '%d', start date '%s', end date '%s', and " +
            "landscape points:") % [
              bid_modifier_landscape[:criterion_id],
              bid_modifier_landscape[:start_date],
              bid_modifier_landscape[:end_date]
            ]
        bid_modifier_landscape[:landscape_points].each do |landscape_point|
          landscape_points_in_previous_page += 1
          puts ("  bid modifier: %f => clicks: %d, cost: %d, impressions: %d" +
              " total clicks: %d, total cost: %d, total impressions: %d" +
              " and required budget: %f") % [
                landscape_point[:bid_modifier],
                landscape_point[:clicks],
                landscape_point[:cost][:micro_amount],
                landscape_point[:impressions],
                landscape_point[:total_local_clicks],
                landscape_point[:total_local_cost][:micro_amount],
                landscape_point[:total_local_impressions],
                landscape_point[:required_budget][:micro_amount]
              ]
        end
        puts
      end
    end
  end while landscape_points_in_previous_page >= PAGE_SIZE
end

if __FILE__ == $0
  API_VERSION = :v201809
  PAGE_SIZE = 100

  begin
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

    get_campaign_criterion_bid_modifier_simulations(campaign_id)

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
