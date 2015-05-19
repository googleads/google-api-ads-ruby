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
# This example copies a given set of image creatives. This would typically be
# done to reuse creatives in a small business network. To determine which
# creatives exist, run get_all_creatives.rb.
#
# Tags: CreativeService.getCreativesByStatement, CreativeService.createCreatives

require 'dfp_api'
require 'dfp_api_statement'
require 'base64'

API_VERSION = :v201505

def copy_image_creatives()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeService.
  creative_service = dfp.service(:CreativeService, API_VERSION)

  # Create a list of creative ids to copy.
  image_creative_ids = [
      'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i,
      'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i,
      'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i,
      'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i
  ]

  # Create the statement to filter image creatives by ID.
  statement = DfpApiStatement::FilterStatement.new(
      "WHERE id IN (%s) AND creativeType = :creative_type" %
          image_creative_ids.join(', '),
      [
          {:key => 'creative_type',
           :value => {:value => 'ImageCreative', :xsi_type => 'TextValue'}}
      ]
  )

  # Get creatives by statement.
  page = creative_service.get_creatives_by_statement(statement.toStatement())

  if page[:results]
    creatives = page[:results]

    # Copy each local creative object and change its name.
    new_creatives = creatives.map do |creative|
      new_creative = creative.dup()
      old_id = new_creative.delete(:id)
      new_creative[:name] += " (Copy of %d)" % old_id
      image_url = new_creative.delete(:image_url)
      new_creative[:image_byte_array] =
          Base64.encode64(AdsCommon::Http.get(image_url, dfp.config))
      new_creative
    end

    # Create the creatives on the server.
    return_creatives = creative_service.create_creatives(new_creatives)

    # Display copied creatives.
    if return_creatives
      return_creatives.each_with_index do |creative, index|
        puts "A creative with ID [%d] was copied to ID [%d], name: %s" %
            [creatives[index][:id], creative[:id], creative[:name]]
      end
    else
      raise 'No creatives were copied.'
    end
  else
    puts 'No creatives found to copy.'
  end
end

if __FILE__ == $0
  begin
    copy_image_creatives()

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
