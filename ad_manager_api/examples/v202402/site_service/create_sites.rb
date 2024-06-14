#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2020 Google LLC
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
# This example creates a Site for Multiple Customer Management.

require 'ad_manager_api'

def create_sites(ad_manager, url, child_network_code)
  # Get the SiteService.
  site_service = ad_manager.service(:SiteService, API_VERSION)

  # Create the site object.
  site = {:url => url, :child_network_code => child_network_code}

  # Create the site on the server.
  created_sites = site_service.create_sites([site])

  # Display results.
  if created_sites.to_a.size > 0
    created_sites.each do |site|
      puts 'Site with id %d and URL "%s" was created for child network %s.' % [
          site[:id], site[:url], site[:child_network_code]]
    end
  else
    puts 'No sites were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v202402

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    url = 'INSERT_URL_HERE'
    child_network_code = 'INSERT_CHILD_NETWORK_CODE_HERE'
    create_sites(ad_manager, url, child_network_code)

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
