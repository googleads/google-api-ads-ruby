#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example illustrates how to retrieve all images. To upload an image, run
# upload_image.rb.
#
# Tags: MediaService.get

require 'rubygems'
require 'adwords_api'
require 'adwords_api/utils'

API_VERSION = :v201109

def get_all_images()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  media_srv = adwords.service(:MediaService, API_VERSION)

  # Get all the images.
  selector = {
    :fields => ['MediaId', 'Height', 'Width', 'MimeType', 'Urls'],
    :ordering => [{:field => 'MediaId', :sort_order => 'ASCENDING'}],
    :predicates => [{:field => 'Type', :operator => 'IN', :values => ['IMAGE']}]
  }
  response = media_srv.get(selector)
  if response and response[:entries]
    images = response[:entries]
    puts "#{images.length} images(s) found."
    images.each do |image|
      dimensions = AdwordsApi::Utils.map(image[:dimensions])
      puts "  Image id is #{image[:media_id]}, dimensions are " +
          "#{dimensions['FULL'][:height]}x#{dimensions['FULL'][:width]} " +
          "and MIME type is \"#{image[:mime_type]}\"."
    end
  else
    puts "No images found."
  end
end

if __FILE__ == $0
  begin
    get_all_images()

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
