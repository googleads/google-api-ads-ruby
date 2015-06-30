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
# This example adds a label to multiple campaigns.
#
# Tags: CampaignService.mutateLabel

require 'adwords_api'

def add_campaign_labels(campaign_ids, label_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  operations = campaign_ids.map do |campaign_id|
    {
      :operator => 'ADD',
      :operand => {:campaign_id => campaign_id, :label_id => label_id}
    }
  end

  response = campaign_srv.mutate_label(operations)
  if response and response[:value]
    response[:value].each do |campaign_label|
      puts "Campaign label for campaign ID %d and label ID %d was added.\n" %
          [campaign_label[:campaign_id], campaign_label[:label_id]]
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    campaign_id_1 = 'INSERT_CAMPAIGN_ID_1_HERE'.to_i
    campaign_id_2 = 'INSERT_CAMPAIGN_ID_2_HERE'.to_i
    label_id = 'INSERT_LABEL_ID_HERE'.to_i
    add_campaign_labels([campaign_id_1, campaign_id_2], label_id)

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
