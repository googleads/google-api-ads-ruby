#!/usr/bin/ruby
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
# This example shows how to use the 'validate only' header. No objects will be
# created, but exceptions will still be thrown.
#
# Tags: CampaignService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v200909

def check_campaigns()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Enable 'validate only'
  adwords.validate_only = true

  # Prepare for adding campaign.
  operation = {
    :operator => 'ADD',
    :operand => {
      :name => "Interplanetary Cruise #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :bidding_strategy => {
        # The 'xsi_type' field allows you to specify the xsi:type of the object
        # being created. It's only necessary when you must provide an explicit
        # type that the client library can't infer.
        :xsi_type => 'ManualCPC'
      },
      :budget => {
        :period => 'DAILY',
        :amount => {
          :micro_amount => 50000000
        },
        :delivery_method => 'STANDARD'
      }
    }
  }

  # Validate campaign add operation.
  response = campaign_srv.mutate([operation])
  if response and response[:value]
    campaigns = response[:value]
    campaigns.each do |campaign|
      puts "Unexpected campaign creation! Name '#{campaign[:name]}', ID " +
          "#{campaign[:id]} and status is '#{campaign[:status]}'."
    end
  else
    puts 'No campaigns created.'
  end

  # Provide an invalid bidding strategy that will cause an exception during
  # validation.
  operation = {
    :operator => 'ADD',
    :operand => {
      :name => "Interplanetary Cruise #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :bidding_strategy => nil,
      :budget => {
        :period => 'DAILY',
        :amount => {
          :micro_amount => 50000000
        },
        :delivery_method => 'STANDARD'
      }
    }
  }

  # Validate campaign add operation.
  begin
    response = campaign_srv.mutate([operation])
  rescue AdwordsApi::Errors::ApiException => e
    puts "Validation correctly failed: #{e.message}"
  end
end

if __FILE__ == $0
  begin
    check_campaigns()

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
