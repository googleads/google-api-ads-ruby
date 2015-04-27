#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example creates an experiment using a query percentage of 10, which
# defines what fraction of auctions should go to the control split (90%) vs.
# the experiment split (10%), then adds experimental bid changes for criteria
# and ad groups. To get campaigns, run get_campaigns.rb. To get ad groups,
# run get_ad_groups.rb. To get keywords, run get_keywords.rb.
#
# Tags: ExperimentService.mutate

require 'adwords_api'
require 'date'

def add_experiment(campaign_id, ad_group_id, criterion_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  experiment_srv = adwords.service(:ExperimentService, API_VERSION)
  ad_group_srv = adwords.service(:AdGroupService, API_VERSION)
  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  # Prepare for adding experiment.
  operation = {
    :operator => 'ADD',
    :operand => {
      :campaign_id => campaign_id,
      :name => "Interplanetary Experiment #%d" % (Time.new.to_f * 1000).to_i,
      :query_percentage => 10,
      :start_date_time => Time.now.strftime('%Y%m%d %H%M%S'),
      # Optional fields:
      :status => 'ENABLED',
      :end_date_time =>
         DateTime.parse((Date.today + 30).to_s).strftime('%Y%m%d %H%M%S')
    }
  }

  # Add experiment.
  response = experiment_srv.mutate([operation])
  experiment = response[:value].first
  puts "Experiment with name '%s' and ID %d was added." %
      [experiment[:name], experiment[:id]]

  experiment_id = experiment[:id]

  # Setup ad group for the experiment.
  ad_group = {
    :id => ad_group_id,
    # Set experiment data for the ad group.
    :experiment_data => {
      :experiment_id => experiment_id,
      :experiment_delta_status => 'MODIFIED',
      # Bid multiplier rule that will modify ad group bid for the experiment.
      :experiment_bid_multipliers => {
        :xsi_type => 'ManualCPCAdGroupExperimentBidMultipliers',
        :max_cpc_multiplier => {
          :multiplier => 1.5
        }
      }
    }
  }

  # Prepare for updating ad group.
  operation = {
    :operator => 'SET',
    :operand => ad_group
  }

  # Update ad group.
  response = ad_group_srv.mutate([operation])
  ad_group = response[:value].first
  puts "Ad group ID %d was updated for the experiment." % ad_group[:id]

  # Setup ad group criterion for the experiment.
  ad_group_criterion = {
    :xsi_type => 'BiddableAdGroupCriterion',
    :ad_group_id => ad_group_id,
    :criterion => {
      :id => criterion_id
    },
    # Set experiment data for the criterion.
    :experiment_data => {
      :xsi_type => 'BiddableAdGroupCriterionExperimentData',
      :experiment_id => experiment_id,
      :experiment_delta_status => 'MODIFIED',
      # Bid multiplier rule that will modify criterion bid for the experiment.
      :experiment_bid_multiplier => {
        :xsi_type => 'ManualCPCAdGroupCriterionExperimentBidMultiplier',
        :max_cpc_multiplier => {
          :multiplier => 1.5
        }
      }
    }
  }

  # Prepare for updating ad group criterion.
  operation = {
    :operator => 'SET',
    :operand => ad_group_criterion
  }

  # Update criterion.
  response = ad_group_criterion_srv.mutate([operation])
  criterion = response[:value].first
  puts "Criterion ID %d was successfully updated for the experiment." %
      [criterion[:criterion][:id]]

end

if __FILE__ == $0
  API_VERSION = :v201409

  begin
    # IDs of the required objects.
    campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
    criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i
    add_experiment(campaign_id, ad_group_id, criterion_id)

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
