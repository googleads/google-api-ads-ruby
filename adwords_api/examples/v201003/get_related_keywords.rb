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
# This example retrieves keywords that are related to a given keyword.
#
# Tags: TargetingIdeaService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201003

def get_related_keywords()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  targeting_idea_srv = adwords.service(:TargetingIdeaService, API_VERSION)

  results_per_page = 10
  keyword_text = 'space cruise'

  # Construct selector object.
  selector = {
    :idea_type => 'KEYWORD',
    :request_type => 'IDEAS',
    :requested_attribute_types => ['KEYWORD'],
    :search_parameters => [{
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'RelatedToKeywordSearchParameter',
      :keywords => [{
        :text => keyword_text,
        :match_type => 'EXACT'
      }]
    }],
    :paging => {
      :start_index => 0,
      :number_results => results_per_page
    }
  }

  # Perform request.
  results = []
  index = 0
  while true
    page = targeting_idea_srv.get(selector)
    if page and page[:entries]
      results += page[:entries]
    end
    break if page[:total_num_entries] <= index
    index += results_per_page
    selector[:paging][:start_index] = index
  end

  # Display results.
  results.each do |result|
    data = AdwordsApi::Utils.map(result[:data])
    keyword = data['KEYWORD'][:value]
    puts " Found keyword with text \"%s\" and match type \"%s\"" %
        [keyword[:text], keyword[:match_type]]
  end
  puts "Total keywords related to \"%s\": %d." % [keyword_text, results.length]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_related_keywords()

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
