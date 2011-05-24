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
# This code example illustrates how to retrieve campaign alerts for a user.
# The alerts are restricted to a maximum of 10 entries.
#
# Tags: AlertService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101

def get_campaign_alerts()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  alert_srv = adwords.service(:AlertService, API_VERSION)

  # Create the selector.
  selector = {
    :query => {
      :filter_spec => 'ALL',
      :client_spec => 'ALL',
      :trigger_time_spec => 'ALL_TIME',
      :severities => ['GREEN', 'YELLOW', 'RED'],
      :types => ['CAMPAIGN_ENDING', 'CAMPAIGN_ENDED']
    },
    :paging => {
      :start_index => 0,
      :number_results => 10
    }
  }

  # Get alerts.
  response = alert_srv.get(selector)

  if response and response[:entries]
    alerts = response[:entries]
    alerts.each_with_index do |alert, index|
      puts "{index}) Customer Id is " +
          "#{AdwordsApi::Utils.format_id(alert[:client_customer_id])}, " +
          "alert type is '#{alert[:alert_type]}', severity is " +
          "#{alert[:alert_severity]}."
      alert[:details].each do |detail|
        puts "  - triggered at #{detail[:trigger_time]}"
      end
    end
  else
    puts "No alerts were found."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_campaign_alerts()

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
