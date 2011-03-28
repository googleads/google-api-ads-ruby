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
# This example reads all the keyword opportunities for the customer.
#
# Tags: BulkOpportunityService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101
PAGE_SIZE = 20

def get_keyword_opportunities()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  bulk_opportunity_srv = adwords.service(:BulkOpportunityService, API_VERSION)

  # Construct selector object.
  selector = {
    :requested_attribute_types => ['KEYWORD', 'IDEA_TYPE'],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Perform request.
  ideas = []
  index = 0
  begin
    page = bulk_opportunity_srv.get(selector)
    if page and page[:entries]
      page[:entries].each do |entry|
        ideas += entry[:opportunity_ideas] if entry[:opportunity_ideas]
      end
    end
    break if page[:total_num_entries] <= index
    index += PAGE_SIZE
    selector[:paging][:start_index] = index
  end while page[:total_num_entries] > index

  # Display results.
  ideas.each do |idea|
    data = AdwordsApi::Utils.map(idea[:data])
    keyword = data['KEYWORD'][:value][:text]
    idea_type = data['IDEA_TYPE'][:value]
    puts " Found opportunity idea of type \"%s\": \"%s\"" % [idea_type, keyword]
  end
  puts "Total opportunity ideas: %d." % [ideas.length]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_keyword_opportunities()

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
