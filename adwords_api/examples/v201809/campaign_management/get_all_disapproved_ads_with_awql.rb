#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This example illustrates how to retrieve all the disapproved ads in a given
# ad group with AWQL.

require 'adwords_api'

def get_all_disapproved_ads_with_awql(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Get all the ads in this ad group.
  query_builder = adwords.service_query_builder do |b|
    b.select('Id', 'PolicySummary')
    b.where('AdGroupId').equal_to(ad_group_id)
    b.where('CombinedApprovalStatus').equal_to('DISAPPROVED')
    b.order_by_asc('Id')
    b.limit(0, PAGE_SIZE)
  end
  query = query_builder.build

  # Set the initial values.
  disapproved_ads_count = 0

  # Look through all ads to find ones that are disapproved.
  loop do
    page_query = query.to_s
    page = ad_group_ad_srv.query(page_query)
    if page[:entries]
      page[:entries].each do |ad_group_ad|
        policy_summary = ad_group_ad[:policy_summary]
        disapproved_ads_count += 1
        puts ("Ad with ID %d and type '%s' was disapproved with the " +
            "following policy topic entries:") % [ad_group_ad[:ad][:id],
            ad_group_ad[:ad][:ad_type]]
        policy_summary[:policy_topic_entries].each do |policy_topic_entry|
          puts "  topic id: %s, topic name: '%s', Help Center URL: '%s'" % [
            policy_topic_entry[:policy_topic_id],
            policy_topic_entry[:policy_topic_name],
            policy_topic_entry[:policy_topic_help_center_url]
          ]
          unless policy_topic_entry[:policy_topic_evidences].nil?
            policy_topic_entry[:policy_topic_evidences].each do |evidence|
              puts "    evidence type: '%s'" %
                  evidence[:policy_topic_evidence_type]
              unless evidence[:evidence_text_list].nil?
                evidence[:evidence_text_list].each_with_index do |text, i|
                  puts "      evidence text[%d]: '%s'" % [i, text]
                end
              end
            end
          end
        end
      end
    end
    break unless query.has_next(page)
    query.next_page
  end

  puts "%d disapproved ads were found." % disapproved_ads_count
end

if __FILE__ == $0
  API_VERSION = :v201809

  PAGE_SIZE = 100

  begin
    # ID of an ad group to get disapproved ads for.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    get_all_disapproved_ads_with_awql(ad_group_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts 'HTTP Error: %s' % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'Message: %s' % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
