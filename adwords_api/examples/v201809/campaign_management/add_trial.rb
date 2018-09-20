#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# This example illustrates how to create a trial and wait for it to complete.
#
# See the Campaign Drafts and Experiments guide for more information:
# https://developers.google.com/adwords/api/docs/guides/campaign-drafts-experiments

require 'adwords_api'
require 'date'

def add_trial(draft_id, base_campaign_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  trial_srv = adwords.service(:TrialService, API_VERSION)
  trial_async_error_srv = adwords.service(:TrialAsyncErrorService, API_VERSION)

  trial = {
    :draft_id => draft_id,
    :base_campaign_id => base_campaign_id,
    :name => 'Test Trial #%d' % (Time.new.to_f * 1000).to_i,
    :traffic_split_percent => 50,
    :traffic_split_type => 'RANDOM_QUERY'
  }
  trial_operation = {:operator => 'ADD', :operand => trial}

  trial_result = trial_srv.mutate([trial_operation])

  trial_id = trial_result[:value].first[:id]

  # Since creating a trial is asynchronous, we have to poll it to wait for
  # it to finish.
  selector = {
    :fields => ['Id', 'Status', 'BaseCampaignId', 'TrialCampaignId'],
    :predicates => [
      :field => 'Id', :operator => 'IN', :values => [trial_id]
    ]
  }

  poll_attempts = 0
  is_pending = true
  trial = nil
  begin
    sleep_seconds = 30 * (2 ** poll_attempts)
    puts "Sleeping for %d seconds" % sleep_seconds
    sleep(sleep_seconds)

    trial = trial_srv.get(selector)[:entries].first

    puts "Trial ID %d has status '%s'" % [trial[:id], trial[:status]]

    poll_attempts += 1
    is_pending = (trial[:status] == 'CREATING')
  end while is_pending and poll_attempts < MAX_POLL_ATTEMPTS

  if trial[:status] == 'ACTIVE'
    # The trial creation was successful.
    puts "Trial created with id %d and trial campaign id %d" %
        [trial[:id], trial[:trial_campaign_id]]
  elsif trial[:status] == 'CREATION_FAILED'
    # The trial creation failed, and errors can be fetched from the
    # TrialAsyncErrorService.
    selector = {
      :fields => ['TrialId', 'AsyncError'],
      :predicates => [
        {:field => 'TrialId', :operator => 'IN', :values => [trial[:id]]}
      ]
    }

    errors = trial_async_error_srv.get(selector)[:entries]

    if errors.nil?
      puts "Could not retrieve errors for trial %d" % trial[:id]
    else
      puts "Could not create trial due to the following errors:"
      errors.each_with_index do |error, i|
        puts "Error #%d: %s" % [i, error[:async_error]]
      end
    end
  else
    # Most likely, the trial is still being created. You can continue polling,
    # but we have limited the number of attempts in the example.
    puts ("Timed out waiting to create trial from draft %d with base " +
        "campaign %d") % [draft_id, base_campaign_id]
  end
end

if __FILE__ == $0
  API_VERSION = :v201809
  MAX_POLL_ATTEMPTS = 6

  begin
    draft_id = 'INSERT_DRAFT_ID_HERE'.to_i
    base_campaign_id = 'INSERT_BASE_CAMPAIGN_ID_HERE'.to_i

    add_trial(draft_id, base_campaign_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

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
