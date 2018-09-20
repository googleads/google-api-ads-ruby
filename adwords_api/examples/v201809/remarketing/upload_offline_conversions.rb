#!/usr/bin/env ruby
# Encoding: utf-8
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
# This code example imports offline conversion values for specific clicks to
# your account. To get Google Click ID for a click, run
# CLICK_PERFORMANCE_REPORT. To set up a conversion tracker, run the
# add_conversion_trackers.rb example.

require 'adwords_api'
require 'date'

def upload_offline_conversions(conversion_name, google_click_id,
                               conversion_time, conversion_value)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  conversion_feed_srv =
      adwords.service(:OfflineConversionFeedService, API_VERSION)

  # Associate offline conversions with the existing named conversion tracker. If
  # this tracker was newly created, it may be a few hours before it can accept
  # conversions.
  feed = {
    :conversion_name => conversion_name,
    :google_click_id => google_click_id,
    :conversion_time => conversion_time,
    :conversion_value => conversion_value
  }

  # Optional: To upload fractional conversion credits, set the external
  # attribution model and credit. To use this feature, your conversion tracker
  # should be marked as externally attributed. See
  # https://developers.google.com/adwords/api/docs/guides/conversion-tracking#importing_externally_attributed_conversions
  # to learn more about importing externally attributed conversions.
  #
  # feed[:external_attribution_model] = "Linear"
  # feed[:external_attribution_credit] = 0.3

  return_feeds = conversion_feed_srv.mutate([
    {:operator => 'ADD', :operand => feed}])
  return_feeds[:value].each do |return_feed|
    puts ("Uploaded offline conversion value %.2f for Google Click ID '%s', " +
        'to %s') % [return_feed[:conversion_value],
                    return_feed[:google_click_id],
                    return_feed[:conversion_name]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    # Name of the conversion tracker to upload to.
    conversion_name = 'INSERT_CONVERSION_NAME_HERE'
    # Google Click ID of the click for which offline conversions are uploaded.
    google_click_id = 'INSERT_GOOGLE_CLICK_ID_HERE'
    # Conversion time in 'yyyymmdd hhmmss' format.
    conversion_time = Time.new.strftime("%Y%m%d %H%M%S")
    # Conversion value to be uploaded.
    conversion_value = 'INSERT_CONVERSION_VALUE_HERE'.to_f

    upload_offline_conversions(conversion_name, google_click_id,
                               conversion_time, conversion_value)

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
