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
# This example creates a new video ad unit under a the effective root ad unit.
# To determine which ad units exist, run get_inventory_tree.rb or
# get_all_ad_units.rb.
#
# This feature is only available to DFP premium solution networks.

require 'dfp_api'

API_VERSION = :v201505

def create_video_ad_unit()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the InventoryService.
  inventory_service = dfp.service(:InventoryService, API_VERSION)

  # Get the NetworkService.
  network_service = dfp.service(:NetworkService, API_VERSION)

  # Get the effective root ad unit ID of the network.
  effective_root_ad_unit_id =
      network_service.get_current_network[:effective_root_ad_unit_id]

  puts "Using effective root ad unit: %s" % effective_root_ad_unit_id.to_s

  # Create master ad unit size.
  master_ad_unit_size = {
      :size => {:width => 400, :height => 300, :is_aspect_ratio => false},
      :environment_type => 'VIDEO_PLAYER',
      # Add companions to master ad unit size.
      :companions => [
          {:size => {:width => 300, :height => 250, :is_aspect_ratio => false},
           :environment_type => 'BROWSER'},
          {:size => {:width => 728, :height => 90, :is_aspect_ratio => false},
           :environment_type => 'BROWSER'}
      ]
  }

  # Create local ad unit object.
  ad_unit = {
     :name => "Video_Ad_Unit_%d" % (Time.new.to_f * 1000).to_i,
     :parent_id => effective_root_ad_unit_id,
     :description => 'Video Ad unit description',
     :target_window => 'BLANK',
     :explicitly_targeted => true,
     :target_platform => 'WEB',
     # Set the size of possible creatives that can match this ad unit.
     :ad_unit_sizes => [master_ad_unit_size]
  }

  # Create the ad unit on the server.
  return_ad_unit = inventory_service.create_ad_unit(ad_unit)

  if return_ad_unit
    puts "Ad unit with ID: %d, name: %s and status: %s was created." %
        [return_ad_unit[:id], return_ad_unit[:name], return_ad_unit[:status]]
  else
    raise 'No ad units were created.'
  end
end

if __FILE__ == $0
  begin
    create_video_ad_unit()

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
