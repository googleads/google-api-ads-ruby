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
# This example illustrates how to retrieve all the disapproved ads in a given
# campaign. To add ads, run add_ads.rb.
#
# Tags: AdGroupAdService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v200909

def get_all_disapproved_ads()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Get all the disapproved ads for this campaign.
  selector = {
    :campaign_ids => [campaign_id]
  }
  response = ad_group_ad_srv.get(selector)
  if response and response[:entries]
    ad_group_ads = response[:entries]
    disapproved_ads = []
    disapproved_ads = ad_group_ads.select do |ad_group_ad|
      ad_group_ad[:ad][:approval_status] == 'DISAPPROVED'
    end
    puts "Campaign ##{campaign_id} has #{disapproved_ads.length} " +
        "disapproved ad(s)."
    disapproved_ads.each do |ad_group_ad|
      puts "  Ad id is #{ad_group_ad[:ad][:id]}, type is " +
          "#{ad_group_ad[:ad][:xsi_type]} and status is " +
          "\"#{ad_group_ad[:status]}\"."
    end
  else
    puts "No disapproved ads found for campaign ##{campaign_id}."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_all_disapproved_ads()

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
