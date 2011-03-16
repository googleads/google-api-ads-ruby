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
# This example shows how to check for conversion optimizer eligibility by
# attempting to set the bidding transition with the validate only header set to
# true.
#
# Tags: CampaignService.mutate

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201003

def get_conversion_optimizer_eligibility()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Enable 'validate only'
  adwords.validate_only = true

  # Prepare for "updating" campaign.
  operation = {
    :operator => 'SET',
    :operand => {
      :id => campaign_id
    },
    # Bidding transition.
    :bidding_transition => {
      :xsi_type => 'ConversionOptimizerBiddingTransition',
      :target_bidding_strategy => {
        :xsi_type => 'ConversionOptimizer',
        :pricing_model => 'CONVERSIONS'
      },
      # Ad group bids.
      :explicit_ad_group_bids => {
        :xsi_type => 'ConversionOptimizerAdGroupBids'
      }
    }
  }

  # Check that campaign is eligible for conversion optimization.
  begin
    response = campaign_srv.mutate([operation])
    puts 'Campaign id %d is eligible to use conversion optimizer.' %
        campaign[:id]
  rescue AdwordsApi::Errors::ApiException => e
    errors = e.errors
    error = errors.find { |err| err[:xsi_type] == 'BiddingTransitionError'}
    if error
      puts "Campaign id #{campaign_id} is not eligible to use conversion " +
          "optimizer due to reason: #{error[:reason]}"
    else
      raise e
    end
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_conversion_optimizer_eligibility()

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
