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
# This example uploads an image. To get images, run get_all_images.rb.
#
# Tags: MediaService.upload

require 'adwords_api'
require 'base64'

def upload_image()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  media_srv = adwords.service(:MediaService, API_VERSION)

  # Create image.
  image_url =
      'http://www.google.com/intl/en/adwords/select/images/samples/inline.jpg'
  # This utility method retrieves the contents of a URL using all of the config
  # options provided to the Api object.
  image_data = AdsCommon::Http.get(image_url, adwords.config)
  base64_image_data = Base64.encode64(image_data)
  image = {
    # The 'xsi_type' field allows you to specify the xsi:type of the object
    # being created. It's only necessary when you must provide an explicit
    # type that the client library can't infer.
    :xsi_type => 'Image',
    :data => base64_image_data,
    :type => 'IMAGE'
  }

  # Upload image.
  response = media_srv.upload([image])
  if response and !response.empty?
    ret_image = response.first
    full_dimensions = ret_image[:dimensions]['FULL']
    puts ("Image with ID %d, dimensions %dx%d and MIME type '%s' uploaded " +
        "successfully.") % [ret_image[:media_id], full_dimensions[:height],
         full_dimensions[:width], ret_image[:mime_type]]
  else
    puts 'No images uploaded.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    upload_image()

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
