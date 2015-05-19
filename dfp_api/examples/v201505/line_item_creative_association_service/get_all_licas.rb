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
# This example gets all line item creative associations (LICA). To create LICAs,
# run create_licas.rb or associate_creative_set_to_line_item.rb.
#
# Tags: LineItemCreativeAssociationService.getLineItemCreativeAssociationsByStatement

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def get_all_licas()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemCreativeAssociationService.
  lica_service = dfp.service(:LineItemCreativeAssociationService, API_VERSION)

  begin
    # Create statement for one page with current offset.
    statement = DfpApiStatement::FilterStatement.new('ORDER BY lineItemId ASC')

    # Get LICAs by statement.
    page = lica_service.get_line_item_creative_associations_by_statement(
        statement.toStatement())

    if page[:results]
      # Print details about each LICA in results page.
      page[:results].each_with_index do |lica, index|
        creative_text = (lica[:creative_set_id] != nil) ?
            'creative set ID %d' % lica[:creative_set_id] :
            'creative ID %d' % lica[:creative_id]
        puts '%d) LICA with line item ID: %d, %s and status: %s' %
            [index + statement.offset, lica[:line_item_id], creative_text,
             lica[:status]]
      end
    end
    statement.offset += DfpApiStatement::SUGGESTED_PAGE_LIMIT
  end while statement.offset < page[:total_result_set_size]

  # Print a footer
  if page.include?(:total_result_set_size)
    puts 'Total number of LICAs: %d' % page[:total_result_set_size]
  end
end

if __FILE__ == $0
  begin
    get_all_licas()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts 'HTTP Error: %s' % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
    puts 'Message: %s' % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
