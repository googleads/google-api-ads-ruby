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
# This example gets all line item creative associations for a given line item
# ID. The statement retrieves up to the maximum page size limit of 500. To
# create LICAs, run create_licas.rb. To determine which line items exist, run
# get_all_line_items.rb.
#
# Tags: LineItemCreativeAssociationService.getLineItemCreativeAssociationsByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_licas_by_statement()
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
      'WHERE lineItemId = :line_item_id ORDER BY lineItemId, orderId ASC',
      [
          {:key => 'line_item_id',
           :value => {:value => line_item_id, :xsi_type => 'NumberValue'}}
      ]
  )

  # Get LICAs by statement.
  page = lica_service.get_line_item_creative_associations_by_statement(
      statement.toStatement())

  if page and page[:results]
    page[:results].each_with_index do |lica, index|
      puts "%d) LICA with line item ID: %d, creative ID: %d and status: %s." %
          [index + statement.offset,
           lica[:line_item_id], lica[:creative_id], lica[:status]]
    end
  end

  # Print a footer.
  if page.include?(:total_result_set_size)
    puts "Number of results found: %d" % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_licas_by_statement()

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
