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
# This example deletes an ad group by setting the status to 'DELETED'. To get ad
# groups, run get_ad_groups.rb.
#
# Tags: AdGroupService.mutate

require 'adwords_api'

def delete_ad_group(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)

  # Retrieve the ad group to obtain its name. This is optional but recommended
  # to keep deleted objects searchable. In production the name is already known
  # in most cases.
  selector = {
    :fields => ['Id', 'Name'],
    :predicates => [
      {:field => 'Id', :operator => 'EQUALS', :values => [ad_group_id]}
    ]
  }
  result = ad_group_srv.get(selector)

  if result.nil? or result[:entries].empty?
    raise StandardError, "Ad group with ID %d was not found." % ad_group_id
  end

  # We recommend renaming object on delete to avoid name conflicts later.
  ad_group_name = result[:entries].first[:name]
  ad_group_name += Time.now.strftime(" (deleted on %Y-%m-%d %H:%M:%S)")

  # Prepare for deleting ad group.
  operation = {
    :operator => 'SET',
    :operand => {
      :id => ad_group_id,
      :name => ad_group_name,
      :status => 'DELETED'
    }
  }

  # Delete ad group.
  response = ad_group_srv.mutate([operation])
  if response and response[:value]
    ad_group = response[:value].first
    puts "Ad group ID %d was successfully deleted and renamed to '%s'." %
       [ad_group[:id], ad_group[:name]]
  else
    puts 'No ad group was updated.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201109

  begin
    # ID of an ad group to delete.
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    delete_ad_group(ad_group_id)

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
