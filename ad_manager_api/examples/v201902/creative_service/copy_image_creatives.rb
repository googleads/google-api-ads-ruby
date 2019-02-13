#!/usr/bin/env ruby
# Encoding: utf-8
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

require 'ad_manager_api'
require 'base64'

def copy_image_creatives(ad_manager, image_creative_ids)
  # Get the CreativeService.
  creative_service = ad_manager.service(:CreativeService, API_VERSION)

  # Create the statement to filter image creatives by ID.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id IN (%s) AND creativeType = :creative_type' %
        image_creative_ids.join(', ')
    sb.with_bind_variable('creative_type', 'ImageCreative')
  end

  # Get creatives by statement.
  page = creative_service.get_creatives_by_statement(statement.to_statement())

  if page[:results].to_a.size > 0
    creatives = page[:results]

    # Copy each local creative object and change its name.
    new_creatives = creatives.map do |creative|
      new_creative = creative.dup()
      old_id = new_creative.delete(:id)
      new_creative[:name] += ' (Copy of %d)' % old_id
      image_url = new_creative.delete(:image_url)
      new_creative[:image_byte_array] =
          Base64.encode64(AdsCommon::Http.get(image_url, ad_manager.config))
      new_creative
    end

    # Create the creatives on the server.
    created_creatives = creative_service.create_creatives(new_creatives)

    # Display copied creatives.
    if created_creatives.to_a.size > 0
      created_creatives.each_with_index do |creative, index|
        puts 'A creative with ID %d was copied to ID %d, named "%s".' %
            [creatives[index][:id], creative[:id], creative[:name]]
      end
    else
      puts 'No creatives were copied.'
    end
  else
    puts 'No creatives found to copy.'
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
    image_creative_ids = [
        'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i,
        'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i,
        'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i,
        'INSERT_IMAGE_CREATIVE_ID_HERE'.to_i
    ]
    copy_image_creatives(ad_manager, image_creative_ids)

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
