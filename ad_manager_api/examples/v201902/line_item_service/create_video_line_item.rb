#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2019 Google LLC
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
# This example create a new line item to serve to video content. To determine
# which line items exist, run get_all_line_items.rb. To determine which orders
# exist, run get_all_orders.rb. To determine which CmsMetadataValues exist, run
# get_all_cms_metadata_values.rb To create a video ad unit, run
# create_video_ad_unit.rb.
#
# This feature is only available to Ad Manager 360 networks.

require 'securerandom'
require 'ad_manager_api'

def create_video_line_item(ad_manager, order_id, targeted_video_ad_unit_id,
    content_id, content_bundle_id, cms_metadata_value_id)
  # Get the LineItemService.
  line_item_service = ad_manager.service(:LineItemService, API_VERSION)

  # Create content targeting.
  content_targeting = {
    :targeted_content_ids => [content_id],
    :targeted_video_content_bundle_ids => [content_bundle_id]
  }

  # Create inventory targeting.
  inventory_targeting = {
    :targeted_ad_units => [{:ad_unit_id => targeted_video_ad_unit_id}]
  }

  # Target only video platforms.
  request_platform_targeting = {
    :targeted_request_platforms => ['VIDEO_PLAYER']
  }

  # Create position targeting.
  video_position_target = {}
  video_position = {:position_type => 'PREROLL'}
  video_position_target[:video_position] = video_position
  # Alternate ways to target video positions. See the documentation for
  # VideoPositionTarget for more information:
  # https://developers.google.com/ad-manager/docs/reference/v201902/LineItemService.VideoPositionTarget
  # video_position_target[:video_bumper_type] = 'BEFORE'
  # video_position_target[:video_position_within_pid] = 1  # index from 1 to 100
  # video_position_target[:ad_slot_id] = INSERT_AD_SLOT_ID_HERE
  video_position_targeting = {
    :targeted_positions => [video_position_target],
  }

  # Create custom targeting for a list of CmsMetadataValues.
  content_custom_criteria = {
    :xsi_type => 'CmsMetadataCriteria',
    :cms_metadata_value_ids => [cms_metadata_value_id],
    :operator => 'EQUALS'
  }

  custom_criteria_set = {
    :logical_operator => 'AND',
    :children => [content_custom_criteria]
  }

  # Create targeting.
  targeting = {
    :content_targeting => content_targeting,
    :inventory_targeting => inventory_targeting,
    :video_position_targeting => video_position_targeting,
    :request_platform_targeting => request_platform_targeting,
    :custom_targeting => custom_criteria_set
  }

  # Create local line item object.
  line_item = {
    :name => 'Video line item - %s' % SecureRandom.uuid(),
    :order_id => order_id,
    :targeting => targeting,
    :line_item_type => 'SPONSORSHIP',
    :allow_overbook => true,
    # Set the environment type to video.
    :environment_type => 'VIDEO_PLAYER',
    # Set the creative rotation type to optimized.
    :creative_rotation_type => 'OPTIMIZED',
    # Set delivery of video companions to optional.
    :companion_delivery_option => 'OPTIONAL',
    # Set the length of the line item to run.
    :start_date_time_type => 'IMMEDIATELY',
    :end_date_time => ad_manager.datetime(
      Date.today.year + 1, 9, 30, 0, 0, 0, 'America/New_York'
    ).to_h,
    # Set the cost per day to $1.
    :cost_type => 'CPD',
    :cost_per_unit => {:currency_code => 'USD', :micro_amount => 1_000_000},
    # Set the percentage to be 100%.
    :primary_goal => {
      :units => 100,
      :unit_type => 'IMPRESSIONS',
      :goal_type => 'DAILY'
    }
  }

  # Create the master creative placeholder and companion creative placeholders.
  creative_master_placeholder = {
    :size => {:width => 400, :height => 300, :is_aspect_ratio => false},
    :companions => [
      {:size => {:width => 300, :height => 250, :is_aspect_ratio => false}},
      {:size => {:width => 728, :height => 90, :is_aspect_ratio => false}}
    ]
  }

  # Set the size of creatives that can be associated with this line item.
  line_item[:creative_placeholders] = [creative_master_placeholder]

  # Create the line item on the server.
  created_line_items = line_item_service.create_line_items([line_item])

  if created_line_items.to_a.size > 0
    created_line_items.each do |created_line_item|
      puts ('Line item with ID %d, belonging to order ID %d, and named "%s" ' +
          'was created.') % [created_line_item[:id],
          created_line_item[:order_id], created_line_item[:name]]
    end
  else
    puts 'No line items were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    # Set the order that the created line item will belong to and the video ad
    # unit ID to target.
    order_id = 'INSERT_ORDER_ID_HERE'.to_i
    targeted_video_ad_unit_id = 'INSERT_VIDEO_AD_UNIT_ID_HERE'.to_i

    # Set a content id and content bundle id for targeting. Content represents
    # video metadata from a publisher's CMS. You can fetch these entities from
    # the ContentService and the ContentBundleService.
    content_id = 'INSERT_CONTENT_ID_HERE'.to_i
    content_bundle_id = 'INSERT_CONTENT_BUNDLE_ID_HERE'.to_i

    # Set a CmsMetadataValue id to be set on the CustomTargeting for the
    # created LineItem.
    cms_metadata_value_id = 'INSERT_CMS_METADATA_VALUE_ID_HERE'.to_i

    create_video_line_item(
        ad_manager, order_id, targeted_video_ad_unit_id,
        content_id, content_bundle_id, cms_metadata_value_id
    )

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
