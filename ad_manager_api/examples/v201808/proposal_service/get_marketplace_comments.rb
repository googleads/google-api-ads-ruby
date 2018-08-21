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
# This example gets the Marketplace comments for a programmatic proposal.

require 'ad_manager_api'

def get_marketplace_comments(ad_manager, proposal_id)
  # Get the ProposalService.
  proposal_service = ad_manager.service(:ProposalService, API_VERSION)

  # Create a statement to select marketplace comments.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'proposalId = :proposal_id'
    sb.with_bind_variable('proposal_id', proposal_id)
  end

  # Retrieve comments.
  page = proposal_service.get_marketplace_comments_by_statement(
      statement.to_statement()
  )

  # Print out some information for each comment.
  unless page[:results].nil?
    page[:results].each_with_index do |comment, index|
      puts ('%d) Comment Marketplace comment with creation time "%s" and ' +
          'comment "%s" was found.') % [index + statement.offset,
          comment[:proposal_id], comment[:creation_time], comment[:comment]]
    end
  end
  puts 'Total number of comments: %d' % (page[:total_result_set_size] || 0)
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    proposal_id = 'INSERT_PROPOSAL_ID_HERE'.to_i
    get_marketplace_comments(ad_manager, proposal_id)

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
