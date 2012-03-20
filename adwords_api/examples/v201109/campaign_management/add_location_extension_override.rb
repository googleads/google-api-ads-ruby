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
# This example illustrates override an ad extension for a specific ad, by
# creating a location extension override. To create a campaign, run
# add_campaign.rb, to create an ad, run add_text_ads.rb.
#
# Tags: AdExtensionOverrideService.mutate

require 'adwords_api'

def add_location_extension_override(ad_id, location_extension_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_ext_override_srv =
      adwords.service(:AdExtensionOverrideService, API_VERSION)

  # Create operation.
  operation = {
    :operator => 'ADD',
    :operand => {
      :ad_id => ad_id,
      :ad_extension => {
        :id => location_extension_id
      }
    }
  }

  # Add override.
  response = ad_ext_override_srv.mutate([operation])
  location_extension_override = response[:value].first
  puts "Location extension override with ID %d was successfully added." %
      location_extension_override[:id]
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    # IDs of ad and location extension override to add.
    ad_id = 'INSERT_AD_ID_HERE'.to_i
    location_extension_id = 'INSERT_LOCATION_EXTENSION_ID_HERE'.to_i
    add_location_extension_override(ad_id, location_extension_id)

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
