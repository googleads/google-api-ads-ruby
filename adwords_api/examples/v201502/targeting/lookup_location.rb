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
# This example gets location criteria by name.
#
# Tags: LocationCriterionService.get

require 'adwords_api'

def lookup_location()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  location_criterion_srv =
      adwords.service(:LocationCriterionService, API_VERSION)

  # List of locations to look up.
  location_names = ['Paris', 'Quebec', 'Spain', 'Deutschland']
  # Locale to retrieve names in.
  locale = 'en'

  # Get the criteria by names.
  selector = {
      :fields => ['Id', 'LocationName', 'CanonicalName', 'DisplayType',
          'ParentLocations', 'Reach', 'TargetingStatus'],
      :predicates => [
          # Location names must match exactly, only EQUALS and IN are supported.
          {:field => 'LocationName',
           :operator => 'IN',
           :values => location_names},
          # Set the locale of the returned location names.
          {:field => 'Locale', :operator => 'EQUALS', :values => [locale]}
    ]
  }
  criteria = location_criterion_srv.get(selector)

  if criteria
    criteria.each do |criterion|
      # Extract all parent location names as one comma-separated string.
      parent_location = if criterion[:location][:parent_locations] and
          !criterion[:location][:parent_locations].empty?
        locations_array = criterion[:location][:parent_locations].map do |loc|
          loc[:location_name]
        end
        locations_array.join(', ')
      else
        'N/A'
      end
      puts ("The search term '%s' returned the location '%s' of type '%s' " +
          "with ID %d, parent locations '%s' and reach %d (%s)") %
          [criterion[:search_term], criterion[:location][:location_name],
           criterion[:location][:criterion_type], criterion[:location][:id],
           parent_location, criterion[:reach],
           criterion[:location][:targeting_status]]
    end
  else
    puts 'No criteria were returned.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    lookup_location()

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'http://code.google.com/p/google-api-ads-ruby/wiki/OAuth2'

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
