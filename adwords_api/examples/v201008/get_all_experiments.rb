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
require 'adwords_api'

API_VERSION = :v201008

def get_all_experiments()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  experiment_srv = adwords.service(:ExperimentService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Get all the experiments for this campaign.
  selector = {
    :campaign_ids => [campaign_id],
    :include_stats => true
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
  begin
    get_all_experiments()

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
