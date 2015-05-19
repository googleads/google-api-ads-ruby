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
# This code example updates a creative set by adding a companion creative. To
# determine which creative sets exist, run get_all_creative_sets.rb.
#
# Tags: CreativeSetService.getCreativeSet
# Tags: CreativeSetService.updateCreativeSet

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_creative_sets()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Set the IDs of the creative set to get and companion creative ID to add.
  creative_set_id = 'INSERT_CREATIVE_SET_ID_HERE'.to_i
  companion_creative_id = 'INSERT_COMPANION_CREATIVE_ID_HERE'.to_i

  # Get the CreativeSetService.
  creative_set_service = dfp.service(:CreativeSetService, API_VERSION)

  # Create a statement to only select a single creative set.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id'
      [
          {:key => 'id',
           :value => {:value => creative_set_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  # Get creative sets by statement.
  page = creative_set_service.get_creative_sets_by_statement(
      statement.toStatement())

  if page[:results]
    creative_sets = page[:results]

    creative_sets.each do |creative_set|
      # Update the creative set locally.
      creative_set[:companion_creative_ids] << companion_creative_id
    end

    # Update the creative set on the server.
    return_creative_set = creative_set_service.update_creative_set(creative_set)

    if return_creative_set
       puts ('Creative set ID: %d, master creative ID: %d was updated with ' +
           'companion creative IDs: [%s]') %
           [creative_set[:id],
            creative_set[:master_creative_id],
            creative_set[:companion_creative_ids].join(', ')]
    else
      raise 'No creative sets were updated.'
    end
  end
end

if __FILE__ == $0
  begin
    update_creative_sets()

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
