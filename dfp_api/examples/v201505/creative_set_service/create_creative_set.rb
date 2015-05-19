#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
#
# Tags: CreativeSetService.createCreativeSet

require 'dfp_api'

API_VERSION = :v201505

def create_creative_set()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  master_creative_id = 'INSERT_MASTER_CREATIVE_ID_HERE'.to_i
  companion_creative_id = 'INSERT_COMPANION_CREATIVE_ID_HERE'.to_i

  # Get the CreativeSetService.
  creative_set_service = dfp.service(:CreativeSetService, API_VERSION)

  # Create an array to store local creative set object.
  creative_set = {
      :name => 'Creative set #%d' % (Time.new.to_f * 1000),
      :master_creative_id => master_creative_id,
      :companion_creative_ids => [companion_creative_id]
  }

  # Create the creative set on the server.
  return_set = creative_set_service.create_creative_set(creative_set)

  if return_set
    puts ('Creative set with ID: %d, master creative ID: %d and companion ' +
        'creative IDs: [%s] was created') %
        [return_set[:id], return_set[:master_creative_id],
         return_set[:companion_creative_ids].join(', ')]
  else
    raise 'No creative set was created.'
  end

end

if __FILE__ == $0
  begin
    create_creative_set()

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
