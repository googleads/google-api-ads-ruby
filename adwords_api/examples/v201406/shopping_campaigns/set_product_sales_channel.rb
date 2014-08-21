#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This example sets the product sales channel.
#
# Tags: CampaignCriterionService.mutate

require 'adwords_api'

def set_product_sales_channel(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_criterion_srv =
      adwords.service(:CampaignCriterionService, API_VERSION)

  # ProductSalesChannel is a fixedId criterion, wiht the possible values
  # defined here.
  ONLINE = 200
  LOCAL = 201

  product_sales_channel = {
    :xsi_type => 'PRODUCT_SALES_CHANNEL',
    :id => ONLINE
  }

  campaign_criterion = {
    :campaign_id => campaign_id,
    :criterion => product_sales_channel
  }

  campaign_criterion_operation = {
    :operator => 'ADD',
    :operand => campaign_criterion
  }

  # Make the mutate request.
  result = campaign_criterion_srv.mutate([campaign_criterion_operation])

  campaign_criterion = result[:value].first[:criterion]
  puts "Added ProductSalesChannel CampaignCriterion with ID %d" %
      [campaign_criterion[:id]]
end

if __FILE__ == $0
  API_VERSION = :v201406

  begin
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

    set_product_sales_channel(campaign_id)

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
