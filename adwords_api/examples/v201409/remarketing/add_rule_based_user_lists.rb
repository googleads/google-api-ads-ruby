#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This example adds two rule-based remarketing user lists: one with no site
# visit data restrictions, and another that will only include users who visit
# your site in the next six months.
#
# Tags: AdwordsUserListService.mutate

require 'adwords_api'

def add_rule_based_user_lists()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  user_list_srv = adwords.service(:AdwordsUserListService, API_VERSION)

  # First rule item group - users who visited the checkout page and had more
  # than one item in their shopping cart.
  cart_rule_item = {
    :xsi_type => 'StringRuleItem',
    :key => {
      :name => 'ecomm_pagetype'
    },
    :op => 'EQUALS',
    :value => 'checkout'
  }

  cart_size_rule_item = {
    :xsi_type => 'NumberRuleItem',
    :key => {
      :name => 'cartsize'
    },
    :op => 'GREATER_THAN',
    :value => 1.0
  }

  # Combine the two rule items into a RuleItemGroup so AdWords will AND
  # their rules together.
  checkout_multiple_item_group = {
    :items => [cart_rule_item, cart_size_rule_item]
  }

  # Second rule item group - users who checked out after October 31st
  # and before January 1st.
  start_date_rule_item = {
    :xsi_type => 'DateRuleItem',
    :key => {
      :name => 'checkoutdate'
    },
    :op => 'AFTER',
    :value => '20141031'
  }

  end_date_rule_item = {
    :xsi_type => 'DateRuleItem',
    :key => {
      :name => 'checkoutdate'
    },
    :op => 'BEFORE',
    :value => '20150101'
  }

  # Combine the date rule items into a RuleItemGroup.
  checked_out_nov_dec_item_group = {
    :items => [start_date_rule_item, end_date_rule_item]
  }

  # Combine the rule item groups into a Rule so AdWords will OR the
  # groups together.
  rule = {
    :groups => [checkout_multiple_item_group, checked_out_nov_dec_item_group]
  }

  # Create the user list with no restrictions on site visit date.
  expression_user_list = {
    :xsi_type => 'ExpressionRuleUserList',
    :name => 'Users who checked out in November or December OR ' +
        'visited the checkout page with more than one item in their cart',
    :description => 'Expression based user list',
    :rule => rule
  }

  # Create the user list restricted to users who visit your site within the
  # specified timeframe.
  date_user_list = {
    :xsi_type => 'DateSpecificRuleUserList',
    :name => 'Date rule user list created at ' + Time.now.to_s,
    :description => 'Users who visited the site between 20141031 and ' +
        '20150331 and checked out in November or December OR visited the ' +
        'checkout page with more than one item in their cart',
    # We re-use the rule here. To avoid side effects, we need a deep copy.
    :rule => Marshal.load(Marshal.dump(rule)),
    # Set the start and end dates of the user list.
    :start_date => '20141031',
    :end_date => '20150331'
  }

  # Create operations to add the user lists.
  operations = [expression_user_list, date_user_list].map do |user_list|
    {
      :operand => user_list,
      :operator => 'ADD'
    }
  end

  # Submit the operations.
  response = user_list_srv.mutate(operations)

  # Display the results.
  response[:value].each do |user_list|
    puts ("User list added with ID %d, name '%s', status '%s', " +
        "list type '%s', accountUserListStatus '%s', description '%s'.") %
        [user_list[:id], user_list[:name], user_list[:status],
        user_list[:list_type], user_list[:account_user_list_status],
        user_list[:description]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201409

  begin
    add_rule_based_user_lists()

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
