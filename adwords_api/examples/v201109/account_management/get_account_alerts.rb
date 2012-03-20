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
# This example gets all alerts for all clients of an MCC account. The effective
# user (clientCustomerId, or authToken) must be an MCC user to get results.
#
# Tags: AlertService.get

require 'adwords_api'
require 'adwords_api/utils'

def get_account_alerts()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  alert_srv = adwords.service(:AlertService, API_VERSION)

  # Create the selector.
  selector = {
    :query => {
      :filter_spec => 'ALL',
      :client_spec => 'ALL',
      :trigger_time_spec => 'ALL_TIME',
      :severities => ['GREEN', 'YELLOW', 'RED'],
      :types => [
        'ACCOUNT_BUDGET_BURN_RATE', 'ACCOUNT_BUDGET_ENDING',
        'ACCOUNT_ON_TARGET', 'CAMPAIGN_ENDED', 'CAMPAIGN_ENDING',
        'CREDIT_CARD_EXPIRING', 'DECLINED_PAYMENT', 'MANAGER_LINK_PENDING',
        'MISSING_BANK_REFERENCE_NUMBER', 'PAYMENT_NOT_ENTERED',
        'TV_ACCOUNT_BUDGET_ENDING', 'TV_ACCOUNT_ON_TARGET',
        'TV_ZERO_DAILY_SPENDING_LIMIT', 'USER_INVITE_ACCEPTED',
        'USER_INVITE_PENDING', 'ZERO_DAILY_SPENDING_LIMIT'
      ]
    },
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  # Get alerts.
  begin
    page = alert_srv.get(selector)
    if page[:entries]
      page[:entries].each_with_index do |alert, index|
        puts "%d) Customer ID is '%s', alert type is '%s', severity is '%s'."
            [AdwordsApi::Utils.format_id(alert[:client_customer_id]),
             alert[:alert_type], alert[:alert_severity]]
        alert[:details].each do |detail|
          puts "\t- triggered at %s" % detail[:trigger_time]
        end
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  if page.include?(:total_num_entries)
    puts "\tTotal number of alerts: %d." % page[:total_num_entries]
  end
end

if __FILE__ == $0
  API_VERSION = :v201109
  PAGE_SIZE = 500

  begin
    get_account_alerts()

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
