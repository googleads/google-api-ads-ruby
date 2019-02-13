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
# This example creates a programmatic proposal. This example does not work for
# networks with Ad Manager sales management enabled.

require 'securerandom'
require 'ad_manager_api'

def create_proposal(ad_manager, primary_salesperson_id, primary_trafficker_id,
    buyer_id)
  # Get the ProposalService.
  proposal_service = ad_manager.service(:ProposalService, API_VERSION)

  # Create proposal configuration object.
  proposal = {
    :marketplace_info => {
      :buyer_account_id => buyer_id
    },
    :is_programmatic => true,
    :name => 'Proposal %s' % SecureRandom.uuid(),
    :primary_salesperson => {
      :user_id => primary_salesperson_id,
      :split => 100_000
    },
    :primary_trafficker_id => primary_trafficker_id
  }

  # Create the proposal on the server.
  created_proposals = proposal_service.create_proposals([proposal])

  # Display the results.
  if created_proposals.to_a.size > 0
    created_proposals.each do |proposal|
      puts 'A programmatic proposal with ID %d and name "%s" was created.' %
          [proposal[:id], proposal[:name]]
    end
  else
    puts 'No programmatic proposals were created.'
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
    primary_salesperson_id = 'INSERT_PRIMARY_SALESPERSON_ID_HERE'.to_i
    primary_trafficker_id = 'INSERT_PRIMARY_TRAFFICKER_ID_HERE'.to_i
    buyer_id = 'INSERT_BUYER_ID_FROM_PQL_TABLE_HERE'.to_i
    create_proposal(
        ad_manager, primary_salesperson_id, primary_trafficker_id, buyer_id
    )

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
