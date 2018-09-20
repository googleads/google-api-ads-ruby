#!/usr/bin/env ruby
# Encoding: utf-8
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
# This code sample illustrates how to use BatchJobService to create a complete
# campaign, including ad groups and keywords.

require 'adwords_api'

def add_complete_campaigns_using_batch_job()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  batch_job_srv = adwords.service(:BatchJobService, API_VERSION)
  batch_job_utils = adwords.batch_job_utils(API_VERSION)

  # Create a BatchJob.
  add_op = {
    :operator => 'ADD',
    :operand => {}
  }

  response = batch_job_srv.mutate([add_op])
  batch_job = response[:value].first

  # Get the upload URL from the new job.
  upload_url = batch_job[:upload_url][:url]
  puts "Created BatchJob with ID %d, status '%s', and upload URL %s." %
      [batch_job[:id], batch_job[:status], upload_url]

  # Create a temporary ID generator that will produce a sequence of descending
  # negative numbers.
  temp_id_generator = TempIdGenerator.new()

  # Create an array of hashed operations generated from the batch_job_utils.
  operations = []

  # Create an operation to create a new budget.
  budget_operation = build_budget_operation(temp_id_generator)
  operations << budget_operation

  # Create operations to create new campaigns.
  campaign_operations = build_campaign_operations(
      temp_id_generator, budget_operation)
  operations += campaign_operations

  # Create operations to create new negative keyword criteria for each
  # campaign.
  operations += build_campaign_criterion_operations(campaign_operations)

  # Create operations to create new ad groups.
  ad_group_operations = build_ad_group_operations(
      temp_id_generator, campaign_operations)
  operations += ad_group_operations

  # Create operations to create new ad group criteria (keywords).
  operations += build_ad_group_criterion_operations(ad_group_operations)

  # Create operations to create new ad group ads (text ads).
  operations += build_ad_group_ad_operations(ad_group_operations)

  # Use the batch_job_utils to upload all operations.
  batch_job_utils.upload_operations(operations, upload_url)
  puts "Uploaded %d operations for batch job with ID %d." %
      [operations.size, batch_job[:id]]

  # Poll for completion of the batch job using an exponential back off.
  poll_attempts = 0
  is_pending = true
  selector = {
    :fields => ['Id', 'Status', 'DownloadUrl', 'ProcessingErrors',
        'ProgressStats'],
    :predicates => [{
      :field => 'Id',
      :operator => 'IN',
      :values => [batch_job[:id]]
    }]
  }

  begin
    sleep_seconds = 30 * (2 ** poll_attempts)
    puts "Sleeping for %d seconds" % sleep_seconds
    sleep(sleep_seconds)

    batch_job = batch_job_srv.get(selector)[:entries].first

    puts "Batch job ID %d has status '%s'." %
        [batch_job[:id], batch_job[:status]]

    poll_attempts += 1
    is_pending = PENDING_STATUSES.include?(batch_job[:status])
  end while is_pending and poll_attempts < MAX_POLL_ATTEMPTS

  if is_pending
    raise StandardError,
        "Job is still in pending state after polling %d times." %
        MAX_POLL_ATTEMPTS
  end

  unless batch_job[:processing_errors].nil?
    batch_job[:processing_errors].each_with_index do |processing_error, i|
      puts ("Processing error [%d]: errorType=%s, trigger=%s, errorString=%s" +
          "fieldPath=%s, reason=%s") % [i, processing_error[:api_error_type],
          processing_error[:trigger], processing_error[:error_string],
          processing_error[:field_path], processing_error[:reason]]
    end
  end

  unless batch_job[:download_url].nil? or batch_job[:download_url][:url].nil?
    mutate_response = batch_job_utils.get_job_results(
        batch_job[:download_url][:url])
    puts "Downloaded results from '%s':" % batch_job[:download_url][:url]
    mutate_response.each do |mutate_result|
      outcome = "FAILURE"
      outcome = "SUCCESS" if mutate_result[:error_list].nil?
      puts "  Operation [%d] - %s" % [mutate_result[:index], outcome]
    end
  end
end

# Custom class to generate temporary negative IDs for created entities to
# reference each other.
class TempIdGenerator
  def initialize()
    @counter = -1
  end

  def next()
    ret = @counter
    @counter -= 1
    return ret
  end
end

def get_time_microseconds()
  return (Time.now.to_f * 1000000).to_i
end

def build_budget_operation(temp_id_generator)
  budget = {
    :budget_id => temp_id_generator.next,
    :name => "Interplanetary Cruise %d" % get_time_microseconds(),
    :amount => {
      :micro_amount => 50000000
    },
    :delivery_method => 'STANDARD'
  }
  budget_operation = {
    # The xsi_type of the operation can usually be guessed by the API because
    # a given service only handles one type of operation. However, batch jobs
    # process operations of different types, so the xsi_type must always be
    # explicitly defined for these operations.
    :xsi_type => 'BudgetOperation',
    :operator => 'ADD',
    :operand => budget
  }
  return budget_operation
