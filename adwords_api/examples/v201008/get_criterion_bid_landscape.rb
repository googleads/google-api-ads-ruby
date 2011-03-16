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
# This example gets a bid landscape for an ad group and a criterion. To get ad
# groups, run get_all_ad_groups.rb. To get criteria, run
# get_all_ad_group_criteria.rb.
#
# Tags: BidLandscapeService.getBidLandscape

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201008

def get_criterion_bid_landscapes()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  bid_landscape_srv = adwords.service(:BidLandscapeService, API_VERSION)

  ad_group_id = 'INSERT_ADGROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Get criterion bid landscape.
  selector = {
    # The 'xsi_type' field allows you to specify the xsi:type of the object
    # being created. It's only necessary when you must provide an explicit
    # type that the client library can't infer.
    :xsi_type => 'CriterionBidLandscapeSelector',
    :id_filters => [{
      :ad_group_id => ad_group_id,
      :criterion_id => criterion_id
    }]
  }
  bid_landscapes = bid_landscape_srv.get_bid_landscape(selector)
  if bid_landscapes
    puts "#{bid_landscapes.length} bid landscape(s) retrieved."
    bid_landscapes.each do |bid_landscape|
      puts "Retrieved criterion bid landscape with ad group id " +
          "'#{bid_landscape[:ad_group_id]}', criterion id " +
          "'#{bid_landscape[:criterion_id]}', start date " +
          "'#{bid_landscape[:start_date]}', end date "+
          "'#{bid_landscape[:end_date]}', with landscape points:"
      bid_landscape[:landscape_points].each do |point|
        puts "  #{point[:bid][:micro_amount]} => clicks: #{point.clicks}, " +
            "cost: #{point[:cost][:micro_amount]}, marginalCpc: " +
            "#{point[:marginal_cpc][:micro_amount]}, impressions: " +
            "#{point[:impressions]}"
      end
    end
  else
    puts "No bid landscapes retrieved."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_criterion_bid_landscapes()

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
