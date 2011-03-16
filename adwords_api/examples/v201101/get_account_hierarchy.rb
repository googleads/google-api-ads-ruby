#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101

def get_account_hierarchy()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  serviced_account_srv = adwords.service(:ServicedAccountService, API_VERSION)

  # Get the account hierarchy for this account.
  selector = {
    :service_types => ['UI_AND_API', 'API_ONLY'],
    :enable_paging => false
  }

  graph = nil

  # Run with MCC account.
  adwords.use_mcc do
    graph = serviced_account_srv.get(selector)
  end

  if graph
    # Display the accounts.
    account_number = graph[:accounts] ? graph[:accounts].size : 0
    puts "There are %d customers under this account hierarchy." %
        account_number
    if graph[:accounts]
      graph[:accounts].each_with_index do |account, index|
        puts "#{index + 1}) Customer id: " +
            AdwordsApi::Utils.format_id(account[:customer_id])
        puts "Login email: #{account[:login]}"
        puts "Company Name: #{account[:company_name]}"
        puts "IsMcc: #{account[:can_manage_clients]}"
        puts ''
      end

      puts ''

      # Display the links.
      graph[:links].each do |link|
        puts "There is a #{link[:type_of_link]} link of type " +
            "#{link[:service_type]} from " +
            "#{AdwordsApi::Utils.format_id(link[:manager_id][:id])} to " +
            "#{AdwordsApi::Utils.format_id(link[:client_id][:id])}"
      end
    end
  else
    puts "No accounts were found."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_account_hierarchy()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'API Exception caught.'
    puts 'Message: %s' % e.message
    puts 'Code: %d' % e.code if e.code
    puts 'Trigger: %s' % e.trigger if e.trigger
    puts 'Errors:'
    if e.errors
      e.errors.each_with_index do |error, index|
        puts ' %d. Error type is %s. Fields:' % [index + 1, error[:xsi_type]]
        error.each_pair do |field, value|
          if field != :xsi_type
            puts '     %s: %s' % [field, value]
          end
        end
      end
    end
  end
end
