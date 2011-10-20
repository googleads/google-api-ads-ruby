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
# This example illustrates how to retrieve all the campaign targets. To set
# campaign targets, run set_campaign_targets.rb.
#
# Tags: CampaignTargetService.get

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201109

def get_all_campaign_targets()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_target_srv = adwords.service(:CampaignTargetService, API_VERSION)

  # Get all the campaign targets for this account.
  selector = {}
  response = campaign_target_srv.get(selector)
  if response and response[:entries]
    targets = response[:entries]
    targets.each do |target|
      puts "Campaign target of type %s for campaign ID %d was set." %
          [target[:target_list_type], target[:campaign_id]]
    end
  else
    puts 'No campaign targets found.'
  end
end

if __FILE__ == $0
  begin
    get_all_campaign_targets()

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
