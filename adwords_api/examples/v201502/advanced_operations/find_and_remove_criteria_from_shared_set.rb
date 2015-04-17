#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This example demonstrates how to find shared sets, shared set criterions and
# how to remove them.
#
# Tags: CampaignSharedSetService.get
# Tags: SharedCriterionService.get, SharedCriterionService.mutate

require 'adwords_api'

def find_and_remove_criteria_from_shared_set(campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_shared_set_srv =
      adwords.service(:CampaignSharedSetService, API_VERSION)
  shared_criterion_srv = adwords.service(:SharedCriterionService, API_VERSION)

  shared_set_ids = []
  criterion_ids = []

  # First, retrieve all shared sets associated with the campaign.

  # Create selector for shared sets to:
  # - filter by campaign ID,
  # - filter by shared set type.
  selector = {
    :fields => ['SharedSetId', 'CampaignId', 'SharedSetName', 'SharedSetType',
        'Status'],
    :predicates => [
      {:field => 'CampaignId', :operator => 'EQUALS', :values => [campaign_id]},
      {:field => 'SharedSetType', :operator => 'IN', :values =>
          ['NEGATIVE_KEYWORDS', 'NEGATIVE_PLACEMENTS']}
    ],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  begin
    page = campaign_shared_set_srv.get(selector)
    if page[:entries]
      page[:entries].each do |shared_set|
        puts "Campaign shared set ID %d and name '%s'" %
            [shared_set[:shared_set_id], shared_set[:shared_set_name]]
        shared_set_ids << shared_set[:shared_set_id]
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  # Next, Retrieve criterion IDs for all found shared sets.
  selector = {
    :fields => ['SharedSetId', 'Id', 'KeywordText', 'KeywordMatchType',
        'PlacementUrl'],
    :predicates => [
      {:field => 'SharedSetId', :operator => 'IN', :values => shared_set_ids}
    ],
    :paging => {
      :start_index => 0,
      :number_results => PAGE_SIZE
    }
  }

  # Set initial values.
  offset, page = 0, {}

  begin
    page = shared_criterion_srv.get(selector)
    if page[:entries]
      page[:entries].each do |shared_criterion|
        if shared_criterion[:criterion][:type] == 'KEYWORD'
          puts "Shared negative keyword with ID %d and text '%s' was found." %
            [shared_criterion[:criterion][:id],
             shared_criterion[:criterion][:text]]
        elsif shared_criterion[:criterion][:type] == 'PLACEMENT'
          puts "Shared negative placement with ID %d and url '%s' was found." %
            [shared_criterion[:criterion][:id],
             shared_criterion[:criterion][:url]]
        else
          puts 'Shared criterion with ID %d was found.' %
            [shared_criterion[:criterion][:id]]
        end
        criterion_ids << {
           :shared_set_id => shared_criterion[:shared_set_id],
           :criterion_id => shared_criterion[:criterion][:id]
        }
      end
      # Increment values to request the next page.
      offset += PAGE_SIZE
      selector[:paging][:start_index] = offset
    end
  end while page[:total_num_entries] > offset

  # Finally, remove the criteria.
  operations = criterion_ids.map do |criterion|
    {
      :operator => 'REMOVE',
      :operand => {
        :criterion => {:id => criterion[:criterion_id]},
        :shared_set_id => criterion[:shared_set_id]
      }
    }
  end

  response = shared_criterion_srv.mutate(operations)
  if response and response[:value]
    response[:value].each do |criterion|
      puts "Criterion ID %d was successfully removed from shared set ID %d." %
          [criterion[:criterion][:id], criterion[:shared_set_id]]
    end
  else
    puts 'No shared criteria were removed.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201502
  PAGE_SIZE = 500

  begin
    # ID of a campaign to remove shared criteria from.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

    find_and_remove_criteria_from_shared_set(campaign_id)

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
