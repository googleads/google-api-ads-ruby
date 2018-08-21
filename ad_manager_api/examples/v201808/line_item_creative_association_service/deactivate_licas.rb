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
# This example deactivates all line item creative associations (LICAs) for the
# line item. To determine which LICAs exist, run get_all_licas.rb. To determine
# which line items exist, run get_all_line_items.rb.

require 'ad_manager_api'

def deactivate_licas(ad_manager, line_item_id)
  # Get the LineItemCreativeAssociationService.
  lica_service = ad_manager.service(
      :LineItemCreativeAssociationService, API_VERSION
  )

  # Create statement to select active LICAs for a given line item.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'lineItemId = :line_item_id AND status = :status'
    sb.with_bind_variable('line_item_id', line_item_id)
    sb.with_bind_variable('status', 'ACTIVE')
  end

  creative_ids = []

  # Retrieve a small number of LICAs at a time, paging
  # through until all LICAs have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get LICAs by statement.
    page = lica_service.get_line_item_creative_associations_by_statement(
        statement.to_statement()
    )

    unless page[:results].nil?
      page[:results].each do |lica|
        puts ('%d) LICA with line item ID %d, creative ID %d and status "%s"' +
            ' will be deactivated.') % [creative_ids.size, lica[:line_item_id],
            lica[:creative_id], lica[:status]]
        creative_ids << lica[:creative_id]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Number of LICAs to be deactivated: %d' % creative_ids.size

  if !creative_ids.empty?
    # Create statement for action.
    statement = ad_manager.new_statement_builder do |sb|
      sb.where = 'creativeId IN (%s)' % creative_ids.join(', ')
      sb.offset = nil
      sb.limit = nil
    end

    # Perform action.
    result = lica_service.perform_line_item_creative_association_action(
        {:xsi_type => 'DeactivateLineItemCreativeAssociations'},
        statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts 'Number of LICAs deactivated: %d' % result[:num_changes]
    else
      puts 'No LICAs were deactivated.'
    end
  else
    puts 'No LICAs found to deactivate.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
    deactivate_licas(ad_manager, line_item_id)

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
