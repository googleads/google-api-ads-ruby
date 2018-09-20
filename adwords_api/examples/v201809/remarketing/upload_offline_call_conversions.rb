#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This code example imports offline conversion values for calls related to ads
# in your account.
#
# To set up a conversion tracker, run the add_conversion_trackers.rb example.

require 'adwords_api'

def upload_offline_call_conversions(caller_id, call_start_time, conversion_name,
    conversion_time, conversion_value)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  occ_feed_srv =
      adwords.service(:OfflineCallConversionFeedService, API_VERSION)

  # Associate offline conversions with the existing named conversion tracker. If
  # this tracker was newly created, it may be a few hours before it can accept
  # conversions.
  feed = {
    :caller_id => caller_id,
    :call_start_time => call_start_time,
    :conversion_name => conversion_name,
    :conversion_time => conversion_time,
    :conversion_value => conversion_value
  }

  occ_operations = [{
    :operator => 'ADD',
    :operand => feed
  }]

  occ_response = occ_feed_srv.mutate(occ_operations)

  if occ_response[:value]
    occ_response[:value].each do |occ_feed|
      puts 'Uploaded offline call conversion value "%s" for caller ID "%s"' %
          [occ_feed[:conversion_name], occ_feed[:caller_id]]
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    caller_id = 'INSERT_CALLER_ID_HERE'
    # For times, use the format yyyyMMdd HHmmss tz. For more details on
    # formats, see:
    # https://developers.google.com/adwords/api/docs/appendix/codes-formats#date-and-time-formats
    # For time zones, see:
    # https://developers.google.com/adwords/api/docs/appendix/codes-formats#timezone-ids
    call_start_time = 'INSERT_CALL_START_TIME_HERE'
    conversion_name = 'INSERT_CONVERSION_NAME_HERE'
    conversion_time = 'INSERT_CONVERSION_TIME_HERE'
    conversion_value = 'INSERT_CONVERSION_VALUE_HERE'

    upload_offline_call_conversions(
        caller_id,
        call_start_time,
        conversion_name,
        conversion_time,
        conversion_value
    )

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
