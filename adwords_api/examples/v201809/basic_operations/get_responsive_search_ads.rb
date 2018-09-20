#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2018 Google LLC
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
# This example gets non-removed responsive search ads in an ad group. To add
# responsive search ads, run add_responsive_search_ad.rb.
# To get ad groups, run get_ad_groups.rb.

require 'adwords_api'

def get_responsive_search_ads(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  # Get all the ads for this ad group.
  selector = {
    :fields => ['Id', 'Status', 'ResponsiveSearchAdHeadlines',
        'ResponsiveSearchAdDescriptions'],
    :ordering => [{:field => 'Id', :sort_order => 'ASCENDING'}],
    # By default, disabled ads aren't returned by the selector. To return them,
    # include the DISABLED status in a predicate.
    :predicates => [
      {
        :field => 'AdGroupId',
        :operator => 'IN',
        :values => [ad_group_id]
      },
      {
        :field => 'Status',
        :operator => 'IN',
        :values => ['ENABLED', 'PAUSED']
      },
      {
        :field => 'AdType',
        :operator => 'EQUALS',
        :values => ['RESPONSIVE_SEARCH_AD']
      }
    ],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  begin
    page = ad_group_ad_srv.get(selector)
    if page[:entries]
      page[:entries].each do |ad_group_ad|
        ad = ad_group_ad[:ad]
        puts 'Responsive search ad with id %d and status %s was found.' %
            [ad[:id], ad_group_ad[:status]]
        puts '  Headlines:'
        ad[:headlines].each do |headline|
          pinning = headline[:pinned_field]
          puts '    %s' % headline[:asset][:asset_text]
          puts '      (pinned to %s)' % pinning unless pinning.nil?
        end
        puts '  Descriptions:'
        ad[:descriptions].each do |description|
          pinning = description[:pinned_field]
          puts '    %s' % description[:asset][:asset_text]
          puts '      (pinned to %s)' % pinning unless pinning.nil?
        end
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  if page.include?(:total_num_entries)
    puts "\nAd group ID %d has %d responsive search ad(s)." %
        [ad_group_id, page[:total_num_entries]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201809
  PAGE_SIZE = 500

  begin
    # Ad group ID to get text ads for.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    get_responsive_search_ads(ad_group_id)

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
