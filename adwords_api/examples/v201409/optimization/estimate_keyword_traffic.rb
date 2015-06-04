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
# This example gets keyword traffic estimates.
#
# Tags: TrafficEstimatorService.get

require 'adwords_api'

def estimate_keyword_traffic()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  traffic_estimator_srv = adwords.service(:TrafficEstimatorService, API_VERSION)

  # Create keywords. Up to 2000 keywords can be passed in a single request.
  keywords = [
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
    {:xsi_type => 'Keyword', :text => 'mars cruise', :match_type => 'BROAD'},
    {:xsi_type => 'Keyword', :text => 'cheap cruise', :match_type => 'PHRASE'},
    {:xsi_type => 'Keyword', :text => 'cruise', :match_type => 'EXACT'},
    {:xsi_type => 'Keyword', :text => 'moon walk', :match_type => 'BROAD'}
  ]

  # Create a keyword estimate request for each keyword.
  keyword_requests = keywords.map {|keyword| {:keyword => keyword}}

  # Negative keywords don't return estimates, but adjust the estimates of the
  # other keywords in the hypothetical ad group. To specify a negative keyword
  # set the is_negative field to true.
  keyword_requests[3][:is_negative] = true

  # Create ad group estimate requests.
  ad_group_request = {
      :keyword_estimate_requests => keyword_requests,
      :max_cpc => {
          :micro_amount => 1000000
      }
  }

  # Create campaign estimate requests.
  campaign_request = {
      :ad_group_estimate_requests => [ad_group_request],
      # Set targeting criteria. Only locations and languages are supported.
      :criteria => [
          {:xsi_type => 'Location', :id => 2840}, # United States
          {:xsi_type => 'Language', :id => 1000}  # English
      ]
  }

  # Create selector and retrieve reults.
  selector = {:campaign_estimate_requests => [campaign_request]}
  response = traffic_estimator_srv.get(selector)

  if response and response[:campaign_estimates]
    campaign_estimates = response[:campaign_estimates]
    keyword_estimates =
        campaign_estimates.first[:ad_group_estimates].first[:keyword_estimates]
    keyword_estimates.each_with_index do |estimate, index|
      keyword = keyword_requests[index][:keyword]

      # Find the mean of the min and max values.
      mean_avg_cpc = calculate_mean(
          estimate[:min][:average_cpc][:micro_amount],
          estimate[:max][:average_cpc][:micro_amount]
      )
      mean_avg_position = calculate_mean(
          estimate[:min][:average_position],
          estimate[:max][:average_position]
      )
      mean_clicks = calculate_mean(
          estimate[:min][:clicks_per_day],
          estimate[:max][:clicks_per_day]
      )
      mean_total_cost = calculate_mean(
          estimate[:min][:total_cost][:micro_amount],
          estimate[:max][:total_cost][:micro_amount]
      )

      puts "Results for the keyword with text '%s' and match type %s:" %
          [keyword[:text], keyword[:match_type]]
      puts "\tEstimated average CPC: %s" % format_mean(mean_avg_cpc)
      puts "\tEstimated ad position: %s" % format_mean(mean_avg_position)
      puts "\tEstimated daily clicks: %s" % format_mean(mean_clicks)
      puts "\tEstimated daily cost: %s" % format_mean(mean_total_cost)
    end
  else
    puts 'No traffic estimates were returned.'
  end
end

def format_mean(mean)
  return "nil" if mean.nil?
  return "%.2f" % mean
end

def calculate_mean(min_money, max_money)
  return nil if min_money.nil? || max_money.nil?
  return (min_money.to_f + max_money.to_f) / 2.0
end

if __FILE__ == $0
  API_VERSION = :v201409

  begin
    estimate_keyword_traffic()

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
