#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2022, Google LLC
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
# This example creates a new video creative for a given advertiser. To
# determine which companies are advertisers, run get_companies_by_statement.rb.
# To determine which creatives already exist, run get_all_creatives.rb.

require 'securerandom'
require 'ad_manager_api'

def create_video_creative(ad_manager, advertiser_id)
  # Get the CreativeService.
  creative_service = ad_manager.service(:CreativeService, API_VERSION)

  # Create the local video creative object.
  creative = {
      :xsi_type => 'VideoCreative',
      :name => 'Video creative - %s' % SecureRandom.uuid(),
      :advertiser_id => advertiser_id,
      :size => {:width => 640, :height => 360, :is_aspect_ratio => false},
      :destination_url => 'https://google.com',
      :duration => 115_000,
      :video_source_url => 'https://storage.googleapis.com/' +
          'interactive-media-ads/media/android.mp4'
  }

  # Create the creatives on the server.
  created_creatives = creative_service.create_creatives([creative])

  if created_creatives.to_a.size > 0
    created_creatives.each do |creative|
      puts ('Video creative with ID %d and name "%s" was created and can be ' +
          'previewed at "%s".') % [creative[:id], creative[:name],
          creative[:vast_preview_url]]
    end
  else
    puts 'No creatives were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v202302

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    advertiser_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'.to_i
    create_video_creative(ad_manager, advertiser_id)

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdManagerApi::Errors::ApiException => e
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
