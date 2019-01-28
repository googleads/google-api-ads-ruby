#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This solution scans an AdWords account for negative campaign keywords that
# override positive ad group-level ones.

require 'adwords_api'
require 'csv'
require 'optparse'


class Campaign
  attr_accessor :id, :name, :negatives

  def initialize(id, name = nil, negatives = nil)
    @id = id
    @name = name
    @negatives = negatives || []
  end
end


class Keyword
  attr_accessor :id, :match_type, :text

  def initialize(id, match_type, text)
    @id = id
    @match_type = match_type
    @text = text
  end

  def self.from_csv_row(row)
    return self.new(row['Keyword ID'], row['Match type'], row['Keyword'])
  end
end


class Negative < Keyword
  attr_reader :blocked, :blocked_examples

  def initialize(id, match_type, text)
    super
    @blocked = 0
    @blocked_examples = []
  end

  def add_blocked(keyword)
    @blocked_examples << keyword if @blocked < 5
    @blocked += 1
  end

  def self.from_csv_row(row)
    return self.new(row['Keyword ID'], row['Match type'],
        row['Negative keyword'])
  end
end


# Analyzes the account with the user-provided options, and outputs the results.
def run_analysis(options)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # Get report utilities for the version.
  report_utils = adwords.report_utils(API_VERSION)

  allowed_values = ['ENABLED']
  allowed_values << 'PAUSED' if options[:paused]
  allowed_values << 'REMOVED' if options[:removed]

  campaigns = retrieve_negative_keywords(report_utils)
  positive_report =
      retrieve_positive_keyword_report(report_utils, allowed_values)

  # Parse report one row at a time.
  CSV.parse(positive_report, { :headers => true }) do |row|
    # Ignore totals row.
    if row[0] != 'Total'
      campaign = campaigns[row['Campaign ID']]
      if campaign
        # Since the negative keywords report doesn't provide campaign names, we
        # need to update this from the ad group keyword report.
        campaign.name = row['Campaign']
        compare_keywords(campaign.negatives, Keyword.from_csv_row(row))
      end
    end
  end

  # Output statistics.
  campaigns.each_pair do |campaign_id, campaign|
    campaign.negatives.each do |negative|
      if negative.blocked > 0
        puts "Negative keyword %s in campaign %s blocking %d keyword(s)." %
            [negative.id, campaign.id, negative.blocked]
        puts
        puts "Details:"
        puts "- Campaign ID: %s" % campaign.id
        puts "- Campaign name: %s" % campaign.name
        puts "- Negative keyword ID: %s" % negative.id
        puts "- Negative keyword text: %s" % negative.text
        puts "- Negative keyword match type: %s" % negative.match_type
        puts
        if negative.blocked > negative.blocked_examples.length
          print "Examples of blocked keywords: "
        elsif negative.blocked == 1
          print "Blocked keyword: "
        else
          print "Blocked keywords: "
        end
        print negative.blocked_examples.map {|keyword| keyword.text}.join(', ')
        puts "\n\n"
        puts "=" * 50
        puts
      end
    end
  end
end


# Retrieves all negative campaign keywords.
# Unfortunately, we can't filter by campaign status, so we really must get all
# of them.
def retrieve_negative_keywords(report_utils)
  report_definition = {
    :selector => {
      :fields => ['CampaignId', 'Id', 'KeywordMatchType', 'Criteria']
    },
    :report_name => 'Negative campaign keywords',
    :report_type => 'CAMPAIGN_NEGATIVE_KEYWORDS_PERFORMANCE_REPORT',
    :download_format => 'CSV',
    :date_range_type => 'TODAY'
  }

  campaigns = {}

  report = report_utils.download_report(report_definition)
  # Slice off the first row (report name).
  report.slice!(0..report.index("\n"))

  CSV.parse(report, { :headers => true }) do |row|
    campaign_id = row['Campaign ID']

    # Ignore totals row.
    if row[0] != 'Total'
      campaigns[campaign_id] ||= Campaign.new(campaign_id)
      negative = Negative.from_csv_row(row)
      campaigns[campaign_id].negatives << negative
    end
  end

  return campaigns
end


