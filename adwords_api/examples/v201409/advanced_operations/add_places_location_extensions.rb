#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This example adds a feed that syncs feed items from a Google Places account
# and associates the feed with a customer.
#
# Tags: CustomerFeedService.mutate, FeedService.mutate

require 'adwords_api'
require 'date'

def add_places_location_extensions(places_email_address, places_access_token)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  feed_srv = adwords.service(:FeedService, API_VERSION)
  customer_feed_srv = adwords.service(:CustomerFeedService, API_VERSION)

  places_feed = {
    :name => "Places feed #%d" % (Time.new.to_f * 1000).to_i,
    :system_feed_generation_data => {
      :xsi_type => 'PlacesLocationFeedData',
      :o_auth_info => {
        :http_method => 'GET',
        :http_request_url => 'https://www.google.com/local/add',
        :http_authorization_header => "Bearer %s" % places_access_token
      },
      :email_address => places_email_address
    },
    # Since this feed's feed items will be managed by AdWords, you must set
    # its origin to ADWORDS.
    :origin => 'ADWORDS'
  }

  places_operation = {
    :operator => 'ADD',
    :operand => places_feed
  }

  result = feed_srv.mutate([places_operation])
  added_feed = result[:value].first
  puts "Added places feed with ID %d" % added_feed[:id]

  # Add a CustomerFeed that associates the feed with this customer for the
  # LOCATION placeholder type.
  customer_feed = {
    :feed_id => added_feed[:id],
    :placeholder_types => PLACEHOLDER_TYPE_LOCATION,
    :matching_function => {
      :operator => 'IDENTITY',
      :lhsOperand => {
        :xsi_type => 'FunctionArgumentOperand',
        :type => 'BOOLEAN',
        :boolean_value => true
      }
    }
  }

  customer_feed_operation = {
    :xsi_type => 'CustomerFeedOperation',
    :operator => 'ADD',
    :operand => customer_feed
  }

  added_customer_feed = nil
  number_of_attempts = 0
  while i < MAX_CUSTOMER_FEED_ADD_ATTEMPTS && !added_customer_feed
    number_of_attempts += 1
    begin
      result = customer_feed_srv.mutate([customer_feed_operation])
      added_customer_feed = result[:value].first
      puts "Attempt #%d to add the CustomerFeed was successful" %
          number_of_attempts
    rescue
      sleep_seconds = 5 * (2 ** number_of_attempts)
      puts ("Attempt #%d to add the CustomerFeed was not succeessful. " +
          "Waiting %d seconds before trying again.") %
          [number_of_attempts, sleep_seconds]
      sleep(sleep_seconds)
    end
  end

  unless added_customer_feed
    raise StandardError, ("Could not create the CustomerFeed after %d " +
        "attempts. Please retry the CustomerFeed ADD operation later.") %
        MAX_CUSTOMER_FEED_ADD_ATTEMPTS
  end

  puts "Added CustomerFeed for feed ID %d and placeholder type %d" %
      [added_customer_feed[:id], added_customer_feed[:placeholder_types].first]

  # OPTIONAL: Create a CampaignFeed to specify which FeedItems to use at the
  # Campaign level. This will be similar to the CampaignFeed in the
  # add_site_links example, except you can filter based on the business name
  # and category of each FeedItem by using a FeedAttributeOperand in your
  # matching function.

  # OPTIONAL: Create an AdGroupFeed for even more fine grained control over
  # which feed items are used at the AdGroup level.
end

if __FILE__ == $0
  API_VERSION = :v201409
  PLACEHOLDER_TYPE_LOCATION = 7
  MAX_CUSTOMER_FEED_ADD_ATTEMPTS = 10

  begin
    places_email_address = 'INSERT_PLACES_EMAIL_ADDRESS_HERE'
    places_access_token = 'INSERT_PLACES_ACCESS_TOKEN_HERE'

    add_places_location_extensions(places_email_address, places_access_token)

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
