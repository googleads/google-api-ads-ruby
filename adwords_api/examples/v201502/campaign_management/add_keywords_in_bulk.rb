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
# This code sample illustrates how to add many keywords using asynchronous
# requests and MutateJobService.
#
# Tags: MutateJobService.mutate, MutateJobService.get
# Tags: MutateJobService.getResult

require 'adwords_api'

def add_keywords_in_bulk()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  mutate_job_srv = adwords.service(:MutateJobService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Create AdGroupCriterionOperations to add keywords.
  operations = (1..KEYWORD_NUMBER).map do |index|
    {:xsi_type => 'AdGroupCriterionOperation',
     :operator => 'ADD',
     :operand => {
       :xsi_type => 'BiddableAdGroupCriterion',
       :ad_group_id => ad_group_id,
       :criterion => {
         :xsi_type => 'Keyword',
         :match_type => 'BROAD',
         :text => "mars%d" % index}}}
  end

  # You can specify up to 3 job IDs that must successfully complete before
  # this job can be processed.
  policy = {:prerequisite_job_ids => []}

  # Call mutate to create a new job.
  response = mutate_job_srv.mutate(operations, policy)

  raise StandardError, 'Failed to submit a job; aborting.' unless response

  job_id = response[:id]
  puts "Job ID %d was successfully created." % job_id

  # Creating selector to retrive hob status and wait for it to complete.
  selector = {
      :xsi_type => 'BulkMutateJobSelector',
      :job_ids => [job_id]
  }

  status = nil

  # Poll for job status until it's finished.
  puts 'Retrieving job status...'
  RETRIES_COUNT.times do |retry_attempt|
    job_status_response = mutate_job_srv.get(selector)
    if job_status_response
      status = job_status_response.first[:status]
      case status
        when 'FAILED'
          raise StandardError, "Job failed with reason: '%s'" %
              job_status_response.first[:failure_reason]
        when 'COMPLETED'
          puts "[%d] Job finished with status '%s'" % [retry_attempt, status]
          break
        else
          puts "[%d] Current status is '%s', waiting %d seconds to retry..." %
              [retry_attempt, status, RETRY_INTERVAL]
          sleep(RETRY_INTERVAL)
      end
    else
      raise StandardError, 'Error retrieving job status; aborting.'
    end
  end

  if status == 'COMPLETED'
    # Get the job result. Here we re-use the same selector.
    result_response = mutate_job_srv.get_result(selector)

    if result_response and result_response[:simple_mutate_result]
      results = result_response[:simple_mutate_result][:results]
      if results
        results.each_with_index do |result, index|
          result_message = result.include?(:place_holder) ?
              'FAILED' : 'SUCCEEDED'
          puts "Operation [%d] - %s" % [index, result_message]
        end
      end
      errors = result_response[:simple_mutate_result][:errors]
      if errors
        errors.each do |error|
          puts "Error, reason: '%s', trigger: '%s', field path: '%s'" %
            [error[:reason], error[:trigger], error[:field_path]]
        end
      end
    else
      raise StandardError, 'Error retrieving job results; aborting.'
    end
  else
    puts "Job failed to complete after %d retries." % RETRY_COUNT
  end
end

if __FILE__ == $0
  API_VERSION = :v201502
  RETRY_INTERVAL = 30
  RETRIES_COUNT = 30
  KEYWORD_NUMBER = 100

  begin
    add_keywords_in_bulk()

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
