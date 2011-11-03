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
# This example deletes a user list by setting the status to 'CLOSED'. To get
# user lists, run get_all_user_lists.rb.
#
# Tags: UserListService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201008

def delete_user_list()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  user_list_srv = adwords.service(:UserListService, API_VERSION)

  user_list_id = 'INSERT_USER_LIST_ID_HERE'.to_i

  # Prepare for deleting remarketing user list.
  operation = {
    :operator => 'SET',
    :operand => {
      :id => user_list_id,
      :status => 'CLOSED'
    }
  }

  # Delete user list.
  response = user_list_srv.mutate([operation])
  user_list = response[:value].first
  puts 'User list with name "%s" and id %d was deleted (closed).' %
      [user_list[:name], user_list[:id]]
end

if __FILE__ == $0
  begin
    delete_user_list()

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
