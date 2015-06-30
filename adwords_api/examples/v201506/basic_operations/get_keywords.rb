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
# This example illustrates how to retrieve all keywords for an ad group. To add
# keywords to an existing ad group, run add_keywords.rb.
#
# Tags: AdGroupCriterionService.get

require 'adwords_api'

def get_keywords(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Get all keywords for this ad group.
  selector = {
    :fields => ['Id', 'CriteriaType', 'KeywordText'],
    :ordering => [
      {:field => 'Id', :sort_order => 'ASCENDING'}
    ],
    :predicates => [
      {:field => 'AdGroupId', :operator => 'EQUALS', :values => [ad_group_id]},
      {:field => 'CriteriaType', :operator => 'EQUALS', :values => ['KEYWORD']}
    ],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  begin
    page = ad_group_criterion_srv.get(selector)
    if page[:entries]
      page[:entries].each do |keyword|
        puts "Keyword ID %d, type '%s' and text '%s'" %
            [keyword[:criterion][:id],
             keyword[:criterion][:type],
             keyword[:criterion][:text]]
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  if page.include?(:total_num_entries)
    puts "\tAd group ID %d has %d keyword(s)." %
        [ad_group_id, page[:total_num_entries]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201506
  PAGE_SIZE = 500

  begin
    # Ad group ID to get keywords for.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    get_keywords(ad_group_id)

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
