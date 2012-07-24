#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example archives all active third party slots for a company. To determine
# which third party slots exist, run get_all_third_party_slots.rb.
#
# Tags: ThirdPartSlotService.getThirdPartySlotsByStatement
# Tags: ThirdPartSlotService.performThirdPartySlotsAction

require 'dfp_api'

API_VERSION = :v201206
PAGE_SIZE = 500

def archive_third_party_slots()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ThirdPartySlotService.
  third_party_slot_service = dfp.service(:ThirdPartySlotService, API_VERSION)

  # Set the company that the third party slots to archive belong to.
  company_id = 'INSERT_COMPANY_ID_HERE'.to_i

  # Create a statement to only select active third party slots.
  statement_text = 'WHERE status = :status AND companyId = :company_id'

  # Create statement bind variables.
  statement = {
      :query => statement_text,
      :values => [
          {:key => 'status',
           :value => {:value => 'ARCHIVED', :xsi_type => 'TextValue'}},
          {:key => 'company_id',
           :value => {:value => company_id, :xsi_type => 'NumberValue'}},
      ]
  }

  # Define initial values.
  offset = 0
  page = {}
  third_party_slot_ids = []

  begin
    # Update the statement to get one page with current offset.
    statement[:query] =
        statement_text + " LIMIT %d OFFSET %d" % [PAGE_SIZE, offset]

    # Get third party slots by statement.
    page = third_party_slot_service.get_third_party_slots_by_statement(statement)

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE

      page[:results].each do |slot|
        puts "%d) Third party slot ID: %d and name: '%s' will be archived." %
            [third_party_slot_ids.size, slot[:id], slot[:name]]
        third_party_slot_ids << slot[:id]
      end
    end
  end while offset < page[:total_result_set_size]

  puts "Number of third party slots to be archived: %d" % third_party_slot_ids.size

  unless third_party_slot_ids.empty?
    # Create statement for action.
    statement = {:query => "WHERE id IN (%s)" % third_party_slot_ids.join(', ')}

    # Perform action.
    result = third_party_slot_service.perform_third_party_slot_action(
        {:xsi_type => 'ArchiveThirdPartySlots'}, statement)

    # Display results.
    if result and result[:num_changes] > 0
      puts "Number of third party slots archived: %d" % result[:num_changes]
    else
      puts 'No third party slots were archived.'
    end
  else
    puts 'No third party slots found to archive.'
  end
end

if __FILE__ == $0
  begin
    archive_third_party_slots()

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
