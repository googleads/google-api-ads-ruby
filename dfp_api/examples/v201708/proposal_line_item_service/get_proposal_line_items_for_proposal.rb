#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example gets all proposal line items belonging to a specific proposal.
require 'dfp_api'

class GetProposalLineItemsForProposal

  PROPOSAL_ID = 'INSERT_PROPOSAL_ID_HERE';

  def self.run_example(dfp, proposal_id)
    proposal_line_item_service =
        dfp.service(:ProposalLineItemService, :v201708)

    # Create a statement to select proposal line items.
    query = 'WHERE proposalId = :proposalId'
    values = [
      {
        :key => 'proposalId',
        :value => {
          :xsi_type => 'NumberValue',
          :value => proposal_id
        }
      },
    ]
    statement = DfpApi::FilterStatement.new(query, values)

    # Retrieve a small amount of proposal line items at a time, paging
    # through until all proposal line items have been retrieved.
    total_result_set_size = 0;
    begin
      page = proposal_line_item_service.get_proposal_line_items_by_statement(
          statement.toStatement())

      # Print out some information for each proposal line item.
      if page[:results]
        total_result_set_size = page[:total_result_set_size]
        page[:results].each_with_index do |proposal_line_item, index|
          puts "%d) Proposal line item with ID %d and name '%s' was found." % [
              index + statement.offset,
              proposal_line_item[:id],
              proposal_line_item[:name]
          ]
        end
      end
      statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
    end while statement.offset < page[:total_result_set_size]

    puts 'Total number of proposal line items: %d' %
        total_result_set_size
  end

  def self.main()
    # Get DfpApi instance and load configuration from ~/dfp_api.yml.
    dfp = DfpApi::Api.new

    # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
    # the configuration file or provide your own logger:
    # dfp.logger = Logger.new('dfp_xml.log')

    begin
      run_example(dfp, PROPOSAL_ID.to_i)

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
end

if __FILE__ == $0
  GetProposalLineItemsForProposal.main()
end
