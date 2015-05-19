#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.davidtorres@gmail.com (David Torres)
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
# This example updates contact comments. To determine which contacts exist,
# run get_all_contacts.rb.
#
# Tags: ContactService.updateContacts

require 'dfp_api'
require 'dfp_api_statement'

API_VERSION = :v201505

def update_contacts()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ContactService.
  contact_service = dfp.service(:ContactService, API_VERSION)

  contact_id = 'INSERT_CONTACT_ID_HERE'.to_i

  # Create a statement to only select a single contact.
  statement = DfpApiStatement::FilterStatement.new(
      'WHERE id = :id',
      [
          {:key => 'id',
           :value => {:value => contact_id, :xsi_type => 'NumberValue'}}
      ],
      1
  }

  # Get contacts by statement.
  page = contact_service.get_contacts_by_statement(statement.toStatement())

  if page[:results]
    contacts = page[:results]

    contacts.each do |contact|
      # Update the comment of the contact.
      contact[:address] = '123 New Street, New York, NY, 10011'
    end

    # Update the contact on the server.
    return_contacts = contact_service.update_contacts([contact])

    # Display results.
    if return_contacts
      return_contacts.each do |updated_contact|
        puts "Contact with ID: %d, name: %s and comment: '%s' was updated." %
            [updated_contact[:id], updated_contact[:name],
             updated_contact[:comment]]
      end
    else
      raise 'No contacts were updated.'
    end
  end
end

if __FILE__ == $0
  begin
    update_contacts()

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
