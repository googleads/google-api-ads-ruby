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
# This example creates new labels. To determine which labels exist, run
# get_all_labels.rb.
#
# This feature is only available to DFP premium solution networks.
#
# Tags: LabelService.createLabels

require 'dfp_api'

API_VERSION = :v201505
# Number of labels to create.
ITEM_COUNT = 5

def create_labels()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LabelService.
  label_service = dfp.service(:LabelService, API_VERSION)

  # Create an array to store local label objects.
  labels = (1..ITEM_COUNT).map do |index|
    {:name => "Label #%d" % index, :types => ['COMPETITIVE_EXCLUSION']}
  end

  # Create the labels on the server.
  return_labels = label_service.create_labels(labels)

  if return_labels
    return_labels.each do |label|
      puts "Label with ID: %d, name: '%s' and types: '%s' was created." %
          [label[:id], label[:name], label[:types].join(', ')]
    end
  else
    raise 'No labels were created.'
  end

end

if __FILE__ == $0
  begin
    create_labels()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
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
