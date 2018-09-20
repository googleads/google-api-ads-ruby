#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This example uploads an HTML5 zip file.

require 'adwords_api'
require 'base64'

def upload_media_bundle()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  media_srv = adwords.service(:MediaService, API_VERSION)

  # Create HTML5 media.
  html5_url = 'https://goo.gl/9Y7qI2'
  # This utility method retrieves the contents of a URL using all of the config
  # options provided to the Api object.
  html5_data = AdsCommon::Http.get(html5_url, adwords.config)
  base64_html5_data = Base64.encode64(html5_data)
  media_bundle = {
    :xsi_type => 'MediaBundle',
    :data => base64_html5_data,
    :type => 'MEDIA_BUNDLE'
  }

  # Upload HTML5 zip.
  response = media_srv.upload([media_bundle])
  if response and !response.empty?
    ret_html5 = response.first
    full_dimensions = ret_html5[:dimensions]['FULL']
    puts ("HTML5 media with ID %d, dimensions %dx%d and MIME type '%s' " +
        "uploaded successfully.") % [ret_html5[:media_id],
        full_dimensions[:height], full_dimensions[:width],
        ret_html5[:mime_type]]
  else
    puts 'No HTML5 zip was uploaded.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    upload_media_bundle()

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