# Retrieves a report for positive ad group keywords.
# We filter to only retrieve items for the statuses the user is interested in.
def retrieve_positive_keyword_report(report_utils, allowed_values)
  report_definition = {
    :selector => {
      :fields => ['CampaignId', 'CampaignName', 'AdGroupId', 'Id',
                  'KeywordMatchType', 'Criteria'],
      :predicates => [
        {
          :field => 'CampaignStatus',
          :operator => 'IN',
          :values => allowed_values
        },
        {
          :field => 'AdGroupStatus',
          :operator => 'IN',
          :values => allowed_values
        },
        {
          :field => 'Status',
          :operator => 'IN',
          :values => allowed_values
        },
        {
          :field => 'IsNegative',
          :operator => 'IN',
          :values => ['false']
        }
      ]
    },
    :report_name => 'Ad group keywords',
    :report_type => 'KEYWORDS_PERFORMANCE_REPORT',
    :download_format => 'CSV',
    :date_range_type => 'TODAY'
  }

  report = report_utils.download_report(report_definition)
  # Slice off the first row (report name).
  report.slice!(0..report.index("\n"))

  return report
end


# Compares a set of negative campaign keywords to a single ad group keyword, and
# checks if the latter is blocked by any of the former, taking into account the
# match type.
def compare_keywords(negatives, positive)
  negatives.each do |negative|
    match_type = negative.match_type.downcase
    negative_text = negative.text.downcase
    positive_text = positive.text.downcase

    match = false

    # If the negative keyword is more strict than the positive one, it cannot
    # match.
    # E.g. a negative exact "cool shoe" will not prevent positive phrase
    # "cool shoe shine".
    positive_match_type = positive.match_type.downcase
    next if positive_match_type == 'broad' && match_type != 'broad'
    next if positive_match_type == 'phrase' && match_type == 'exact'

    # Exact matching with negative keywords triggers only when the full text of
    # the keywords is exactly the same.
    # E.g. a negative "cool shoe" will only match "cool shoe", not "cool shoes"
    # or "cool shoe shine".
    if match_type == 'exact'
      match = true if negative_text == positive_text
    end

    # Phrase matching with negative keywords triggers when the negative phrase
    # is present in the target, completely unmodified (there are no near matches
    # with negative keywords).
    # E.g. a negative "cool shoe" will match "cool shoe" and "cool shoe shine",
    # but not "cool shoes".
    if match_type == 'phrase'
      negative_tokens = negative_text.split(' ')
      positive_tokens = positive_text.split(' ')

      positive_tokens.each_with_index do |positive_token, positive_index|
        # Iterate until the current token matches the first token in the
        # negative keyword.
        if positive_token == negative_tokens.first
          candidate_match = true
          # Do all of the subsequent tokens also match?
          negative_tokens[1..-1].each_with_index do |token, index|
            if token != positive_tokens[positive_index + index + 1]
              candidate_match = false
              break
            end
          end

          match = candidate_match
        end
      end
    end

    # Broad matching with negative keywords triggers when all of the words are
    # present and exactly the same (there are no near matches with negative
    # keywords).
    # E.g. a negative "cool shoe" will match "black cool shoe" and
    # "cool black shoe", but not "cool shoes" or "black shoe".
    if match_type == 'broad'
      negative_tokens = negative_text.split(' ')
      positive_tokens = positive_text.split(' ')

      candidate_match = true

      negative_tokens.each do |token|
        if !positive_tokens.include?(token)
          candidate_match = false
          break
        end
      end

      match = candidate_match
    end

    negative.add_blocked(positive) if match
  end
end


if __FILE__ == $0
  API_VERSION = :v201809

  begin
    options = {}
    OptionParser.new do |opts|
      opts.banner = "Usage: #{$0} [options]"

      opts.on('-p', '--[no-]paused', 'Include paused inventory') do |paused|
        options[:paused] = paused
      end

      opts.on('-r', '--[no-]removed', 'Include removed inventory') do |removed|
        options[:removed] = removed
      end
    end.parse!

    run_analysis(options)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run the misc/setup_oauth2.rb " +
        "example in the AdWords API samples to retrieve and store OAuth2 "+
        "tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ReportError => e
    puts "Reporting Error: %s" % e.message
  end
end
