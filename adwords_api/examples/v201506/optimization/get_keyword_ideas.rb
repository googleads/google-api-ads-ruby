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
# This example retrieves keywords that are related to a given keyword.
#
# Tags: TargetingIdeaService.get

require 'adwords_api'

def get_keyword_ideas(keyword_text)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  targeting_idea_srv = adwords.service(:TargetingIdeaService, API_VERSION)

  # Construct selector object.
  selector = {
    :idea_type => 'KEYWORD',
    :request_type => 'IDEAS',
    :requested_attribute_types =>
        ['KEYWORD_TEXT', 'SEARCH_VOLUME', 'CATEGORY_PRODUCTS_AND_SERVICES'],
    :search_parameters => [
      {
        # The 'xsi_type' field allows you to specify the xsi:type of the object
        # being created. It's only necessary when you must provide an explicit
        # type that the client library can't infer.
        :xsi_type => 'RelatedToQuerySearchParameter',
        :queries => [keyword_text]
      },
      {
        # Language setting (optional).
        # The ID can be found in the documentation:
        #  https://developers.google.com/adwords/api/docs/appendix/languagecodes
        # Only one LanguageSearchParameter is allowed per request.
        :xsi_type => 'LanguageSearchParameter',
        :languages => [{:id => 1000}]
      }
    ],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Define initial values.
  offset = 0
  results = []

  begin
    # Perform request.
    page = targeting_idea_srv.get(selector)
    results += page[:entries] if page and page[:entries]

    # Prepare next page request.
    offset += PAGE_SIZE
    selector[:paging][:start_index] = offset
  end while offset < page[:total_num_entries]

  # Display results.
  results.each do |result|
    data = result[:data]
    keyword = data['KEYWORD_TEXT'][:value]
    puts "Found keyword with text '%s'" % keyword
    products_and_services = data['CATEGORY_PRODUCTS_AND_SERVICES'][:value]
    if products_and_services
      puts "\tWith Products and Services categories: [%s]" %
          products_and_services.join(', ')
    end
    average_monthly_searches = data['SEARCH_VOLUME'][:value]
    if average_monthly_searches
      puts "\tand average monthly search volume: %d" % average_monthly_searches
    end
  end
  puts "Total keywords related to '%s': %d." % [keyword_text, results.length]
end

if __FILE__ == $0
  API_VERSION = :v201506
  PAGE_SIZE = 100

  begin
    keyword_text = 'INSERT_KEYWORD_TEXT_HERE'
    get_keyword_ideas(keyword_text)

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
