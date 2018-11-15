#!/usr/bin/env ruby
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
# This example creates new companies. To determine which companies exist, run
# get_all_companies.rb.

require 'securerandom'
require 'ad_manager_api'

def create_companies(ad_manager, number_of_companies_to_create)
  # Get the CompanyService.
  company_service = ad_manager.service(:CompanyService, API_VERSION)

  # Create an array to store local company objects.
  companies = (1..number_of_companies_to_create).map do
    {:name => 'Advertiser %s' % SecureRandom.uuid(), :type => 'ADVERTISER'}
  end

  # Create the companies on the server.
  created_companies = company_service.create_companies(companies)

  if created_companies.to_a.size > 0
    created_companies.each do |company|
      puts 'Company with ID %d, name "%s", and type "%s" was created.' %
          [company[:id], company[:name], company[:type]]
    end
  else
    puts 'No companies were created.'
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
    number_of_companies_to_create = 5
    create_companies(ad_manager, number_of_companies_to_create)

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
