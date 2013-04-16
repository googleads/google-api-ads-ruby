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
# This example illustrates how to find YouTube videos by a search string. It
# retrieve details for the first 100 matching videos.
#
# Note: AdWords for Video API is a Beta feature.
#
# Tags: VideoService.search

require 'adwords_api'

def find_videos()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  video_srv = adwords.service(:VideoService, API_VERSION)

  # Search string to use.
  query_str = 'AdWords API with Ruby'

  # Create a selector.
  selector = {
    :search_type => 'VIDEO',
    :query => query_str,
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Run the query.
  page = video_srv.search(selector)

  if page[:entries]
    page[:entries].each do |video|
      puts "YouTube video ID '%s' with title '%s' found." %
          [video[:id], video[:title]]
    end
    if page.include?(:total_num_entries)
      puts "\tTotal number of matching videos: %d." % [page[:total_num_entries]]
    end
  else
    puts "No videos matching '%s' were found." % query_str
  end
end

if __FILE__ == $0
  API_VERSION = :v201209
  PAGE_SIZE = 100

  begin
    find_videos()

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
