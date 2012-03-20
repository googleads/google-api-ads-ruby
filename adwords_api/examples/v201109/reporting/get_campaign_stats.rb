#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This example gets various statistics for campaigns that received at least one
# impression during the last week. To get campaigns, run get_campaigns.rb.
#
# Tags: CampaignService.get

require 'adwords_api'
require 'date'

def get_campaign_stats()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Prepare start and end date for the last week.
  start_date = DateTime.parse((Date.today - 7).to_s).strftime("%Y%m%d")
  end_date = DateTime.parse((Date.today - 1).to_s).strftime("%Y%m%d")

  # Get all the campaigns for this account.
  selector = {
    :fields => ['Id', 'Name', 'Impressions', 'Clicks', 'Cost', 'Ctr'],
    :predicates => [
      {:field => 'Impressions', :operator => 'GREATER_THAN', :values => [0]}
    ],
    :date_range => {:min => start_date, :max => end_date},
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  begin
    page = campaign_srv.get(selector)
    if page[:entries]
      page[:entries].each do |campaign|
        puts ("Campaign with ID %d, name '%s' had the following stats during" +
            " the last week: ") % [campaign[:id], campaign[:name]]
        stats = campaign[:campaign_stats]
        puts "\tImpressions: %d" % stats[:impressions]
        puts "\tClicks:      %d" % stats[:clicks]
        puts "\tCost:        %.2f" % (stats[:cost][:micro_amount] / 1000000)
        puts "\tCTR:         %.2f%%" % (stats[:ctr] * 100)
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  if page.include?(:total_num_entries)
    puts "Total number of campaigns found: %d." % [page[:total_num_entries]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201109
  PAGE_SIZE = 500

  begin
    get_campaign_stats()

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
