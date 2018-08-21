#!/usr/bin/env ruby
# Encoding: utf-8
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

require 'ad_manager_api'

def deactivate_creative_wrappers(ad_manager, label_id)
  # Get the CreativeWrapperService.
  creative_wrapper_service = ad_manager.service(
      :CreativeWrapperService, API_VERSION
  )

  # Create statement to select creative wrappers by label id and status.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'labelId = :label_id AND status = :status'
    sb.with_bind_variable('label_id', label_id)
    sb.with_bind_variable('status', 'ACTIVE')
  end

  # Get creative wrappers by statement.
  page = creative_wrapper_service.get_creative_wrappers_by_statement(
      statement.to_statement()
  )

  if page[:results].to_a.size > 0
    page[:results].each do |creative_wrapper|
      puts 'Creative wrapper with ID %d applying to the label with ID %d ' +
          'will be deactivated.' % [creative_wrapper[:id],
          creative_wrapper[:label_id]]
    end

    # Perform action.
    result = creative_wrapper_service.perform_creative_wrapper_action(
        {:xsi_type => 'DeactivateCreativeWrappers'},
        statement.to_statement()
    )

    # Display results.
    if !result.nil? && result[:num_changes] > 0
      puts 'Number of creative wrappers deactivated: %d' % result[:num_changes]
    else
      puts 'No creative wrappers were deactivated.'
    end
  else
    puts 'No creative wrapper found to deactivate.'
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
    label_id = 'INSERT_CREATIVE_WRAPPER_LABEL_ID_HERE'.to_i
    deactivate_creative_wrappers(ad_manager, label_id)

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
