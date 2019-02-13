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
# This example creates new labels. To determine which labels exist, run
# get_all_labels.rb.
#
# This feature is only available to Ad Manager premium solution networks.

require 'securerandom'
require 'ad_manager_api'

def create_labels(ad_manager, number_of_labels_to_create)
  # Get the LabelService.
  label_service = ad_manager.service(:LabelService, API_VERSION)

  # Create an array to store local label objects.
  labels = (1..number_of_labels_to_create).map do |index|
    {
      :name => "Label #%d - %s" % [index, SecureRandom.uuid()],
      :types => ['COMPETITIVE_EXCLUSION']
    }
  end

  # Create the labels on the server.
  created_labels = label_service.create_labels(labels)

  if created_labels.to_a.size > 0
    created_labels.each do |label|
      puts 'Label with ID %d, name "%s" and types "%s" was created.' %
          [label[:id], label[:name], label[:types].join(', ')]
    end
  else
    puts 'No labels were created.'
  end

end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    number_of_labels_to_create = 5
    create_labels(ad_manager, number_of_labels_to_create)

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdManagerApi::Errors::ApiException => e
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
