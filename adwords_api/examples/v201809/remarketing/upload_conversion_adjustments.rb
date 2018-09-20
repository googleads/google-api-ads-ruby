#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#        https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This code example imports conversion adjustments for conversions that already
# exist. To set up a conversion tracker, run the add_conversion_tracker.pl
# example.

require 'adwords_api'

def upload_conversion_adjustments(conversion_name, gclid, adjustment_type,
    conversion_time, adjustment_time, adjusted_value)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  adjustment_srv =
      adwords.service(:OfflineConversionAdjustmentFeedService, API_VERSION)

  # This example demonstrates adjusting one conversion, but you can add more
  # than one operation to adjust more in a single mutate request.
  operations = []

  # Associate conversion adjustments with the existing named conversion tracker.
  # The GCLID should have been uploaded before with a conversion.
  feed = {
    :xsi_type => 'GclidOfflineConversionAdjustmentFeed',
    :conversion_name => conversion_name,
    :google_click_id => gclid,
    :conversion_time => conversion_time,
    :adjustment_type => adjustment_type,
    :adjustment_time => adjustment_time,
    :adjusted_value => adjusted_value
  }

  operations << {
    :operator => 'ADD',
    :operand => feed
  }

  response = adjustment_srv.mutate(operations)
  new_feed = response[:value].first

  puts ('Uploaded offline conversion adjustment value of "%s" for Google ' +
      'Click ID "%s"') %
      [new_feed[:conversion_name], new_feed[:google_click_id]]
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    conversion_name = 'INSERT_CONVERSION_NAME_HERE'
    gclid = 'INSERT_GCLID_HERE'
    adjustment_type = 'INSERT_ADJUSTMENT_TYPE_HERE'
    conversion_time = 'INSERT_CONVERSION_TIME_HERE'
    adjustment_time = 'INSERT_ADJUSTMENT_TIME_HERE'
    adjusted_value = 'INSERT_ADJUSTED_VALUE_HERE'.to_f

    upload_conversion_adjustments(conversion_name, gclid, adjustment_type,
        conversion_time, adjustment_time, adjusted_value)

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
