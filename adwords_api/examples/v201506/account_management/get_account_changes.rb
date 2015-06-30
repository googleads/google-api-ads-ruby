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
# This example gets all account changes that happened within the last 24 hours,
# for all your campaigns.
#
# Tags: CustomerSyncService.get

require 'adwords_api'
require 'date'
require 'pp'

def get_account_changes()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)
  customer_sync_srv = adwords.service(:CustomerSyncService, API_VERSION)

  today_at_midnight = DateTime.parse(Date.today.to_s)
  yesterday_at_midnight = DateTime.parse((Date.today - 1).to_s)
  min_date_time = yesterday_at_midnight.strftime("%Y%m%d %H%M%S")
  max_date_time = today_at_midnight.strftime("%Y%m%d %H%M%S")

  # Get all the campaigns for this account.
  selector = {
    :fields => ['Id']
  }
  response = campaign_srv.get(selector)

  campaign_ids = []

  if response and response[:entries]
    campaign_ids = response[:entries].map { |campaign| campaign[:id] }
  else
    raise StandardError, 'No campaigns were found.'
  end

  # Create a selector for CustomerSyncService.
  selector = {
    :campaign_ids => campaign_ids,
    :date_time_range => {
      :min => min_date_time,
      :max => max_date_time
    }
  }

  # Get all account changes for the campaigns.
  campaign_changes = customer_sync_srv.get(selector)

  # Display changes.
  if campaign_changes
    puts "Most recent change: %s" % campaign_changes[:last_change_timestamp]
    campaign_changes[:changed_campaigns].each do |campaign|
      puts "Campaign with ID %d was changed:" % campaign[:campaign_id]
      puts "\tCampaign change status: '%s'" % campaign[:campaign_change_status]
      unless ['NEW', 'FIELDS_UNCHANGED'].include?(
          campaign[:campaign_change_status])
        puts "\tAdded ad extensions: '%s'" %
            campaign[:added_ad_extensions].pretty_inspect.chomp
        puts "\tAdded campaign criteria: '%s'" %
            campaign[:added_campaign_criteria].pretty_inspect.chomp
        puts "\tRemoved ad extensions: '%s'" %
            campaign[:removed_ad_extensions].pretty_inspect.chomp
        puts "\tRemoved campaign criteria: '%s'" %
            campaign[:removed_campaign_criteria].pretty_inspect.chomp

        if campaign[:changed_ad_groups]
          campaign[:changed_ad_groups].each do |ad_group|
            puts "\tAd group with ID %d was changed:" % ad_group[:ad_group_id]
            puts "\t\tAd group changed status: '%s'" %
                ad_group[:ad_group_change_status]
            unless ['NEW', 'FIELDS_UNCHANGED'].include?(
                ad_group[:ad_group_change_status])
              puts "\t\tAds changed: '%s'" %
                  ad_group[:changed_ads].pretty_inspect.chomp
              puts "\t\tCriteria changed: '%s'" %
                  ad_group[:changed_criteria].pretty_inspect.chomp
              puts "\t\tCriteria removed: '%s'" %
                  ad_group[:removed_criteria].pretty_inspect.chomp
            end
          end
        end
      end
      puts
    end
  else
    puts 'No account changes were found.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201506

  begin
    get_account_changes()

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
