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
# This example updates the destination URL of all LICAs belonging to a line item.
# To determine which LICAs exist, run get_all_licas.rb.
#
# Tags: LineItemCreativeAssociationService.getLineItemCreativeAssociationsByStatement
# Tags: LineItemCreativeAssociationService.updateLineItemCreativeAssociations

require 'dfp_api'

API_VERSION = :v201505

def update_licas()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemCreativeAssociationService.
  lica_service = dfp.service(:LineItemCreativeAssociationService, API_VERSION)

  # Set the line item to get LICAs by.
  line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i

  # Create a statement to only select LICAs for the given line item ID.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE lineItemId = :line_item_id ORDER BY lineItemId, creativeId ASC',
      [
          {:key => 'line_item_id',
           :value => {:value => line_item_id, :xsi_type => 'NumberValue'}}
      ]
  )

  # Get LICAs by statement.
  page = lica_service.get_line_item_creative_associations_by_statement(
      statement.toStatement())

  if page[:results]
    licas = page[:results]

    # Update each local LICA object by changing its destination URL.
    licas.each {|lica| lica[:destination_url] = 'http://news.google.com'}

    # Update the LICAs on the server.
    return_licas = lica_service.update_line_item_creative_associations(licas)

    if return_licas
      return_licas.each do |lica|
        puts ("LICA with line item ID: %d and creative ID: %d was updated " +
              "with destination url [%s]") %
              [lica[:line_item_id], lica[:creative_id], lica[:destination_url]]
      end
    else
      raise 'No LICAs were updated.'
    end
  else
    puts 'No LICAs found to update.'
  end
end

if __FILE__ == $0
  begin
    update_licas()

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
