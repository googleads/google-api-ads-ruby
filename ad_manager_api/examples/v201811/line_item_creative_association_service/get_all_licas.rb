#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example gets all line item creative associations (LICAs).

require 'ad_manager_api'

def get_all_licas(ad_manager)
  # Get the LineItemCreativeAssociationService.
  lica_service = ad_manager.service(
      :LineItemCreativeAssociationService, API_VERSION
  )

  # Create a statement to select all LICAs.
  statement = ad_manager.new_statement_builder()

  # Retrieve a small number of LICAs at a time, paging through until all LICAs
  # have been retrieved.
  begin
    # Get LICAs by statement.
    page = lica_service.get_line_item_creative_associations_by_statement(
        statement.to_statement()
    )

    # Display some information about each LICA.
    unless page[:results].nil?
      page[:results].each do |lica|
        if lica[:creative_set_id].nil?
          puts 'LICA with line item ID %d and creative ID %d was found.' %
              [lica[:line_item_id], lica[:creative_id]]
        else
          puts ('LICA with line item ID %d, creative set ID %d, and status ' +
              '"%s" was found.') % [lica[:line_item_id], lica[:creative_set_id],
              lica[:status]]
        end
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_all_licas(ad_manager)

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
