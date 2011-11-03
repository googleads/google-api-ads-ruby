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
require 'adwords_api'

API_VERSION = :v200909

def get_geo_location_info()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

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
  begin
    get_geo_location_info()

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
