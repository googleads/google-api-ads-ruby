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
# This example gets all conversions in the account. To add conversions, run
# add_conversion.rb.
#
# Tags: ConversionTrackerService.get

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201109

def get_all_conversions()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  conv_tracker_srv = adwords.service(:ConversionTrackerService, API_VERSION)

  # Get all conversions.
  selector = {
    :fields => ['Id', 'Name', 'Status', 'Category'],
    :ordering => [{:field => 'Name', :sort_order => 'ASCENDING'}],
  }
  response = conv_tracker_srv.get(selector)
  if response and response[:entries]
    conversions = response[:entries]
    puts "#{conversions.length} conversions(s) found."
    conversions.each do |conversion|
      puts "  Conversion with id \"#{conversion[:id]}\", status \"" +
          "#{conversion[:status]}\" and category \"#{conversion[:category]}\"" +
          " was found. Code snippet: \n#{conversion[:snippet]}\n"
    end
  else
    puts "No conversions found."
  end
end

if __FILE__ == $0
  begin
    get_all_conversions()

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
