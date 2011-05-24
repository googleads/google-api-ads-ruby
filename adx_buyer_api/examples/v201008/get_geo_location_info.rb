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
# This example illustrates how to retrieve geo location information for
# addresses.
#
# Tags: GeoLocationService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201008

def get_geo_location_info()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  geo_location_srv = adwords.service(:GeoLocationService, API_VERSION)

  selector = {
    :addresses => [
      {
        :street_address => '1600 Amphitheatre Parkway',
        :city_name => 'Mountain View',
        :province_code => 'US-CA',
        :province_name => 'California',
        :postal_code => '94043',
        :country_code => 'US'
      },
      {
        :street_address => '76 Ninth Avenue',
        :city_name => 'New York',
        :province_code => 'US-NY',
        :province_name => 'New York',
        :postal_code => '10011',
        :country_code => 'US'
      },
      {
        :street_address => '五四大街1号, Beijing东城区',
        :country_code => 'CN'
      }
    ]
  }

  # Get the geo location info for the various addresses.
  locations = geo_location_srv.get(selector)

  if locations
    locations.each do |location|
      puts "Address \"#{location[:address][:street_address]}\" has latitude " +
          "#{location[:geo_point][:latitude_in_micro_degrees]} and " +
          "longitude #{location[:geo_point][:longitude_in_micro_degrees]}."
    end
  else
    puts "No geo locations were returned."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_geo_location_info()

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
