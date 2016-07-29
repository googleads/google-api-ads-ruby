#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This example adds a user list (a.k.a. audience) and uploads hashed email
# addresses to populate the list.
#
# Note: It may take several hours for the list to be populated with members.
# Email addresses must be associated with a Google account. For privacy
# purposes, the user list size will show as zero until the list has at least
# 1000 members. After that, the size will be rounded to the two most
# significant digits.

require 'adwords_api'
require 'digest'

def add_crm_based_user_list(emails)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  user_list_srv = adwords.service(:AdwordsUserListService, API_VERSION)

  user_list = {
    :xsi_type => 'CrmBasedUserList',
    :name => 'Customer relationship management list #%d' % Time.new.usec,
    :description => 'A list of customers that originated from email addresses',
    # Maximum life span is 180 days.
    :membership_life_span => 180
  }

  operation = {
    :operand => user_list,
    :operator => 'ADD'
  }

  result = user_list_srv.mutate([operation])
  user_list_id = result[:value].first[:id]

  sha_digest = Digest::SHA256.new
  hashed_emails = emails.map do |email|
    # Remove leading and trailing whitespace and convert all characters to
    # lowercase before generating the hashed version.
    email = email.strip.downcase
    sha_digest.hexdigest(email)
  end

  mutate_members_operation = {
    :operand => {
      :user_list_id => user_list_id,
      :data_type => 'EMAIL_SHA256',
      :members => hashed_emails
    },
    :operator => 'ADD'
  }

  mutate_members_result =
      user_list_srv.mutate_members([mutate_members_operation])

  mutate_members_result[:user_lists].each do |user_list|
    puts "User list with name '%s' and ID '%d' was added." %
        [user_list[:name], user_list[:id]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201603

  emails = ['customer1@example.com', 'customer2@example.com',
      ' Customer3@example.com ']

  begin
    add_crm_based_user_list(emails)

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
