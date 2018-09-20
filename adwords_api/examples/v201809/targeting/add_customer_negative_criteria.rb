#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# This example adds various types of negative criteria to a customer. These
# criteria will be applied to all campaigns for the customer.

require 'adwords_api'

def add_customer_negative_criteria()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  customer_negative_criterion_srv = adwords.service(
      :CustomerNegativeCriterionService, API_VERSION)

  criteria = []

  # Exclude tragedy & conflict content.
  criteria << {
    :xsi_type => 'ContentLabel',
    :content_label_type => 'TRAGEDY'
  }

  # Exclude a specific placement.
  criteria << {
    :xsi_type => 'Placement',
    :url => 'http://www.example.com'
  }

  # Additional criteria types are available for this service. See the types
  # listed under Criterion here:
  # https://developers.google.com/adwords/api/docs/reference/latest/CustomerNegativeCriterionService.Criterion

  # Create operations to add each of the criteria above.
  operations = criteria.map do |criterion|
    {
      :operator => 'ADD',
      :operand => {
        :criterion => criterion
      }
    }
  end

  # Send the request to add the criteria.
  result = customer_negative_criterion_srv.mutate(operations)

  # Display the results.
  result[:value].each do |negative_criterion|
    puts ("Customer negative criterion with criterion ID %d and type '%s' " +
        "was added.") % [negative_criterion[:criterion][:id],
        negative_criterion[:criterion][:criterion_type]]
  end

end

if __FILE__ == $0
  API_VERSION = :v201809

  begin
    add_customer_negative_criteria()

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
