#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This example demonstrates how to retrieve all campaign-level criteria.
#
# Note: AdWords for Video API is a Beta feature.
#
# Tags: VideoCampaignCriterionService.get

require 'adwords_api'

def get_video_campaign_criteria(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  vtgc_srv =
      adwords.service(:VideoCampaignCriterionService, API_VERSION)

  # Get all criteria for the campaign.
  selector = {
    :campaign_ids => [campaign_id],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  begin
    page = vtgc_srv.get(selector)
    if page[:entries]
      page[:entries].each do |criterion|
        negative_str =
            (criterion[:xsi_type] == 'NegativeVideoCampaignCriterion') ?
            ' negative' : ''
        puts "Video%s criterion ID %d or type '%s'" % [negative_str,
            criterion[:criterion][:id], criterion[:criterion][:xsi_type]]
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  if page.include?(:total_num_entries)
    puts "\tTotal number of criteria found: %d." % [page[:total_num_entries]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201209
  PAGE_SIZE = 500

  begin
    # Campaign ID to get criteria for.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

    get_video_campaign_criteria(campaign_id)

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
