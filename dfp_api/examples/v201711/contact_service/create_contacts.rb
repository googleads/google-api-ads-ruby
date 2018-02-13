#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This example creates new contacts. To determine which contacts exist, run
# get_all_contacts.rb.

require 'dfp_api'

def create_contacts(dfp, advertiser_company_id, agency_company_id)
  # Get the ContactService.
  contact_service = dfp.service(:ContactService, API_VERSION)

  # Create an advertiser contact.
  advertiser_contact = {
      :name => 'Mr. Advertiser',
      :email => 'advertiser@advertising.com',
      :company_id => advertiser_company_id
  }

  # Create an agency contact.
  agency_contact = {
      :name => 'Ms. Agency',
      :email => 'agency@agencies.com',
      :company_id => agency_company_id
  }

  # Create the contacts on the server.
  created_contacts = contact_service.create_contacts([advertiser_contact,
      agency_contact])

  # Display results.
  if created_contacts.to_a.size > 0
    created_contacts.each do |contact|
      puts 'A contact with ID %d and name "%s" was created.' % [contact[:id],
          contact[:name]]
    end
  else
    puts 'No contacts were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201711

  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  begin
    advertiser_company_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'
    agency_company_id = 'INSERT_AGENCY_COMPANY_ID_HERE'
    create_contacts(dfp, advertiser_company_id, agency_company_id)

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
