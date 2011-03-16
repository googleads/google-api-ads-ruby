#!/usr/bin/ruby
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
# This example gets all account changes between the two dates specified, for
# all campaigns.
#
# Tags: CustomerSyncService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'
require 'pp'

API_VERSION = :v201101

def get_all_account_changes()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
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
    campaigns = response[:entries]
    campaign_ids = campaigns.map { |campaign| campaign[:id] }
  else
    puts "No campaigns were found."
    return
  end

  # Create selector for CustomerSyncService.
  selector = {
    :campaign_ids => campaign_ids,
    :date_time_range => {
      :min => min_date_time,
      :max => max_date_time
    }
  }

  # Get all account changes for campaigns.
  campaign_changes = customer_sync_srv.get(selector)

  # Display changes.
  if campaign_changes
    puts "Most recent change: #{campaign_changes[:last_change_timestamp]}"
    campaign_changes[:changed_campaigns].each do |campaign|
      puts "Campaign with id #{campaign[:campaign_id]} was changed:"
      puts "  Campaign changed status: #{campaign[:campaign_change_status]}"
      if campaign[:campaign_change_status] != 'NEW'
        puts "  Added ad extensions: %s" %
            campaign[:added_ad_extensions].pretty_inspect
        puts "  Added campaign criteria: %s" %
            campaign[:added_campaign_criteria].pretty_inspect
        puts "  Added campaign targeting: %s" %
            campaign[:campaign_targeting_changed].pretty_inspect
        puts "  Deleted ad extensions: %s" %
            campaign[:deleted_ad_extensions].pretty_inspect
        puts "  Deleted campaign criteria: %s" %
            campaign[:deleted_campaign_criteria].pretty_inspect

        if campaign[:changed_ad_groups]
          campaign[:changed_ad_groups].each do |ad_group|
            puts "  Ad group with id #{ad_group[:ad_group_id]} was changed:"
            puts "    Ad group changed status: " +
                "#{ad_group[:ad_group_change_status]}"
            if ad_group[:ad_group_change_status] != 'NEW'
              puts "    Ads changed: %s" % ad_group[:changed_ads].pretty_inspect
              puts "    Criteria changed: %s" %
                  ad_group[:changed_criteria].pretty_inspect
              puts "    Criteria deleted: %s" %
                  ad_group[:deleted_criteria].pretty_inspect
            end
          end
        end
      end
      puts ''
    end
  else
    puts "No account changes were found."
  end


end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_all_account_changes()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'API Exception caught.'
    puts 'Message: %s' % e.message
    puts 'Code: %d' % e.code if e.code
    puts 'Trigger: %s' % e.trigger if e.trigger
    puts 'Errors:'
    if e.errors
      e.errors.each_with_index do |error, index|
        puts ' %d. Error type is %s. Fields:' % [index + 1, error[:xsi_type]]
        error.each_pair do |field, value|
          if field != :xsi_type
            puts '     %s: %s' % [field, value]
          end
        end
      end
    end
  end
end
