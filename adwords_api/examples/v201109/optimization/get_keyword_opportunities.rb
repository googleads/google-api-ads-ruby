#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example reads all the keyword opportunities for the customer.
#
# Tags: BulkOpportunityService.get

require 'rubygems'
require 'adwords_api'
require 'adwords_api/utils'

API_VERSION = :v201109
PAGE_SIZE = 20

def get_keyword_opportunities()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  bulk_opportunity_srv = adwords.service(:BulkOpportunityService, API_VERSION)

  # Construct selector object.
  selector = {
    :requested_attribute_types => ['KEYWORD', 'IDEA_TYPE'],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Perform request.
  ideas = []
  index = 0
  begin
    page = bulk_opportunity_srv.get(selector)
    if page and page[:entries]
      page[:entries].each do |entry|
        ideas += entry[:opportunity_ideas] if entry[:opportunity_ideas]
      end
    end
    break if page[:total_num_entries] <= index
    index += PAGE_SIZE
    selector[:paging][:start_index] = index
  end while page[:total_num_entries] > index

  # Display results.
  ideas.each do |idea|
    data = AdwordsApi::Utils.map(idea[:data])
    keyword = data['KEYWORD'][:value][:text]
    idea_type = data['IDEA_TYPE'][:value]
    puts " Found opportunity idea of type \"%s\": \"%s\"" % [idea_type, keyword]
  end
  puts "Total opportunity ideas: %d." % [ideas.length]
end

if __FILE__ == $0
  begin
    get_keyword_opportunities()

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
