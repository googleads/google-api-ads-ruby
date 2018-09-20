#!/usr/bin/env ruby
# Encoding: utf-8
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

require 'adwords_api'

def get_keyword_ideas(keyword_text, ad_group_id)
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
    :request_type => 'IDEAS'
  }
  selector[:requested_attribute_types] = [
    'KEYWORD_TEXT',
    'SEARCH_VOLUME',
    'AVERAGE_CPC',
    'COMPETITION',
    'CATEGORY_PRODUCTS_AND_SERVICES',
  ]

  selector[:paging] = {
    :start_index => 0,
    :number_results => PAGE_SIZE
  }

  search_parameters = []
  search_parameters << {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'RelatedToQuerySearchParameter',
      :queries => [keyword_text]
  }

  search_parameters << {
    # Language setting (optional).
    # The ID can be found in the documentation:
    #  https://developers.google.com/adwords/api/docs/appendix/languagecodes
    # Only one LanguageSearchParameter is allowed per request.
    :xsi_type => 'LanguageSearchParameter',
    :languages => [{:id => 1000}]
  }

  search_parameters << {
    # Network search parameter (optional).
    :xsi_type => 'NetworkSearchParameter',
    :network_setting => {
      :target_google_search => true,
      :target_search_network => false,
      :target_content_network => false,
      :target_partner_search_network => false
    }
  }

  unless ad_group_id.nil?
    search_parameters << {
      :xsi_type => 'SeedAdGroupIdSearchParameter',
      :ad_group_id => ad_group_id
    }
  end

  selector[:search_parameters] = search_parameters

  # Define initial values.
  offset = 0
  results = []

  begin
    # Perform request. If this loop executes too many times in quick suggestion,
    # you may get a RateExceededError. See here for more info on handling these:
    # https://developers.google.com/adwords/api/docs/guides/rate-limits
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
    average_cpc = data['AVERAGE_CPC'][:value]
    competition = data['COMPETITION'][:value]
    products_and_services = data['CATEGORY_PRODUCTS_AND_SERVICES'][:value]
    average_monthly_searches = data['SEARCH_VOLUME'][:value]
    puts ("Keyword with text '%s', average monthly search volume %d, " +
        "average CPC %d, and competition %.2f was found with categories: %s") %
        [
          keyword,
          average_monthly_searches,
          average_cpc[:micro_amount],
          competition,
          products_and_services
        ]
  end
  puts "Total keywords related to '%s': %d." % [keyword_text, results.length]
end

if __FILE__ == $0
  API_VERSION = :v201809
  PAGE_SIZE = 100

  begin
    keyword_text = 'INSERT_KEYWORD_TEXT_HERE'
    # Optional:
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'

    ad_group_id = nil if ad_group_id == 'INSERT_AD_GROUP_ID_HERE'
    get_keyword_ideas(keyword_text, ad_group_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

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
