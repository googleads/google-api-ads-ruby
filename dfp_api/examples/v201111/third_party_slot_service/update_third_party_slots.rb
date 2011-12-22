#!/usr/bin/ruby
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
# This example updates the first third party slot description.
#
# Tags: ThirdPartySlotService.getThirdPartySlotsByStatement,
#       ThirdPartySlotService.updateThirdPartySlots

require 'rubygems'
require 'dfp_api'

API_VERSION = :v201111
PAGE_SIZE = 500

def update_third_party_slots()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ThirdPartySlotService.
  third_party_slot_service = dfp.service(:ThirdPartySlotService, API_VERSION)

  # Create statement to get one active third party slot.
  statement = {
      :query => 'WHERE status = :status LIMIT 1',
      :values => [
          {:key => 'status',
           :value => {:value => 'ACTIVE', :xsi_type => 'TextValue'}},
      ]
  }

  # Get third party slots by statement.
  page = third_party_slot_service.get_third_party_slots_by_statement(statement)

  if page[:results] and !page[:results].empty?
    slot = page[:results].first

    # Update local third party slot by changing its description.
    slot[:description] = 'Updated description'

    # Update the third party slot on the server.
    return_slot = third_party_slot_service.update_third_party_slot(slot)

    # Display results.
    if return_slot
      puts ("Third party slot with ID %d and name '%s' was updated with " +
            "description '%s'.") %
          [return_slot[:id], return_slot[:name], return_slot[:description]]
    else
      puts 'No third party slots were updated.'
    end
  else
    puts 'No third party slots found to update.'
  end
end

if __FILE__ == $0
  begin
    update_third_party_slots()

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
