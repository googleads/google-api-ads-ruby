#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example creates a programmatic proposal line item. This example does not
# work for networks with Ad Manager sales management enabled.

require 'securerandom'
require 'ad_manager_api'

def create_proposal_line_item(ad_manager, proposal_id)
  # Get the NetworkService and ProposalLineItemService.
  network_service = ad_manager.service(:NetworkService, API_VERSION)
  proposal_line_item_service = ad_manager.service(
      :ProposalLineItemService, API_VERSION
  )

  # Get the current network's root ad unit ID.
  current_network = network_service.get_current_network()
  root_ad_unit_id = current_network[:effective_root_ad_unit_id].to_i

  # Specify the start and end times to be set on the proposal line item.
  now = ad_manager.now('America/New_York')
  one_year_from_now = now + 365 * 24 * 60 * 60

  # Create proposal line item configuration object.
  proposal_line_item = {
    :marketplace_info => {
      :ad_exchange_environment => 'DISPLAY'
    },
    :name => 'Proposal Line Item %s' % SecureRandom.uuid(),
    :proposal_id => proposal_id,
    :line_item_type => 'STANDARD',
    :targeting => {
      :inventory_targeting => {
        :targeted_ad_units => [{
          :ad_unit_id => root_ad_unit_id
        }]
      },
      :technology_targeting => {
        :device_capability_targeting => {
          # Exclude Mobile Apps (required for Ad Exchange DISPLAY environment).
          :excluded_device_capabilities => [{:id => 5005}]
        }
      }
    },
    :start_date_time => now.to_h,
    :end_date_time => one_year_from_now.to_h,
    :creative_placeholders => [
      {:size => {:width => 300, :height => 250}},
      {:size => {:width => 120, :height => 600}}
    ],
    :goal => {
      :units => 1000,
      :unit_type => 'IMPRESSIONS'
    },
    :net_rate => {
      :currency_code => 'USD',
      :micro_amount => 2_000_000
    },
    :rate_type => 'CPM',
    :delivery_rate_type => 'EVENLY'
  }

  # Create the proposal line item on the server.
  created_proposal_line_items = proposal_line_item_service.
      create_proposal_line_items([proposal_line_item])

  # Display the results.
  if created_proposal_line_items.to_a.size > 0
    created_proposal_line_items.each do |proposal_line_item|
      puts ('A programmatic proposal line item with ID %d and name "%s", '
          'belonging to proposal with ID %d, was created.') %
          [proposal_line_item[:id], proposal_line_item[:name],
          proposal_line_item[:proposal_id]]
    end
  else
    puts 'No programmatic proposal line items were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    proposal_id = 'INSERT_PROPOSAL_ID_HERE'.to_i
    create_proposal_line_item(ad_manager, proposal_id)

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
