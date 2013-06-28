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
# This example illustrates how to retrieve stats for a video campaign.
#
# Note: AdWords for Video API is a Beta feature.
#
# Tags: VideoCampaignService.get

require 'adwords_api'
require 'date'

def get_campaign_stats(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  video_campaign_srv = adwords.service(:VideoCampaignService, API_VERSION)

  # Preparing dates to get stats for this year.
  today = Date.today
  min_date_time = today.strftime("%Y0101")
  max_date_time = today.strftime("%Y%m%d")

  # Get stats for the campaign for given dates.
  selector = {
    :ids => [campaign_id],
    :stats_selector => {
      :date_range => {:min => min_date_time, :max => max_date_time},
      :segmentation_dimensions => ['DATE_MONTH'],
      :metrics => ['VIEWS', 'COST', 'AVERAGE_CPV'],
      :summary_types => ['ALL'],
      :segmented_summary_type => 'ALL'
    },
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  page = video_campaign_srv.get(selector)
  if page[:entries]
    campaign = page[:entries].first
    puts "Campaign ID %d, name '%s' and status '%s'" %
        [campaign[:id], campaign[:name], campaign[:status]]
    if campaign[:stats]
      puts "\tCampaign stats:"
      puts "\t\t" + format_stats(campaign[:stats])
    end
    if campaign[:segmented_stats]
      campaign[:segmented_stats].each do |stats|
        segment_key_str = stats[:segment_key][:date_key][:date]
        puts "\tCampaign segmented stat for month of %s" % segment_key_str
        puts "\t\t" + format_stats(stats)
      end
    end
  end
  if page[:summary_stats]
    page[:summary_stats].each do |stats|
      puts "\tSummary of type %s" % stats[:summary_type]
      puts "\t\t" + format_stats(stats)
    end
  end
end

def format_stats(stats)
 return ("Views: %s, Cost: %s, Avg. CPC: %s, Avg. CPV: %s, " +
         "Avg. CPM: %s, 25%%: %s, 50%%: %s, 75%%: %s, 100%%: %s") % [
     stats[:views].nil? ? '--' : stats[:views],
     stats[:cost].nil? ? '--' : stats[:cost][:micro_amount],
     stats[:average_cpc].nil? ? '--' : stats[:average_cpc][:micro_amount],
     stats[:average_cpv].nil? ? '--' : stats[:average_cpv][:micro_amount],
     stats[:average_cpm].nil? ? '--' : stats[:average_cpm][:micro_amount],
     stats[:quartile25_percents].nil? ? '--' : stats[:quartile25_percents],
     stats[:quartile50_percents].nil? ? '--' : stats[:quartile50_percents],
     stats[:quartile75_percents].nil? ? '--' : stats[:quartile75_percents],
     stats[:quartile100_percents].nil? ? '--' : stats[:quartile100_percents]
 ]
end

if __FILE__ == $0
  API_VERSION = :v201302
  PAGE_SIZE = 500

  begin
    # Campaign ID to get stats for.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    get_campaign_stats(campaign_id)

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts 'HTTP Error: %s' % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'Message: %s' % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
