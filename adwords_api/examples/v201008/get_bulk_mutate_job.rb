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
# This example gets a bulk mutate job and prints out its stats information.
# To add a bulk mutate job, run perform_bulk_mutate_job.rb.
#
# Tags: BulkMutateJobService.get

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'

API_VERSION = :v201008

def get_all_bulk_mutate_jobs()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  bulk_mutate_job_srv = adwords.service(:BulkMutateJobService, API_VERSION)

  # Replace with valid values of your account.
  bulk_mutate_job_id = "INSERT_BULK_MUTATE_JOB_ID_HERE"

  # Get all the bulk mutate jobs.
  selector = {
    :include_stats => true,
    :job_ids => [bulk_mutate_job_id]
  }
  jobs = bulk_mutate_job_srv.get(selector)

  if jobs
    jobs.each do |job|
      puts "Bulk mutate job with id %d and status '%s' was found." %
          [job[:id], job[:status]]

      case job[:status]
      when 'PENDING'
        puts "  Total parts: %d, parts received: %d." %
            [job[:num_request_parts], job[:num_request_parts_received]]
      when 'PROCESSING'
        if job[:stats]
          puts "  Percent complete: %d." % job[:stats][:progress_percent]
        end
      when 'COMPLETED'
        if job[:stats]
          puts "  Total operations: %d, failed: %d, unprocessed %d." %
              [job[:stats][:num_operations],
               job[:stats][:num_failed_operations],
               job[:stats][:num_unprocessed_operations]]
        end
      end
    end
  else
    puts "No bulk mutate jobs were found."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'true'

  begin
    get_all_bulk_mutate_jobs()

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
