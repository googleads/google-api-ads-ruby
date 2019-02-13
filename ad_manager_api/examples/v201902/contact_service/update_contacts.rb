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
# This example updates a contact's address. To determine which contacts exist,
# run get_all_contacts.rb.

require 'ad_manager_api'

def update_contacts(ad_manager, contact_id)
  # Get the ContactService.
  contact_service = ad_manager.service(:ContactService, API_VERSION)

  # Create a statement to only select a single contact.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :contact_id'
    sb.with_bind_variable('contact_id', contact_id)
    sb.limit = 1
  end

  # Get contacts by statement.
  response = contact_service.get_contacts_by_statement(statement.to_statement())
  raise 'No contacts found to update.' if response[:results].to_a.empty?
  contact = response[:results].first

  # Update the address of the contact.
  contact[:address] = '123 New Street, New York, NY, 10011'

  # Update the contact on the server.
  updated_contacts = contact_service.update_contacts([contact])

  # Display results.
  if updated_contacts.to_a.size > 0
    updated_contacts.each do |contact|
      puts 'Contact with ID %d, name: "%s", and address "%s" was updated.' %
          [contact[:id], contact[:name], contact[:comment]]
    end
  else
    puts 'No contacts were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    contact_id = 'INSERT_CONTACT_ID_HERE'.to_i
    update_contacts(ad_manager, contact_id)

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
