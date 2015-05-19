#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This code example updates a creative wrapper to the 'OUTER' wrapping order. To
# determine which creative wrappers exist, run get_all_creative_wrappers.rb.
#
# Tags: CreativeWrapperService.getCreativeWrappersByStatement
# Tags: CreativeWrapperService.updateCreativeWrappers

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_creative_wrappers()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeWrapperService.
  creative_wrapper_service = dfp.service(:CreativeWrapperService, API_VERSION)

  # Set the ID of the creative wrapper to get.
  creative_wrapper_id = 'INSERT_CREATIVE_WRAPPER_ID_HERE'.to_i

  # Create a statement to only select a single creative wrapper.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id',
      [
          {:key => 'id',
           :value => {:value => creative_wrapper_id, :xsi_type => 'NumberValue'}
          }
      ],
      1
  )

  # Get creative wrappers by statement.
  page = creative_wrapper_service.get_creative_wrappers_by_statement(
      statement.toStatement())

  if page[:results]
    creative_wrappers = page[:results]

    creative_wrappers.each do |creative_wrapper|
      # Update local creative wrapper object by changing its ordering.
      creative_wrapper[:ordering] = 'OUTER'
    end

    # Update the creative wrapper on the server.
    return_creative_wrappers =
        creative_wrapper_service.update_creative_wrappers([creative_wrapper])

    if return_creative_wrappers
      return_creative_wrappers.each do |creative_wrapper|
        puts ("Creative wrapper ID: %d, label ID: %d was updated with order" +
              " '%s'") % [creative_wrapper[:id], creative_wrapper[:label_id],
                          creative_wrapper[:ordering]]
      end
    else
      puts 'No creative wrappers found to update.'
    end
  end
end

if __FILE__ == $0
  begin
    update_creative_wrappers()

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
