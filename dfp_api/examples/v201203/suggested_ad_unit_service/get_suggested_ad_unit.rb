#!/usr/bin/ruby
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
# This example gets a suggested ad unit by its ID. To determine which suggested
# ad units exist, run get_all_suggested_ad_units.rb.
#
# This feature is only available to DFP premium solution networks.
#
# Tags: SuggestedAdUnitService.getSuggestedAdUnit

require 'dfp_api'

API_VERSION = :v201203

def get_suggested_ad_unit()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the SuggestedAdUnitService.
  suggested_ad_unit_service = dfp.service(:SuggestedAdUnitService, API_VERSION)

  # Set the ID of the ad unit to get.
  suggested_ad_unit_id = 'INSERT_SUGGESTED_AD_UNIT_ID_HERE'

  # Get the suggested ad unit.
  suggested_ad_unit =
      suggested_ad_unit_service.get_suggested_ad_unit(suggested_ad_unit_id)

  if suggested_ad_unit
    puts "Suggested ad unit with ID: '%s' and number of requests: %d" %
        [suggested_ad_unit[:id], suggested_ad_unit[:num_requests]]
  end
end

if __FILE__ == $0
  begin
    get_suggested_ad_unit()

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
