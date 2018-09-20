#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example illustrates how to update an ad group, setting its status to
# 'PAUSED'. To create an ad group, run add_ad_group.rb.

require 'adwords_api'

def update_ad_group(ad_group_id, cpc_bid_micro_amount)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  # Create an ad group with the specified ID.
  ad_group = {
    :status => 'PAUSED',
    :id => ad_group_id
  }

  # Update the CPC bid if specified.
  unless cpc_bid_micro_amount.nil?
    ad_group[:bidding_strategy_configuration] = {
      :bids => [{
        :xsi_type => 'CpcBid',
        :bid => {
          :micro_amount => cpc_bid_micro_amount
        }
      }]
    }
  end

  operation = {
    :operator => 'SET',
    :operand => ad_group
  }

  # Update ad group.
  response = ad_group_srv.mutate([operation])
  if response and response[:value]
    ad_group = response[:value].first
    bidding_strategy_configuration = ad_group[:bidding_strategy_configuration]
    cpc_bid_micros = nil
    unless bidding_strategy_configuration.nil?
      unless bidding_strategy_configuration[:bids].nil?
        bidding_strategy_configuration[:bids].each do |bid|
          if bid[:xsi_type] == 'CpcBid'
            cpc_bid_micros = bid[:bid][:micro_amount]
          end
        end
      end
    end
    puts ('Ad group id %d and name "%s" updated to have status "%s" and CPC ' +
        'bid %d.') % [ad_group[:id], ad_group[:name], ad_group[:status],
        cpc_bid_micros]
  else
    puts 'No ad groups were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    # ID of an ad group to update.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    # Set this to nil if you do not want to update the CPC bid.
    cpc_bid_micro_amount = 'INSERT_CPC_BID_MICRO_AMOUNT_HERE'.to_i

    update_ad_group(ad_group_id, cpc_bid_micro_amount)

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
