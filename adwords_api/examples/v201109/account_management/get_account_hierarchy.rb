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
# This example illustrates how to retrieve the account hierarchy under an
# account.
#
# Tags: ServicedAccountService.get

require 'adwords_api'
require 'adwords_api/utils'

def get_account_hierarchy()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  serviced_account_srv = adwords.service(:ServicedAccountService, API_VERSION)

  # Get the account hierarchy for this account.
  selector = {:enable_paging => false}

  # Run the request at the MCC level.
  graph = adwords.use_mcc() {serviced_account_srv.get(selector)}

  if graph and graph[:accounts]
    accounts = graph[:accounts]
    puts "Accounts under this hierarchy: %d" % accounts.size
    accounts.each_with_index do |account, index|
      puts "%d) Customer ID: %s" %
          [index + 1, AdwordsApi::Utils.format_id(account[:customer_id])]
      puts "\tLogin email: %s" % account[:login]
      puts "\tCompany name: %s" % account[:company_name]
      puts "\tIsMcc: %s" % account[:can_manage_clients].to_s
    end

    # Display the links.
    if graph[:links]
      puts 'Hierarchy links:'
      graph[:links].each do |link|
        puts "\tThere is a '%s' link from %s to %s" %
            [link[:type_of_link],
             AdwordsApi::Utils.format_id(link[:manager_id][:id]),
             AdwordsApi::Utils.format_id(link[:client_id][:id])]
      end
    end
  else
    puts 'No accounts were found.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    get_account_hierarchy()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
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
