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
# This example deactivates a creative wrapper belonging to a label.
#
# Tags: CreativeWrapperService.getCreativeWrappersByStatement
# Tags: CreativeWrapperService.performCreativeWrapperAction

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def deactivate_creative_wrappers()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeWrapperService.
  creative_wrapper_service = dfp.service(:CreativeWrapperService, API_VERSION)

  # Set the ID of the label for the creative wrapper to deactivate.
  label_id = 'INSERT_CREATIVE_WRAPPER_LABEL_ID_HERE'.to_i

  # Create statement to select creative wrappers by label id and status.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE labelId = :label_id AND status = :status',
      [
        {
          :key => 'label_id',
          :value => {:value => label_id, :xsi_type => 'NumberValue'}
        },
        {
          :key => 'status',
          :value => {:value => 'ACTIVE', :xsi_type => 'TextValue'}
        }
      ]
  )

  # Get creative wrappers by statement.
  page = creative_wrapper_service.get_creative_wrappers_by_statement(
      statement.toStatement())

  if page[:results]
    page[:results].each do |creative_wrapper|
      puts 'Creative wrapper ID: %d, label: %d will be deactivated.' %
          [creative_wrapper[:id], creative_wrapper[:label_id]]
    end

    # Perform action.
    result = creative_wrapper_service.perform_creative_wrapper_action(
        {:xsi_type => 'DeactivateCreativeWrappers'}, statement.toStatement())

    # Display results.
    if result and result[:num_changes] > 0
      puts 'Number of creative wrappers deactivated: %d' % result[:num_changes]
    else
      puts 'No creative wrappers were deactivated.'
    end
  else
    puts 'No creative wrapper found to deactivate.'
  end
end

if __FILE__ == $0
  begin
    deactivate_creative_wrappers()

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
