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
# This example illustrates how to perform multiple requests using the
# BatchJobService using incremental uploads.

require 'adwords_api'

def add_keywords_using_incremental_batch_job(ad_group_id)
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

  # Upload #1
  incremental_helper = batch_job_utils.start_incremental_upload(upload_url)
  operations = create_keyword_operations(ad_group_id)
  incremental_helper.upload(operations)

  # Upload #2
  operations = create_keyword_operations(ad_group_id)
  incremental_helper.upload(operations)

  # Upload #3
  operations = create_keyword_operations(ad_group_id)
  incremental_helper.upload(operations, true)

  # Poll for completion of the batch job using an exponential back off.
  poll_attempts = 0
  is_pending = true
  cancel_requested = false
  selector = {
    :fields =>
        ['Id', 'Status', 'DownloadUrl', 'ProcessingErrors', 'ProgressStats'],
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

    if is_pending && !cancel_requested && poll_attempts == MAX_POLL_ATTEMPTS
      batch_job[:status] = 'CANCELING'

      set_op = {
        :operator => 'SET',
        :operand => batch_job
      }

      # Only request cancellation once per job.
      cancel_requested = true

      begin
        batch_job = batch_job_srv.mutate([set_op])[:value].first
        puts "Requested cancellation of batch job with ID %d" % batch_job[:id]
      rescue AdwordsApi::Errors::ApiException => e
        if !e.message.nil? && e.message.include?('INVALID_STATE_CHANGE')
          puts ("Attempt to cancel batch job with ID %d was rejected " +
              "because the job already completed or was canceled.") %
              batch_job[:id]
          next
        end
        raise e
      end
    end
  end while is_pending and poll_attempts < MAX_POLL_ATTEMPTS

  if is_pending
    raise StandardError,
        "Job is still in pending state after polling %d times." %
        MAX_POLL_ATTEMPTS
  end

  if batch_job[:status] == 'CANCELED'
    puts "Job was canceled before completion."
    return
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

def create_keyword_operations(ad_group_id)
  operations = []
  KEYWORD_COUNT.times do |i|
    text = "keyword %d" % i

    # Make 10% of keywords invalid to demonstrate error handling.
    text = text + "!!!" if i % 10 == 0
    keyword = {
      :xsi_type => 'Keyword',
      :text => text,
      :match_type => 'BROAD'
    }
    biddable_criterion = {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => keyword
    }
    operation = {
      :xsi_type => 'AdGroupCriterionOperation',
      :operator => 'ADD',
      :operand => biddable_criterion
    }
    operations << operation
  end

  return operations
end

if __FILE__ == $0
  API_VERSION = :v201809
  KEYWORD_COUNT = 100
  MAX_POLL_ATTEMPTS = 5
  PENDING_STATUSES = ['ACTIVE', 'AWAITING_FILE', 'CANCELING']

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

    add_keywords_using_incremental_batch_job(ad_group_id)

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
