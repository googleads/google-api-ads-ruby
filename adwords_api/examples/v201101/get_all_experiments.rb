#!/usr/bin/ruby
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
# This example gets all experiments in a campaign. To add an experiment, run
# add_experiment.rb. To get campaigns, run get_all_campaigns.rb.
#
# Tags: ExperimentService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101

def get_all_experiments()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  experiment_srv = adwords.service(:ExperimentService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Get all the experiments for this campaign.
  selector = {
    :fields => ['Id', 'Name', 'ControlId', 'AdGroupsCount'],
    :ordering => [{:field => 'Name', :sort_order => 'ASCENDING'}],
    :predicates => [{
      :field => 'CampaignId',
      :operator => 'IN',
      :values => [campaign_id]
    }]
  }
  response = experiment_srv.get(selector)

  if response and response[:entries]
    experiments = response[:entries]
    experiments.each do |experiment|
      experiment_stats = experiment[:experiment_summary_stats]
      puts "Experiment with name \"#{experiment[:name]}\", " +
          "id #{experiment[:id]} and control id " +
          "#{experiment[:control_id]} was found and it includes " +
          "#{experiment_stats[:ad_groups_count]} ad group(s) and " +
          "#{experiment_stats[:ad_group_criteria_count]} criteria.\n"
    end
  else
    puts "No experiments were found."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    get_all_experiments()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'API Exception caught.'
    puts 'Message: %s' % e.message
    puts 'Code: %d' % e.code if e.code
    puts 'Trigger: %s' % e.trigger if e.trigger
    puts 'Errors:'
    if e.errors
      e.errors.each_with_index do |error, index|
        puts ' %d. Error type is %s. Fields:' % [index + 1, error[:xsi_type]]
        error.each_pair do |field, value|
          if field != :xsi_type
            puts '     %s: %s' % [field, value]
          end
        end
      end
    end
  end
end
