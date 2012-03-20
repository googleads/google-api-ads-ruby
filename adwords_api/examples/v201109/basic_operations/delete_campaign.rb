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
# This example deletes a campaign by setting the status to 'DELETED'. To get
# campaigns, run get_campaigns.rb.
#
# Tags: CampaignService.mutate

require 'adwords_api'

def delete_campaign(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_srv = adwords.service(:CampaignService, API_VERSION)

  # Retrieve the campaign to obtain its name. This is optional but recommended
  # to keep deleted objects searchable. In production the name is already known
  # in most cases.
  selector = {
    :fields => ['Id', 'Name'],
    :predicates => [
      {:field => 'Id', :operator => 'EQUALS', :values => [campaign_id]}
    ]
  }
  result = campaign_srv.get(selector)

  if result.nil? or result[:entries].empty?
    raise StandardError, "Campaign with ID %d was not found." % campaign_id
  end

  # We recommend renaming object on delete to avoid name conflicts later.
  campaign_name = result[:entries].first[:name]
  campaign_name += Time.now.strftime(" (deleted on %Y-%m-%d %H:%M:%S)")

  # Prepare for deleting campaign.
  operation = {
    :operator => 'SET',
    :operand => {
      :id => campaign_id,
      :name => campaign_name,
      :status => 'DELETED',
    }
  }

  # Delete campaign.
  response = campaign_srv.mutate([operation])

  if response and response[:value]
    campaign = response[:value].first
    puts "Campaign ID %d was renamed to '%s' and deleted." %
        [campaign[:id], campaign[:name]]
  else
    puts 'No campaign was updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    # ID of a campaign to delete.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    delete_campaign(campaign_id)

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
