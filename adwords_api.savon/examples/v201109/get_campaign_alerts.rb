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
require 'adwords_api'
require 'adwords_api/utils'

API_VERSION = :v201109

def get_campaign_alerts()
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
  begin
    get_campaign_alerts()

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
