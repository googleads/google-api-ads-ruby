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
# This example updates the bid of a keyword. To create a keyword, run
# add_keywords.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'adwords_api'

def update_keyword(ad_group_id, criterion_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Prepare for updating a keyword.
  operation = {
    :operator => 'SET',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :id => criterion_id
      },
      :bidding_strategy_configuration => {
        :bids => [
          {
            :xsi_type => 'CpcBid',
            :bid => {:micro_amount => 1000000}
          }
        ]
      }
    }
  }

  # Update criterion.
  response = ad_group_criterion_srv.mutate([operation])
  if response and response[:value]
    ad_group_criterion = response[:value].first
    puts "Keyword ID %d was successfully updated, current bids are:" %
        ad_group_criterion[:criterion][:id]
    ad_group_criterion[:bidding_strategy_configuration][:bids].each do |bid|
      puts "\tType: '%s', value: %d" %
          [bid[:bids_type], bid[:bid][:micro_amount]]
    end
  else
    puts 'No keywords were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201409

  begin
    # IDs of a criterion to update and its ad group.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i
    update_keyword(ad_group_id, criterion_id)

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
