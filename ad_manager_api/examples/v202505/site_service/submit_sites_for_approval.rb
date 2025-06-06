#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2020, Google LLC
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
# This example submits a site for approval.

require 'ad_manager_api'

def submit_sites_for_approval(ad_manager, site_id)
  # Get the SiteService.
  site_service = ad_manager.service(:SiteService, API_VERSION)

  # Create a statement to get the site to activate.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'id = :site_id'
    sb.with_bind_variable('site_id', site_id)
  end

  # Perform action.
  result = site_service.perform_site_action(
      {:xsi_type => 'SubmitSiteForApproval'}, statement.to_statement()
  )

  # Display results.
  if !result.nil? && result[:num_changes] > 0
    puts "Number of sites submitted for approval: %d" % result[:num_changes]
  else
    puts 'No sites submitted for approval.'
  end
end

if __FILE__ == $0
  API_VERSION = :v202505

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    site_id = 'INSERT_SITE_ID_HERE'.to_i
    submit_sites_for_approval(ad_manager, site_id)

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
