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
# This example updates the destination URL of all LICAs belonging to a line
# item. To determine which LICAs exist, run get_all_licas.rb.

require 'ad_manager_api'

def update_licas(ad_manager, line_item_id)
  # Get the LineItemCreativeAssociationService.
  lica_service = ad_manager.service(
      :LineItemCreativeAssociationService, API_VERSION
  )

  # Create a statement to only select LICAs for the given line item ID.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'lineItemId = :line_item_id'
    sb.with_bind_variable('line_item_id', line_item_id)
    sb.order_by = 'creativeId'
  end

  # Get LICAs by statement.
  page = lica_service.get_line_item_creative_associations_by_statement(
      statement.to_statement()
  )

  if page[:results].to_a.size > 0
    licas = page[:results]

    # Update each local LICA object by changing its destination URL.
    licas.each {|lica| lica[:destination_url] = 'http://news.google.com'}

    # Update the LICAs on the server.
    updated_licas = lica_service.update_line_item_creative_associations(licas)

    if updated_licas.to_a.size > 0
      updated_licas.each do |lica|
        puts ('LICA with line item ID %d and creative ID %d was updated ' +
            'with destination url "%s".') % [lica[:line_item_id],
            lica[:creative_id], lica[:destination_url]]
      end
    else
      puts 'No LICAs were updated.'
    end
  else
    puts 'No LICAs found to update.'
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
    line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
    update_licas(ad_manager, line_item_id)

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