end

def build_campaign_operations(temp_id_generator, budget_operation)
  budget_id = budget_operation[:operand][:budget_id]

  operations = []
  NUMBER_OF_CAMPAIGNS_TO_ADD.times do
    campaign = {
      :name => "Batch Campaign %s" % get_time_microseconds(),
      # Recommendation: Set the campaign to PAUSED when creating it to stop the
      # ads from immediately serving. Set to ENABLED once you've added
      # targeting and the ads are ready to serve.
      :status => 'PAUSED',
      :id => temp_id_generator.next,
      :advertising_channel_type => 'SEARCH',
      :budget => {
        :budget_id => budget_id
      },
      :bidding_strategy_configuration => {
        :bidding_strategy_type => 'MANUAL_CPC',
        # You can optionally provide a bidding scheme in place of the type.
        :bidding_scheme => {
          :xsi_type => 'ManualCpcBiddingScheme'
        }
      }
    }
    operation = {
      :xsi_type => 'CampaignOperation',
      :operator => 'ADD',
      :operand => campaign
    }
    operations << operation
  end

  return operations
end

def build_campaign_criterion_operations(campaign_operations)
  operations = []
  campaign_operations.each do |campaign_operation|
    keyword = {
      :xsi_type => 'Keyword',
      :match_type => 'BROAD',
      :text => 'venus'
    }
    negative_criterion = {
      :xsi_type => 'NegativeCampaignCriterion',
      :campaign_id => campaign_operation[:operand][:id],
      :criterion => keyword
    }
    operation = {
      :xsi_type => 'CampaignCriterionOperation',
      :operator => 'ADD',
      :operand => negative_criterion
    }
    operations << operation
  end

  return operations
end

def build_ad_group_operations(temp_id_generator, campaign_operations)
  operations = []
  campaign_operations.each do |campaign_operation|
    NUMBER_OF_ADGROUPS_TO_ADD.times do
      ad_group = {
        :campaign_id => campaign_operation[:operand][:id],
        :id => temp_id_generator.next,
        :name => "Batch Ad Group %s" % get_time_microseconds(),
        :bidding_strategy_configuration => {
          :bids => [
            {
              :xsi_type => 'CpcBid',
              :bid => {:micro_amount => 10000000}
            }
          ]
        }
      }
      operation = {
        :xsi_type => 'AdGroupOperation',
        :operator => 'ADD',
        :operand => ad_group
      }
      operations << operation
    end
  end

  return operations
end

def build_ad_group_criterion_operations(ad_group_operations)
  operations = []
  ad_group_operations.each do |ad_group_operation|
    NUMBER_OF_KEYWORDS_TO_ADD.times do |i|
      text = "mars%d" % i

      # Make 50% of keywords invalid to demonstrate error handling.
      text = text + "!!!" if i % 2 == 0
      keyword = {
        :xsi_type => 'Keyword',
        :text => text,
        :match_type => 'BROAD'
      }
      biddable_criterion = {
        :xsi_type => 'BiddableAdGroupCriterion',
        :ad_group_id => ad_group_operation[:operand][:id],
        :criterion => keyword
      }
      operation = {
        :xsi_type => 'AdGroupCriterionOperation',
        :operator => 'ADD',
        :operand => biddable_criterion
      }
      operations << operation
    end
  end

  return operations
end

def build_ad_group_ad_operations(ad_group_operations)
  operations = []
  ad_group_operations.each do |ad_group_operation|
    text_ad = {
      :xsi_type => 'ExpandedTextAd',
      :headline_part1 => 'Luxury Cruise to Mars',
      :headling_part2 => 'Visit the Red Planet in style.',
      :description => 'Low-gravity fun for everyone!',
      :final_urls => ['http://www.example.com/1']
    }
    ad_group_ad = {
      :ad_group_id => ad_group_operation[:operand][:id],
      :ad => text_ad
    }
    operation = {
      :xsi_type => 'AdGroupAdOperation',
      :operator => 'ADD',
      :operand => ad_group_ad
    }
    operations << operation
  end

  return operations
end

if __FILE__ == $0
  API_VERSION = :v201809
  NUMBER_OF_CAMPAIGNS_TO_ADD = 2
  NUMBER_OF_ADGROUPS_TO_ADD = 2
  NUMBER_OF_KEYWORDS_TO_ADD = 5
  MAX_POLL_ATTEMPTS = 5
  PENDING_STATUSES = ['ACTIVE', 'AWAITING_FILE', 'CANCELING']

  begin
    add_complete_campaigns_using_batch_job()

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
