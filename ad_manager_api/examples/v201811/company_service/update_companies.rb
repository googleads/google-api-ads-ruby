# !/usr/bin/env ruby
# Encoding: utf-8
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
# This example updates a company's name. To determine which companies exist, run
# get_all_companies.rb.

require 'ad_manager_api'

def update_companies(ad_manager, company_id)
  # Get the CompanyService.
  company_service = ad_manager.service(:CompanyService, API_VERSION)

  # Create a statement to only select a single company.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :company_id'
    sb.with_bind_variable('company_id', company_id)
    sb.limit = 1
  end

  # Get the company by statement.
  response = company_service.get_companies_by_statement(
      statement.to_statement()
  )
  raise 'No companies found to update.' if response[:results].to_a.empty?
  company = response[:results].first

  # Update company object by appending ' LLC.' to its name.
  company[:name] += ' LLC.'

  # Update the companies on the server.
  updated_companies = company_service.update_companies([company])

  if updated_companies.to_a.size > 0
    updated_companies.each do |company|
      puts 'A company with ID %d, name "%s", and type "%s" was updated.' %
          [company[:id], company[:name], company[:type]]
    end
  else
    puts 'No companies were updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    company_id = 'INSERT_COMPANY_ID_HERE'.to_i
    update_companies(ad_manager, company_id)

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
