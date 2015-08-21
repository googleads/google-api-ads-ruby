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
# This example updates the destination URL of a single creative searching by ID.
# To determine which image creatives exist, run get_all_creatives.rb.
#
# Tags: CreativeService.getCreativesByStatement, CreativeService.updateCreatives

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_creatives()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeService.
  creative_service = dfp.service(:CreativeService, API_VERSION)

  # Specify creative ID to update.
  creative_id = 'INSERT_CREATIVE_ID_HERE'.to_i

  # Create a statement to get first 500 image creatives.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id ORDER BY id ASC',
      [
          {:key => 'id',
           :value => {:value =>  creative_id, :xsi_type => 'NumberValue'}}
      ],
      1
  )

  # Get creatives by statement.
  page = creative_service.get_creatives_by_statement(statement.toStatement())

  if page[:results]
    creatives = page[:results]

    # Update each local creative object by changing its destination URL.
    creatives.each do |creative|
      creative[:destination_url] = 'http://news.google.com'
    end

    # Update the creatives on the server.
    return_creatives = creative_service.update_creatives(creatives)

    if return_creatives
      return_creatives.each do |creative|
        puts "Creative with ID: %d, name: %s and url: [%s] was updated." %
            [creative[:id], creative[:name], creative[:destination_url]]
      end
    else
      raise 'No creatives were updated.'
    end
  else
    puts 'No creatives found to update.'
  end
end

if __FILE__ == $0
  begin
    update_creatives()

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
