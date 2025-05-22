#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2020, Google LLC
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
# This example gets the network's default third party data declarations.

require 'ad_manager_api'

def get_third_party_data_declaration(ad_manager)
  # Get the NetworkService and the PublisherQueryLanguageService.
  network_service = ad_manager.service(:NetworkService, API_VERSION)
  pql_service = ad_manager.service(:PublisherQueryLanguageService, API_VERSION)

  # Get the third party data declarations.
  declarations = network_service.get_default_third_party_data_declaration()

  # Display the results.
  if declarations[:declaration_type].nil?
    puts 'No default ad technology providers have been set on this network.'
  elsif declarations[:declaration_type] == 'NONE' or
      declarations[:third_party_company_ids].nil? or
      declarations[:third_party_company_ids].size == 0
    puts 'This network has specified that there are no ad technology ' +
        'providers associated with its reservation creatives by default.'
  else
    puts ('This network has specified %d ad technology provider(s) ' +
        'associated with its reservation creatives by default:') %
        [declarations[:third_party_company_ids].size]

    # Fetch the company names from the Rich_Media_Ad_Company PQL table.
    statement = ad_manager.new_statement_builder do |sb|
      sb.select = 'Id, Name'
      sb.from = 'Rich_Media_Ad_Company'
      sb.where = 'Id IN (%s)' %
          declarations[:third_party_company_ids].join(',')
    end

    loop do
      result_set = pql_service.select(statement.to_statement())
      break if result_set[:rows].nil? or result_set[:rows].size == 0
      result_set[:rows].each do |company|
        company_name = company[:values][1][:value]
        company_id = company[:values][0][:value]
        puts "Name: #{company_name}, id: #{company_id}"
      end
      statement.offset += statement.limit
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v202505

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    get_third_party_data_declaration(ad_manager)

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
