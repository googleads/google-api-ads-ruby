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
# This example gets and downloads an Ad Hoc report from a XML report definition
# for all accounts in hierarchy in multiple parallel threads. This example
# needs to be run against an MCC account.

require 'thread'

require 'adwords_api'
require 'adwords_api/utils'

def parallel_report_download()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  # Determine list of customer IDs to retrieve report for. For this example we
  # will use ManagedCustomerService to get all IDs in hierarchy.

  managed_customer_srv = adwords.service(:ManagedCustomerService, API_VERSION)

  # Get the account hierarchy for this account.
  selector = {:fields => ['CustomerId']}

  graph = managed_customer_srv.get(selector)

  # Using queue to balance load between threads.
  queue = Queue.new()

  if graph and graph[:entries] and !graph[:entries].empty?
    graph[:entries].each {|account| queue << account[:customer_id]}
  else
    raise StandardError, 'Can not retrieve any customer ID'
  end

  # Get report utilities for the version.
  report_utils = adwords.report_utils(API_VERSION)

  # Define report definition. You can also pass your own XML text as a string.
  report_definition = {
    :selector => {
        :fields => ['CampaignId', 'AdGroupId', 'Impressions', 'Clicks', 'Cost'],
        # Predicates are optional.
        :predicates => {
          :field => 'AdGroupStatus',
          :operator => 'IN',
          :values => ['ENABLED', 'PAUSED']
        }
      },
      :report_name => 'Custom ADGROUP_PERFORMANCE_REPORT',
      :report_type => 'ADGROUP_PERFORMANCE_REPORT',
      :download_format => 'CSV',
      :date_range_type => 'LAST_7_DAYS',
      # Enable to get rows with zero impressions.
      :include_zero_impressions => false
  }

  puts 'Retrieving %d reports with %d threads:' % [queue.size, THREADS]

  reports_succeeded = Queue.new()
  reports_failed = Queue.new()

  # Creating a mutex to control access to the queue.
  queue_mutex = Mutex.new

  # Start all the threads.
  threads = (1..THREADS).map do |thread_id|
    Thread.new(report_definition) do |local_def|
      cid = nil
      begin
        cid = queue_mutex.synchronize {(queue.empty?) ? nil : queue.pop(true)}
        if cid
          retry_count = 0
          file_name = 'adgroup_%010d.csv' % cid
          puts "[%2d/%d] Loading report for customer ID %s into '%s'..." %
              [thread_id, retry_count,
               AdwordsApi::Utils.format_id(cid), file_name]
          begin
            report_utils.download_report_as_file(local_def, file_name, cid)
            reports_succeeded << {:cid => cid, :file_name => file_name}
          rescue AdwordsApi::Errors::ReportError => e
            if e.http_code == 500 && retry_count < MAX_RETRIES
              retry_count += 1
              sleep(retry_count * BACKOFF_FACTOR)
              retry
            else
              puts(('Report failed for customer ID %s with code %d after %d ' +
                  'retries.') % [cid, e.http_code, retry_count + 1])
              reports_failed <<
                {:cid => cid, :http_code => e.http_code, :message => e.message}
            end
          end
        end
      end while (cid != nil)
    end
  end

  # Wait for all threads to finish.
  threads.each { |aThread|  aThread.join }

  puts 'Download completed, results:'
  puts 'Successful reports:'
  while !reports_succeeded.empty? do
    result = reports_succeeded.pop()
    puts "\tClient ID %s => '%s'" %
        [AdwordsApi::Utils.format_id(result[:cid]), result[:file_name]]
  end
  puts 'Failed reports:'
  while !reports_failed.empty? do
    result = reports_failed.pop()
    puts "\tClient ID %s => Code: %d, Message: '%s'" %
        [AdwordsApi::Utils.format_id(result[:cid]),
         result[:http_code], result[:message]]
  end
  puts 'End of results.'
end

if __FILE__ == $0
  API_VERSION = :v201506
  # Number of parallel threads to spawn.
  THREADS = 10
  # Maximum number of retries for 500 errors.
  MAX_RETRIES = 5
  # Timeout between retries in seconds.
  BACKOFF_FACTOR = 5

  begin
    parallel_report_download()

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'http://code.google.com/p/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts 'HTTP Error: %s' % e

  # API errors.
  rescue AdwordsApi::Errors::ReportError => e
    puts 'Reporting Error: %s' % e.message
  end
end
