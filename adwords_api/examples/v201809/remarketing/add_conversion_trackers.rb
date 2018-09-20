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
# This example illustrates how to add an AdWords conversion tracker and an
# upload conversion tracker.

require 'adwords_api'

def add_conversion_trackers()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  conv_tracker_srv = adwords.service(:ConversionTrackerService, API_VERSION)
  # Prepare for adding AdWords conversion tracker.
  operation1 = {
    :operator => 'ADD',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'AdWordsConversionTracker',
      :name => "Earth to Mars Cruises Conversion #%d" %
          (Time.new.to_f * 1000).to_i,
      :category => 'DEFAULT',
      # Optional fields:
      :status => 'ENABLED',
      :viewthrough_lookback_window => 15,
      :default_revenue_value => 23.41,
      :always_use_default_revenue_value => true
    }
  }

  # Prepare for adding upload conversion tracker.
  operation2 = {
    :operator => 'ADD',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'UploadConversion',

      # Set an appropriate category. This field is optional, and will be set to
      # DEFAULT if not mentioned.
      :category => 'LEAD',
      :name => "Upload Conversion #%d" % (Time.new.to_f * 1000).to_i,
      :viewthrough_lookback_window => 30,
      :ctc_lookback_window => 90,

      # Optional: Set the default currency code to use for conversions that do
      # not specify a conversion currency. This must be an ISO 4217 3-character
      # currency code such as "EUR" or "USD".
      # If this field is not set on this UploadConversion, AdWords will use the
      # account currency.
      :default_revenue_currency_code => 'EUR',

      # Optional: Set the default revenue value to use for conversions that do
      # not specify a conversion value.
      # Note: that this value should NOT be in micros.
      :default_revenue_value => 2.50,

      # Optional: To upload fractional conversion credits, mark the upload
      # conversion as externally attributed. See
      # https://developers.google.com/adwords/api/docs/guides/conversion-tracking#importing_externally_attributed_conversions
      # to learn more about importing externally attributed conversions.
      #:is_externally_attributed => true
    }
  }

  # Add conversion trackers.
  response = conv_tracker_srv.mutate([operation1, operation2])
  if response and response[:value]
    response[:value].each do |tracker|
      puts ("\nConversion tracker with ID %d, name '%s', status '%s' and " +
          "category '%s' was added.") % [tracker[:id], tracker[:name],
          tracker[:status], tracker[:category]]
      if tracker[:xsi_type] == 'AdWordsConversionTracker'
        puts "Google global site tag:\n%s\n" % tracker[:google_global_site_tag]
        puts "Google event snippet:\n%s\n" % tracker[:google_event_snippet]
      end
    end
  else
    puts 'No conversion trackers were added.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    add_conversion_trackers()

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
