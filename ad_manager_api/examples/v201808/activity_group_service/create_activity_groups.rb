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
# This example creates new activity groups. To determine which activity groups
# exist, run get_all_activity_groups.rb.

require 'ad_manager_api'

def create_activity_groups(ad_manager, advertiser_company_id)
  # Get the ActivityGroupService.
  activity_group_service = ad_manager.service(
      :ActivityGroupService, API_VERSION
  )

  # Create a short-term activity group.
  short_term_activity_group = {
    :name => 'Short-term activity group',
    :company_ids => [advertiser_company_id],
    :clicks_lookback => 1,
    :impressions_lookback => 1
  }

  # Create a long-term activity group.
  long_term_activity_group = {
    :name => 'Long-term activity group',
    :company_ids => [advertiser_company_id],
    :clicks_lookback => 30,
    :impressions_lookback => 30
  }

  # Create the activity groups on the server.
  return_activity_groups = activity_group_service.create_activity_groups([
      short_term_activity_group, long_term_activity_group
  ])

  if return_activity_groups.to_a.size > 0
    return_activity_groups.each do |activity_group|
      puts 'An activity group with ID %d and name "%s" was created.' %
          [activity_group[:id], activity_group[:name]]
    end
  else
    raise 'No activity groups were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    advertiser_company_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'
    create_activity_groups(ad_manager, advertiser_company_id)

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
