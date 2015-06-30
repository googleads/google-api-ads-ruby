#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
#
# Tags: DataService.getCriterionBidLandscape

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
  selector = {
    :fields => ['AdGroupId', 'CriterionId', 'StartDate', 'EndDate', 'Bid',
        'LocalClicks', 'LocalCost', 'LocalImpressions'],
    :predicates => [
      {:field => 'AdGroupId', :operator => 'IN', :values => [ad_group_id]},
      {:field => 'CriterionId', :operator => 'IN', :values => [keyword_id]},
    ]
  }
  page = data_srv.get_criterion_bid_landscape(selector)
  if page and page[:entries]
    puts "Bid landscape(s) retrieved: %d." % [page[:entries].length]
    page[:entries].each do |bid_landscape|
      puts ("Retrieved keyword bid landscape with ad group ID %d" +
          ", keyword ID %d, start date '%s', end date '%s'" +
          ", with landscape points:") %
          [bid_landscape[:ad_group_id], bid_landscape[:criterion_id],
           bid_landscape[:start_date], bid_landscape[:end_date]]
      bid_landscape[:landscape_points].each do |point|
        puts "\t%d => clicks: %d, cost: %d, impressions: %d" %
            [point[:bid][:micro_amount], point.clicks,
             point[:cost][:micro_amount], point[:impressions]]
      end
    end
  else
    puts 'No bid landscapes retrieved.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

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
