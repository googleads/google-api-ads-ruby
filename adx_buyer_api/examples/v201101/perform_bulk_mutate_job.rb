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

gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201101
ITEM_COUNT = 100

def perform_bulk_mutate_job()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  bulk_mutate_job_srv = adwords.service(:BulkMutateJobService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Prepare image data and encode it.
  image_url = 'https://sandbox.google.com/sandboximages/image.jpg'
  image_data = AdsCommon::Http.get(image_url, adwords.config)
  base64_image_data = Base64.encode64(image_data)

  # Create AdGroupAdOperations to add ads.
  ads_operations = Array.new(ITEM_COUNT) do |index|
    ads_operation = {
      :xsi_type => 'AdGroupAddOperation',
      :operator => 'ADD',
      :operand => {
        :ad_group_id => ad_group_id
        :ad => {
          :xsi_type => 'ImageAd',
          :name => "My Image Ad %d" % index,
          :url => "http://www.example.com/%d" % index,
          :display_url => "www.example.com",
          :image => {
            :data => base64_image_data
          }
        }
      }
    }
  end

  # Create an operation stream for the ads.
  ads_stream = {
    :scoping_entity_id => {
      :type => 'CAMPAIGN_ID',
      :value => campaign_id
    },
    :operations => ads_operations
  }

  # Create a placement in this ad group for ads.
  plc_operation = {
    :xsi_type => 'AdGroupCriterionOperation',
    :operator => 'ADD',
    :operand => {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Placement',
        :url => "http://mars.google.com"
      }
    }
  }

  # Create an operation stream for the placement.
  plc_stream = {
    :scoping_entity_id => {
      :type => 'CAMPAIGN_ID',
      :value => campaign_id
    },
    :operations => [plc_operation]
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
        :operation_streams => [ads_stream]
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
        :operation_streams => [plc_stream]
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
