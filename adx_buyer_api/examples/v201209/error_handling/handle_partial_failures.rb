#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# This example demonstrates how to handle partial failures.
#
# Tags: AdGroupCriterionService.mutate

require 'adwords_api'
require 'adwords_api/utils'

def handle_partial_failures(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Set partial failures flag.
  adwords.partial_failure = true

  # Create placements
  urls = ['http://mars.google.com', 'http:/mars.google.com', 'mars.google.com']
  placements = urls.map do |url|
    {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'Placement',
      :url => url
    }
  end

  # Create biddable ad group criteria and operations.
  operations = placements.map do |placement|
    {
      :operator => 'ADD',
      :operand => {
        :xsi_type => 'BiddableAdGroupCriterion',
        :ad_group_id => ad_group_id,
        :criterion => placement
      }
    }
  end

  # Add placements.
  response = ad_group_criterion_srv.mutate(operations)
  ad_group_criteria = response[:value]
  ad_group_criteria.each do |ad_group_criterion|
    if ad_group_criterion[:criterion]
      puts ("Placement for ad group ID %d }, placement ID %d " +
            "and URL '%s' was added.") %
          [ad_group_criterion[:ad_group_id],
           ad_group_criterion[:criterion][:id],
           ad_group_criterion[:criterion][:url]]
    end
  end

  # Check partial failures.
  if response and response[:partial_failure_errors]
    response[:partial_failure_errors].each do |error|
      operation_index = AdwordsApi::Utils.operation_index_for_error(error)
      if operation_index
        ad_group_criterion = operations[operation_index][:operand]
        puts "Placement for ad group ID %d and URL '%s' triggered an error: " %
            [ad_group_criterion[:ad_group_id],
             ad_group_criterion[:criterion][:text]]
        puts "\t%s" % error[:error_string]
      end
    end
  end
end

if __FILE__ == $0
  API_VERSION = :v201209

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    handle_partial_failures(ad_group_id)

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
