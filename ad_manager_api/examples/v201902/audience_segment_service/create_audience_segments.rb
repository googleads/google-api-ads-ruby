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
# This example creates new rule based first party audience segments. To
# determine which audience segments exist, run get_all_audience_segments.rb.

require 'ad_manager_api'

def create_audience_segments(ad_manager, custom_targeting_key_id,
    custom_targeting_value_id)
  # Get the AudienceSegmentService and the NetworkService.
  audience_segment_service = ad_manager.service(
      :AudienceSegmentService, API_VERSION
  )
  network_service = ad_manager.service(:NetworkService, API_VERSION)

  # Get the root ad unit ID used to target the whole site.
  effective_root_ad_unit_id =
        network_service.get_current_network()[:effective_root_ad_unit_id]

  # Create custom criteria.
  custom_criteria = {
    :xsi_type => 'CustomCriteria',
    :operator => 'IS',
    :key_id => custom_targeting_key_id,
    :value_ids => [custom_targeting_value_id]
  }

  # Create the audience segment rule.
  rule = {
    :xsi_type => 'FirstPartyAudienceSegmentRule',
    # Inventory targeting.
    :inventory_rule => {
      :targeted_ad_units => [{:ad_unit_id => effective_root_ad_unit_id}]
    },
    # Create the custom criteria set that will resemble:
    #   custom_criteria.key == custom_criteria.value
    :custom_criteria_rule => {
      :logical_operator => 'AND',
      :children => [custom_criteria]
    }
  }

  # Create an audience segment.
  segment = {
    :xsi_type => 'RuleBasedFirstPartyAudienceSegment',
    :name => 'Audience segment #%d' % Time.new.to_i,
    :description => 'Sports enthusiasts between the ages of 20 and 30',
    :page_views => 6,
    :recency_days => 6,
    :membership_expiration_days => 88,
    :rule => rule
  }

  # Create the audience segment on the server.
  return_segments = audience_segment_service.create_audience_segments([segment])

  if return_segments.to_a.size > 0
    return_segments.each do |segment|
      puts ('An audience segment with ID %d, name "%s", and type "%s" was ' +
          'created.') % [segment[:id], segment[:name], segment[:type]]
    end
  else
    puts 'No audience segments were created.'
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
    # Set the IDs of the custom criteria to target.
    custom_targeting_key_id = 'INSERT_CUSTOM_TARGETING_KEY_ID_HERE'.to_i
    custom_targeting_value_id = 'INSERT_CUSTOM_TARGETING_VALUE_ID_HERE'.to_i
    create_audience_segments(
      ad_manager, custom_targeting_key_id, custom_targeting_value_id
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
