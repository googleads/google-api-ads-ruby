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
# This example archives a proposal line item. To determine which proposal
# line items exist, run get_all_proposal_line_items.rb.

require 'ad_manager_api'

def archive_proposal_line_item(ad_manager, proposal_line_item_id)
  # Get the ProposalLineItemService.
  proposal_line_item_service = ad_manager.service(
      :ProposalLineItemService, API_VERSION
  )

  # Create a statement to select a single proposal line item.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :proposal_line_item_id'
    sb.with_bind_variable('proposal_line_item_id', proposal_line_item_id)
    sb.limit = 1
  end

  # Retrieve a small number of proposal line items at a time, paging through
  # until all proposal line items have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    # Get proposal line items by statement.
    page = proposal_line_item_service.get_proposal_line_items_by_statement(
        statement.to_statement()
    )

    # Display some information about each proposal line item.
    unless page[:results].nil?
      page[:results].each do |proposal_line_item|
        puts ('Proposal line item with ID %d and name "%s", belonging to ' +
            'proposal with ID %d, will be archived.') %
            [proposal_line_item[:id], proposal_line_item[:name],
            proposal_line_item[:proposal_id]]
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  # Perform action.
  result = proposal_line_item_service.perform_proposal_line_item_action(
      {:xsi_type => 'ArchiveProposalLineItems'}, statement.to_statement()
  )

  # Display the results.
  if !result.nil? && result[:num_changes].to_i > 0
    puts "Number of proposal line items archived: %d" % result[:num_changes]
  else
    puts 'No proposal line items archived.'
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
    proposal_line_item_id = 'INSERT_PROPOSAL_LINE_ITEM_ID_HERE'.to_i
    archive_proposal_line_item(ad_manager, proposal_line_item_id)

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
