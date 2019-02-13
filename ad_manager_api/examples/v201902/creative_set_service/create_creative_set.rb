#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This code example creates a new creative set.

require 'securerandom'
require 'ad_manager_api'

def create_creative_set(ad_manager, master_creative_id, companion_creative_id)
  # Get the CreativeSetService.
  creative_set_service = ad_manager.service(:CreativeSetService, API_VERSION)

  # Create an array to store local creative set object.
  creative_set = {
    :name => 'Creative set #%s' % SecureRandom.uuid(),
    :master_creative_id => master_creative_id,
    :companion_creative_ids => [companion_creative_id]
  }

  # Create the creative set on the server.
  created_creative_set = creative_set_service.create_creative_set(creative_set)

  if created_creative_set.nil?
    raise 'No creative set was created.'
  else
    puts ('Creative set with ID %d, master creative ID %d and companion ' +
        'creative IDs [%s] was created') % [created_creative_set[:id],
        created_creative_set[:master_creative_id],
        created_creative_set[:companion_creative_ids].join(', ')]
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
    master_creative_id = 'INSERT_MASTER_CREATIVE_ID_HERE'.to_i
    companion_creative_id = 'INSERT_COMPANION_CREATIVE_ID_HERE'.to_i
    create_creative_set(ad_manager, master_creative_id, companion_creative_id)

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
