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
# This example gets all Networks to which the current login has access.
#
# Tags: NetworkService.getAllNetworks

require 'dfp_api'

API_VERSION = :v201505

def get_all_networks()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the NetworkService.
  network_service = dfp.service(:NetworkService, API_VERSION)

  # Execute request and get the response.
  networks = network_service.get_all_networks()

  if networks
    # Print details about each network in results page.
    networks.each_with_index do |network, index|
      puts "%d) Network ID: %d, name: %s, code: %s." %
          [index, network[:id], network[:display_name],
           network[:network_code]]
    end
    # Print a footer
    puts "Total number of networks: %d" % networks.size
  end
end

if __FILE__ == $0
  begin
    get_all_networks()

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
