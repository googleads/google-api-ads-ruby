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
# This example requests buyer acceptance for a single proposal. To determine
# which proposals exist, run get_all_proposals.rb.

require 'ad_manager_api'

def request_buyer_acceptance(ad_manager, proposal_id)
  # Get the ProposalService.
  proposal_service = ad_manager.service(:ProposalService, API_VERSION)

  # Create a statement to select a single proposal.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :proposal_id'
    sb.with_bind_variable('proposal_id', proposal_id)
    sb.limit = 1
  end

  # Get the proposal.
  response = proposal_service.get_proposals_by_statement(
      statement.to_statement()
  )
  if response[:results].to_a.size < 1
    raise 'No proposals found to push to Marketplace.'
  end
  proposal = response[:results].first

  # Display some information about the proposal to be updated.
  puts ('Programmatic proposal with ID %d, name "%s", and status "%s" ' +
      'will be pushed to Marketplace.') % [proposal[:id], proposal[:name],
      proposal[:status]]

  # Perform action.
  result = proposal_service.perform_proposal_action(
      {:xsi_type => 'RequestBuyerAcceptance'}, statement.to_statement()
  )

  # Display the results.
  if !result.nil? && result[:num_changes].to_i > 0
    puts "Number of programmatic proposals pushed to Marketplace: %d" %
        result[:num_changes]
  else
    puts 'No programmatic proposals were pushed to Marketplace.'
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
    proposal_id = 'INSERT_PROPOSAL_ID_HERE'.to_i
    request_buyer_acceptance(ad_manager, proposal_id)

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
