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
# This example gets keyword traffic estimates.

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

  # Create a selector.
  selector = {
    :campaign_estimate_requests => [campaign_request],
    # Optional: Request a list of campaign level estimates segmented by
    # platform.
    :platform_estimate_requested => true
  }

  # Execute the request.
  response = traffic_estimator_srv.get(selector)

  # Display traffic estimates.
  if response and response[:campaign_estimates] and
      response[:campaign_estimates].size > 0
    campaign_estimate = response[:campaign_estimates].first

    unless campaign_estimate[:platform_estimates].nil?
      # Display the campaign level estimates segmented by platform.
      campaign_estimate[:platform_estimates].each do |platform_estimate|
        platform_message = ('Results for the platform with ID %d and name ' +
            '"%s":') % [platform_estimate[:platform][:id],
            platform_estimate[:platform][:platform_name]]
        display_mean_estimates(
            platform_message,
            platform_estimate[:min_estimate],
            platform_estimate[:max_estimate]
        )
      end
    end

    # Display the keyword estimates.
    keyword_estimates =
        campaign_estimate[:ad_group_estimates].first[:keyword_estimates]
    keyword_estimates.each_with_index do |keyword_estimate, index|
      next if keyword_requests[index][:is_negative]
      keyword = keyword_requests[index][:keyword]

      keyword_message = ('Results for the keyword with text "%s" and match ' +
          'type "%s":') % [keyword[:text], keyword[:match_type]]
      display_mean_estimates(
          keyword_message,
          keyword_estimate[:min],
          keyword_estimate[:max]
      )
    end
  else
    puts 'No traffic estimates were returned.'
  end
end

def display_mean_estimates(message, min_estimate, max_estimate)
  mean_average_cpc = nil
  unless min_estimate[:average_cpc].nil? || max_estimate[:average_cpc].nil?
    mean_average_cpc = calculate_mean(
        min_estimate[:average_cpc][:micro_amount],
        max_estimate[:average_cpc][:micro_amount]
    )
  end
  mean_average_position = calculate_mean(
      min_estimate[:average_position],
      max_estimate[:average_position]
  )
  mean_clicks = calculate_mean(
      min_estimate[:clicks_per_day],
      max_estimate[:clicks_per_day]
  )
  mean_total_cost = nil
  unless min_estimate[:total_cost].nil? || max_estimate[:total_cost].nil?
    mean_total_cost = calculate_mean(
        min_estimate[:total_cost][:micro_amount],
        max_estimate[:total_cost][:micro_amount]
    )
  end

  puts message
  puts "\tEstimated average CPC: %s" % format_mean(mean_average_cpc)
  puts "\tEstimated ad position: %s" % format_mean(mean_average_position)
  puts "\tEstimated daily clicks: %s" % format_mean(mean_clicks)
  puts "\tEstimated daily cost: %s" % format_mean(mean_total_cost)
end

def format_mean(mean)
  return "nil" if mean.nil?
  return "%.2f" % (mean / 1000000)
end

def calculate_mean(min_money, max_money)
  return nil if min_money.nil? || max_money.nil?
  return (min_money.to_f + max_money.to_f) / 2.0
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    estimate_keyword_traffic()

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
