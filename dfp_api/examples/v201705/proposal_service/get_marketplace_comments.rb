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

require 'dfp_api'


class GetMarketplaceComments

  def self.run_example(dfp, proposal_id)
    proposal_service = dfp.service(:ProposalService, :v201705)

    # Create a statement to select marketplace comments.
    query = 'WHERE proposalId = :proposalId'
    values = [
      {
        :key => 'proposalId',
        :value => {:xsi_type => 'NumberValue', :value => proposal_id}
      }
    ]
    statement = DfpApi::FilterStatement.new(query, values)

    # Retrieve comments.
    page = proposal_service.get_marketplace_comments_by_statement(
        statement.toStatement())

    # Print out some information for each comment.
    if page[:results]
      page[:results].each_with_index do |comment, index|
        puts ("%d) Comment Marketplace comment with creation time '%s' and " +
            "comment '%s' was found.") % [index + statement.offset,
            comment[:proposal_id], comment[:creation_time], comment[:comment]]
      end
    end
    puts 'Total number of comments: %d' % (page[:total_result_set_size] || 0)
  end

  def self.main()
    # Get DfpApi instance and load configuration from ~/dfp_api.yml.
    dfp = DfpApi::Api.new

    # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
    # the configuration file or provide your own logger:
    # dfp.logger = Logger.new('dfp_xml.log')

    # Specify ID of the proposal to get comments for here.
    proposal_id = 'INSERT_PROPOSAL_ID_HERE'.to_i

    begin
      run_example(dfp, proposal_id)

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
  GetMarketplaceComments.main()
end
