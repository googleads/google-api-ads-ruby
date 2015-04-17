#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This example fetches the set of valid ProductBiddingCategories.
#
# Tags: ConstantDataService.getProductBiddingCategoryData

require 'adwords_api'

def display_categories(categories, prefix='')
  categories.each do |category|
    puts "%s%s [%s]" % [prefix, category[:name], category[:id]]
    if category[:children]
      display_categories(category[:children],
          "%s%s > " % [prefix, category[:name]])
    end
  end
end

def get_product_category_taxonomy()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  constant_data_srv = adwords.service(:ConstantDataService, API_VERSION)

  selector = {
    :predicates => {:field => 'Country', :operator => 'IN', :values => ['US']}
  }

  results = constant_data_srv.get_product_bidding_category_data(selector)

  bidding_categories = {}
  root_categories = []

  result[:value].each do |product_bidding_category|
    id = product_bidding_category[:dimension_value][:value]
    parent_id = nil
    name = product_bidding_category[:display_value].first[:value]

    if product_bidding_category[:parent_dimension_value]
      parent_id = product_bidding_category[:parent_dimension_value][:value]
    end

    bidding_categories[id] ||= {}

    category = bidding_categories[id]

    if parent_id
      bidding_categories[parent_id] ||= {}

      parent = bidding_categories[parent_id]

      parent[:children] ||= []
      parent[:children] << category
    else
      root_categories << category
    end

    category[:id] = id
    category[:name] = name
  end

  display_categories(root_categories)
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    get_product_category_taxonomy()

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
