#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example illustrates how to update a campaign, setting its budget delivery
# to 'ACCELERATED'. To create a campaign, run add_campaign.rb.
#
# Tags: CampaignService.mutate

require 'adwords_api'

def update_campaign(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Prepare for updating campaign.
  operation = {
    :operator => 'SET',
    :operand => {
      :id => campaign_id,
      :budget => {
        :delivery_method => 'ACCELERATED'
      }
    }
  }

  # Update campaign.
  response = campaign_srv.mutate([operation])
  if response and response[:value]
    campaign = response[:value].first
    puts 'Campaign id %d successfully updated, delivery method set to %s.' %
        [campaign[:id], campaign[:budget][:delivery_method]]
  else
    puts 'No campaigns were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    # ID of a campaign to update.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    update_campaign(campaign_id)

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
