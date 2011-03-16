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
# This example illustrates override an ad extension for a specific ad, by
# creating an ad extension override. To create a campaign, run add_campaign.rb.
# To create an ad, run add_ads.rb.
#
# Tags: AdExtensionOverrideService.mutate

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101

def add_ad_extension_override()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  ad_ext_override_srv =
      adwords.service(:AdExtensionOverrideService, API_VERSION)

  ad_id = 'INSERT_AD_ID_HERE'.to_i
  campaign_ad_extension_id = 'INSERT_CAMPAIGN_AD_EXTENSION_ID_HERE'.to_i

  # Create operation.
  operation = {
    :operator => 'ADD',
    :operand => {
      :ad_id => ad_id,
      :ad_extension => {
        :id => campaign_ad_extension_id
      }
    }
  }

  # Add override.
  response = ad_ext_override_srv.mutate([operation])
  ad_ext_override = response[:value].first
  puts 'Ad extension override was successfully added.'
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    add_ad_extension_override()

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
