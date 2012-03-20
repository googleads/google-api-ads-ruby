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
# This example illustrates how to retrieve all languages and carriers available
# for targeting.
#
# Tags: ConstantDataService.getLanguageCriterion
# Tags: ConstantDataService.getCarrierCriterion

require 'adwords_api'

def get_targetable_languages_and_carriers()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  constant_data_srv = adwords.service(:ConstantDataService, API_VERSION)

  # Get all languages from ConstantDataService.
  languages = constant_data_srv.get_language_criterion()

  if languages
    languages.each do |language|
      puts "Language name is '%s', ID is %d and code is '%s'." %
          [language[:name], language[:id], language[:code]]
    end
  else
    puts 'No languages were found.'
  end

  # Get all carriers from ConstantDataService.
  carriers = constant_data_srv.get_carrier_criterion()

  if carriers
    carriers.each do |carrier|
      puts "Carrier name is '%s', ID is %d and country code is '%s'." %
          [carrier[:name], carrier[:id], carrier[:country_code]]
    end
  else
    puts 'No carriers were retrieved.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    get_targetable_languages_and_carriers()

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
