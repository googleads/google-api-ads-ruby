#!/usr/bin/ruby
#
# Author:: sgomes@google.com (Sérgio Gomes)
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
# This code sample illustrates how to perform asynchronous requests using the
# BulkMutateJobService.
#
# Tags: BulkMutateJobService.mutate

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201008

def perform_bulk_mutate_job()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  bulk_mutate_job_srv = adwords.service(:BulkMutateJobService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Create an AdGroupAdOperation to add a text ad.
  text_ad_operation = {
    # The 'xsi_type' field allows you to specify the xsi:type of the object
    # being created. It's only necessary when you must provide an explicit
    # type that the client library can't infer.
    :xsi_type => 'AdGroupAdOperation',
    :operator => 'ADD',
    :operand => {
      :ad_group_id => ad_group_id,
      :ad => {
        :xsi_type => 'TextAd',
        :headline => 'Luxury Cruise to Mars',
        :description1 => 'Visit the Red Planet in style.',
        :description2 => 'Low-gravity fun for everyone!',
        :url => 'http://www.example.com',
        :display_url => 'www.example.com',
      }
    }
  }

  # Create an operation stream for the ad.
  ad_stream = {
    :scoping_entity_id => {
      :type => 'CAMPAIGN_ID',
      :value => campaign_id
    },
    :operations => [text_ad_operation]
  }

  # Create AdGroupCriterionOperations to add keywords.
  kwd_operations = []
  1.upto(100) do |index|
    kwd_operation = {
      :xsi_type => 'AdGroupCriterionOperation',
      :operator => 'ADD',
      :operand => {
        :xsi_type => 'BiddableAdGroupCriterion',
        :ad_group_id => ad_group_id,
        :criterion => {
          :xsi_type => 'Keyword',
          :match_type => 'BROAD',
          :text => 'mars%s' % index
        }
      }
    }
    kwd_operations << kwd_operation
  end

  # Create an operation stream for the keywords.
  kwd_stream = {
    :scoping_entity_id => {
      :type => 'CAMPAIGN_ID',
      :value => campaign_id
    },
    :operations => kwd_operations
  }

  # Create a BulkMutateJobService operation with the first part of the job.
  job_operation_1 = {
    :xsi_type => 'JobOperation',
    # We're using ADD here because we're creating a new job.
    :operator => 'ADD',
    :operand => {
      :xsi_type => 'BulkMutateJob',
      :num_request_parts => 2,
      :request => {
        # The part index is zero-based.
        :part_index => 0,
        :operation_streams => [ad_stream]
      }
    }
  }

  # Call mutate() to create a new job by uploading the first part.
  response_1 = bulk_mutate_job_srv.mutate(job_operation_1)
  job_id = response_1[:id]
  puts 'Job id %d was successfully created.' % job_id

  # Similarly, create the next part of the job.
  job_operation_2 = {
    :xsi_type => 'JobOperation',
    # We're using SET now because we're adding a new part to an existing job.
    # Using ADD again would create a new job altogether.
    :operator => 'SET',
    :operand => {
      :xsi_type => 'BulkMutateJob',
      :num_request_parts => 2,
      # Use the ID from the job we added.
      :id => job_id,
      :request => {
        # Second part, hence index 1.
        :part_index => 1,
        :operation_streams => [kwd_stream]
      }
    }
  }

  # And call mutate() to upload the second part. Since this is the final part,
  # the job is automatically cleared for execution.
  response_2  = bulk_mutate_job_srv.mutate(job_operation_2)
  puts 'Second part of job %d successfully submitted.' % job_id

  # Wait for the job to complete.
  selector = {
    :job_ids => [job_id]
  }
  sleep_interval = 10
  status = nil
  get_response = nil
  while status != 'COMPLETED' && status != 'FAILED'
    unless status.nil?
      puts "Current status is #{status}, waiting #{sleep_interval} seconds"
      sleep(sleep_interval) unless status.nil?
    end
    get_response = bulk_mutate_job_srv.get(selector)
    if get_response and get_response.size > 0
      status = get_response.first[:status]
    else
      puts 'Error retrieving job status; aborting.'
      exit
    end
  end

  if status == 'COMPLETED'
    puts 'Job completed!'
    # Retrieve the results for the parts.
    0.upto(job_operation_1[:operand][:num_request_parts] - 1) do |part_index|
      selector = {
        :job_ids => [job_id],
        # Retrieve results for the current part.
        :result_part_index => part_index
      }
      results = bulk_mutate_job_srv.get(selector)
      if results
        results.each do |result|
          puts 'Part %d/%d of job #%d has successfully completed' %
              [part_index + 1, job_operation_1[:operand][:num_request_parts],
               job_id]
        end
      else
        puts 'Error retrieving job results; aborting.'
        exit
      end
    end
  else
    puts 'Job failed: ' + get_response.first[:failure_reason]
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'true'

  begin
    perform_bulk_mutate_job()

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
