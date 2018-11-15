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
# This example creates new CDN configurations. To determine which CDN
# configurations exist, run get_all_cdn_configurations.rb.

require 'ad_manager_api'

def create_cdn_configurations(ad_manager)
  # Get the CdnConfigurationService.
  cdn_configuration_service = ad_manager.service(
      :CdnConfigurationService, API_VERSION
  )

  # Make CDN Configuration objects.
  # Only LIVE_STREAM_SOURCE_CONTENT is currently supported by the API.
  # Basic example with no security policies.
  cdn_config_without_security_policy = {
    :name => 'ApiConfig1',
    :cdn_configuration_type => 'LIVE_STREAM_SOURCE_CONTENT',
    :source_content_configuration => {
      :ingest_settings => {
        :url_prefix => 'ingest1.com',
        :security_policy => {
          :security_policy_type => 'NONE'
        }
      },
      :default_delivery_settings => {
        :url_prefix => 'delivery1.com',
        :security_policy => {
          :security_policy_type => 'NONE'
        }
      }
    }
  }
  # Complex example with security policies.
  cdn_config_with_security_policy = {
    :name => 'ApiConfig2',
    :cdn_configuration_type => 'LIVE_STREAM_SOURCE_CONTENT',
    :source_content_configuration => {
      :ingest_settings => {
        :url_prefix => 'ingest1.com',
        :security_policy => {
          :security_policy_type => 'AKAMAI',
          :disable_server_side_url_signing => false,
          :token_authentication_key => 'abc123'
        }
      },
      :default_delivery_settings => {
        :url_prefix => 'delivery1.com',
        :security_policy => {
          :security_policy_type => 'AKAMAI',
          :disable_server_side_url_signing => true,
          :origin_forwarding_type => 'CONVENTIONAL',
          :origin_path_prefix => '/path/to/my/origin'
        }
      }
    }
  }

  # Create the CDN configurations on the server.
  cdn_configurations = cdn_configuration_service.create_cdn_configurations([
      cdn_config_without_security_policy, cdn_config_with_security_policy
  ])

  if cdn_configurations.to_a.size > 0
    cdn_configurations.each do |cdn_configuration|
      puts 'A CDN configuration with ID %d and name "%s" was created.' %
          [cdn_configuration[:id], cdn_configuration[:name]]
    end
  else
    puts 'No CDN configurations were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    create_cdn_configurations(ad_manager)

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
