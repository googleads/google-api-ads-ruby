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
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201008

def get_method_cost()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
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
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_method_cost()

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
