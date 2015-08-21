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
# This example creates new image creatives for a given advertiser. To determine
# which companies are advertisers, run get_companies_by_statement.rb. To
# determine which creatives already exist, run get_all_creatives.rb.
#
# Tags: CreativeService.createCreatives

require 'base64'
require 'dfp_api'

API_VERSION = :v201505
# Number of creatives to create.
ITEM_COUNT = 5

def create_creatives()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeService.
  creative_service = dfp.service(:CreativeService, API_VERSION)

  # Set the ID of the advertiser (company) that all creatives will be assigned
  # to.
  advertiser_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'.to_i

  # Prepare image data for creative.
  image_url =
      'http://www.google.com/intl/en/adwords/select/images/samples/inline.jpg'
  image_data = AdsCommon::Http.get(image_url, dfp.config)
  image_data_base64 = Base64.encode64(image_data)
  size = {:width => 300, :height => 250}

  # Create an array to store local creative objects.
  creatives = (1..ITEM_COUNT).map do |index|
    {
        :xsi_type => 'ImageCreative',
        :name => "Image creative #%d-%d" % [index, (Time.new.to_f * 1000).to_i],
        :advertiser_id => advertiser_id,
        :destination_url => 'http://www.google.com',
        :size => size,
        :primary_image_asset => {
            :file_name => 'image.jpg',
            :asset_byte_array => image_data_base64,
            :size => size
        }
    }
  end

  # Create the creatives on the server.
  return_creatives = creative_service.create_creatives(creatives)

  if return_creatives
    return_creatives.each do |creative|
      if creative[:creative_type] == 'ImageCreative'
        puts ("Image creative with ID: %d, name: %s, size: %dx%d was " +
            "created and can be previewed at: [%s]") %
            [creative[:id], creative[:name],
             creative[:size][:width], creative[:size][:height],
             creative[:preview_url]]
      else
        puts "Creative with ID: %d, name: %s and type: %s was created." %
            [creative[:id], creative[:name], creative[:creative_type]]
      end
    end
  else
    raise 'No creatives were created.'
  end
end

if __FILE__ == $0
  begin
    create_creatives()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
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
