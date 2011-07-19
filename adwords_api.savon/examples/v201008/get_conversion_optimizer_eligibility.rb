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
# This example shows how to check for conversion optimizer eligibility by
# examining the conversion_optimizer_eligibility field of the Campaign.
#
# Tags: CampaignService.get

require 'rubygems'
require 'adwords_api'
require 'pp'

API_VERSION = :v201008

def get_conversion_optimizer_eligibility()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Get campaign.
  selector = {
    :ids => [campaign_id]
  }
  response = campaign_srv.get(selector)

  if response and response[:entries]
    campaigns = response[:entries]
    campaigns.each do |campaign|
      eligibility = campaign[:conversion_optimizer_eligibility]
      if eligibility[:eligible]
        puts "Campaign with name is \"#{campaign[:name]}\" and id " +
            "#{campaign[:id]} is eligible to use the conversion optimizer."
      else
        puts "Campaign with name is \"#{campaign[:name]}\" and id " +
            "#{campaign[:id]} is not eligible to use the conversion " +
            "optimizer for the reasons: " +
            eligibility[:rejection_reasons].pretty_inspect
      end
    end
  else
    puts "No campaigns were found."
  end
end

if __FILE__ == $0
  begin
    get_conversion_optimizer_eligibility()

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
