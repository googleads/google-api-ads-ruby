#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example gets bid landscapes for a keyword. To get keywords, run
# get_keywords.rb.

require 'adwords_api'

def get_criterion_bid_landscapes(ad_group_id, keyword_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  data_srv = adwords.service(:DataService, API_VERSION)

  # Get keyword bid landscape.
  query_builder = adwords.service_query_builder do |b|
    b.select(%w[
      AdGroupId CriterionId StartDate EndDate Bid BiddableConversions
      BiddableConversionsValue LocalClicks LocalCost LocalImpressions
    ])
    b.where('AdGroupId').equal_to(ad_group_id)
    b.where('CriterionId').equal_to(keyword_id)
    b.limit(0, PAGE_SIZE)
  end
  query = query_builder.build

  loop do
    # Request the next page of bid landscapes.
    page = data_srv.query_criterion_bid_landscape(query.to_s)

    if page and page[:entries]
      puts "Bid landscape(s) retrieved: %d." % [page[:entries].length]
      page[:entries].each do |bid_landscape|
        puts ("Retrieved keyword bid landscape with ad group ID %d" +
            ", keyword ID %d, start date '%s', end date '%s'" +
            ", with landscape points:") %
            [bid_landscape[:ad_group_id], bid_landscape[:criterion_id],
            bid_landscape[:start_date], bid_landscape[:end_date]]
        bid_landscape[:landscape_points].each do |point|
          landscape_points_in_previous_page += 1
          puts ("\t%d => clicks: %d, cost: %d, impressions: %d, biddable " +
              "conversions: %.2f, biddable conversions value: %.2f") %
              [point[:bid][:micro_amount], point[:clicks],
              point[:cost][:micro_amount], point[:impressions],
              point[:biddable_conversions], point[:biddable_conversions_value]]
        end
      end
    end
    break unless query.has_next_landscape_page(page)
    query.next_page()
  end
end

if __FILE__ == $0
  API_VERSION = :v201809
  PAGE_SIZE = 100

  begin
    ad_group_id = 'INSERT_ADGROUP_ID_HERE'.to_i
    keyword_id = 'INSERT_KEYWORD_ID_HERE'.to_i
    get_criterion_bid_landscapes(ad_group_id, keyword_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

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
