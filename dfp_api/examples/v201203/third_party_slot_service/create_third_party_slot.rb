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
# This example creates a new third party slot. To determine which third party
# slots exist, run get_all_third_party_slots.rb.
#
# Tags: ThirdPartySlotService.createThirdPartySlot

require 'dfp_api'

API_VERSION = :v201203

def create_third_party_slot()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ThirdPartySlotService.
  third_party_slot_service = dfp.service(:ThirdPartySlotService, API_VERSION)

  # Set the company ID to associate with this third party slot.
  company_id = 'INSERT_COMPANY_ID_HERE'.to_i

  # Set the external unique ID and name to associate with this third party slot.
  external_unique_id = 'INSERT_EXTERNAL_UNIQUE_ID_HERE'.to_i
  external_unique_name = 'INSERT_EXTERNAL_UNIQUE_NAME_HERE'.to_s

  # Set the creative IDs to associate with this third party slot.
  creative_ids = ['INSERT_CREATIVE_ID_HERE'.to_i]

  # Create the ThirdPartySlot object.
  third_party_slot = {
      :company_id => company_id,
      :description => 'Third party slot description.',
      :external_unique_id => external_unique_id,
      :external_unique_name => external_unique_name,
      :creative_ids => creative_ids
  }

  # Create the third party slot.
  return_slot =
      third_party_slot_service.create_third_party_slot(third_party_slot)

  if return_slot
    puts "Third party slot with ID: %d and name: '%s' was created." %
          [return_slot[:id], return_slot[:name]]
  else
    raise 'No third party slots were created.'
  end
end

if __FILE__ == $0
  begin
    create_third_party_slot()

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
