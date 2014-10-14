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
# This example illustrates how to create a location ad extension for an existing
# campaign. To create a campaign, run add_campaign.rb.
#
# Tags: GeoLocationService.get, CampaignAdExtensionService.mutate

require 'adwords_api'

def add_location_extension(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_ad_ext_srv =
      adwords.service(:CampaignAdExtensionService, API_VERSION)
  geo_location_srv = adwords.service(:GeoLocationService, API_VERSION)

  selector = {
    :addresses => [
      {
        :street_address => '1600 Amphitheatre Parkway',
        :city_name => 'Mountain View',
        :province_code => 'CA',
        :postal_code => '94043',
        :country_code => 'US'
      },
      {
        :street_address => "38 Avenue de l'Opéra",
        :city_name => 'Paris',
        :postal_code => '75002',
        :country_code => 'FR'
      }
    ]
  }

  # Get the geo location info for the various addresses and build a list of
  # operations with that information.
  locations = geo_location_srv.get(selector)
  raise StandardError, 'Unable to retrieve geo locations.' if locations.nil?

  operations = locations.map do |location|
    {:operator => 'ADD',
     :operand => {
       :campaign_id => campaign_id,
       :status => 'ENABLED',
       :ad_extension => {
         # The 'xsi_type' field allows you to specify the xsi:type of the
         # object being created. It's only necessary when you must provide an
         # explicit type that the client library can't infer.
         :xsi_type => 'LocationExtension',
         :address => location[:address],
         :geo_point => location[:geo_point],
         :encoded_location => location[:encoded_location],
         :source => 'ADWORDS_FRONTEND',
         # Optional fields:
         #:company_name => 'ACME Inc.',
         #:phone_number => '+1-650-253-0000'
       }
     }
    }
  end

  # Add location ad extensions.
  response = campaign_ad_ext_srv.mutate(operations)
  response[:value].each do |extension|
    puts "Location extension ID %d and status '%s' successfully added." %
        [extension[:ad_extension][:id], extension[:status]]
  end
end

if __FILE__ == $0
  API_VERSION = :v201409

  begin
    # ID of campaign to add location extension to.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    add_location_extension(campaign_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'http://code.google.com/p/google-api-ads-ruby/wiki/OAuth2'

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
