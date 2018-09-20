#!/usr/bin/env ruby
# Encoding: utf-8
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
# This example illustrates how to retrieve the account hierarchy under an
# account. This example needs to be run against an AdWords manager account.

require 'adwords_api'
require 'adwords_api/utils'

def get_account_hierarchy()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  managed_customer_srv = adwords.service(:ManagedCustomerService, API_VERSION)

  # Get the account hierarchy for this account.
  selector = {
    :fields => ['CustomerId',  'Name'],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values
  offset, page = 0, {}

  accounts = {}
  child_links = {}
  parent_links = {}
  root_account = nil

  begin
    page = managed_customer_srv.get(selector)

    if page and page[:entries]
      if page[:links]
        page[:links].each do |link|
          unless child_links.include?(link[:manager_customer_id])
            child_links[link[:manager_customer_id]] = []
          end
          child_links[link[:manager_customer_id]] << link
          unless parent_links.include?(link[:client_customer_id])
            parent_links[link[:client_customer_id]] = []
          end
          parent_links[link[:client_customer_id]] << link
        end
      end

      page[:entries].each do |account|
        accounts[account[:customer_id]] = account
        unless parent_links.include?(account[:customer_id])
          root_account = account
        end
      end

      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  if root_account.nil?
    puts "Unable to determine a root account."
  else
    puts "CustomerId, Name"
    display_account_tree(root_account, accounts, child_links, 0)
  end
end

def display_account_tree(account, accounts, links, depth)
  prefix = '-' * depth * 2
  puts '%s%s, %s' % [prefix, account[:customer_id], account[:name]]
  if links.include?(account[:customer_id])
    links[account[:customer_id]].each do |child_link|
      child_account = accounts[child_link[:client_customer_id]]
      display_account_tree(child_account, accounts, links, depth + 1)
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201809
  PAGE_SIZE = 500

  begin
    get_account_hierarchy()

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
