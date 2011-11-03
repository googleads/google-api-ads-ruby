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
# This example illustrates how to retrieve the cost, in API units of operation,
# of the given method, on a specified date.
#
# Tags: InfoService.get

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201008

def get_method_cost()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  info_srv = adwords.service(:InfoService, API_VERSION)

  date = Time.now
  service_name = 'AdGroupService'
  method_name = 'mutate'
  operator = 'SET'

  selector = {
    :api_usage_type => 'METHOD_COST',
    :service_name => service_name,
    :method_name => method_name,
    :operator => operator,
    :date_range => {
      :min => date.strftime('%Y%m%d'),
      :max => date.strftime('%Y%m%d')
    }
  }

  # Get the unit info.
  adwords.use_mcc do
    info = info_srv.get(selector)
    if info
      puts 'The cost of the %s.%s %s method during %s is %d.' %
          [service_name, method_name, operator, selector[:date_range][:min],
           info[:cost]]
    end
  end
end

if __FILE__ == $0
  begin
    get_method_cost()

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
