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
# This example gets all creative sets for a master creative.
require 'dfp_api'

class GetCreativeSetsForMasterCreative

  MASTER_CREATIVE_ID = 'INSERT_MASTER_CREATIVE_ID_HERE';

  def self.run_example(dfp, master_creative_id)
    creative_set_service =
        dfp.service(:CreativeSetService, :v201611)

    # Create a statement to select creative sets.
    query = 'WHERE masterCreativeId = :masterCreativeId'
    values = [
      {
        :key => 'masterCreativeId',
        :value => {
          :xsi_type => 'NumberValue',
          :value => master_creative_id
        }
      },
    ]
    statement = DfpApi::FilterStatement.new(query, values)

    # Retrieve a small amount of creative sets at a time, paging
    # through until all creative sets have been retrieved.
    total_result_set_size = 0;
    begin
      page = creative_set_service.get_creative_sets_by_statement(
          statement.toStatement())

      # Print out some information for each creative set.
      if page[:results]
        total_result_set_size = page[:total_result_set_size]
        page[:results].each_with_index do |creative_set, index|
          puts "%d) Creative set with ID %d and name '%s' was found." % [
              index + statement.offset,
              creative_set[:id],
              creative_set[:name]
          ]
        end
      end
      statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
    end while statement.offset < page[:total_result_set_size]

    puts 'Total number of creative sets: %d' %
        total_result_set_size
  end

  def self.main()
    # Get DfpApi instance and load configuration from ~/dfp_api.yml.
    dfp = DfpApi::Api.new

    # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
    # the configuration file or provide your own logger:
    # dfp.logger = Logger.new('dfp_xml.log')

    begin
      run_example(dfp, MASTER_CREATIVE_ID.to_i)

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
  GetCreativeSetsForMasterCreative.main()
end
