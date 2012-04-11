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
# Tests report utils.

require 'test/unit'

require 'adwords_api'

API_VERSION = :v201109

# Overriding default access levels to public for tests.
module AdwordsApi
  class ReportUtils
    public :check_for_errors
    public :add_report_definition_hash_order
  end
end

# Stub class for HTTP response.
class ResponseStub
  attr_reader :code
  attr_reader :body

  def initialize(code, body)
    @code, @body = code, body
  end
end

# Typical reply types.
REPLY_TYPES = [
    {:reply => '!!!2|||-1|||Improperly formatted report request???',
     :message => 'Improperly formatted report request'},
    {:reply => "!!!2|||-1|||ReportDefinitionError.INVALID_FIELD_NAME_FOR_REPORT @ ; trigger:'bCampaignId'???",
     :message => "ReportDefinitionError.INVALID_FIELD_NAME_FOR_REPORT @ ; trigger:'bCampaignId'"}
]

VALID_REPORT = '"Custom ADGROUP_PERFORMANCE_REPORT (Oct 20, 2011-Oct 26, 2011)"\nCampaign ID,Ad group ID,Impressions,Clicks,Cost\nTotal, --,0,0,0.00'
GZIPPED_REPORT = "\x1F\x8B\b\x00\x00\x00\x00\x00\x00\x00Sr.-.\xC9\xCFUptq\x0F\xF2\x0F\r\x88\x0Fp\rr\xF3\x0F\xF2u\xF4sv\x8D\x0Fr\r\xF0\x0F\nQ\xD0pIMV0\xD2Q0204\xD4\x05\xB1- lM%.\xE7\xC4\xDC\x82\xC4\xCC\xF4<\x05O\x17\x1D\xC7\x14\x85\xF4\xA2\xFC\xD2\x02\x10\xDB3\xB7\xA0(\xB5\xB883?\xAFX\xC79'39\eH\xE5\x17\x97p\x85\xE4\x97$\xE6\xE8(\xE8\xEA\xEA\x18\x80\xA0\x9E\x81\x01\x17\x00\xBE\x1D\xBE\xAD\x81\x00\x00\x00"

class TestReportUtils < Test::Unit::TestCase
  # Initialize tests.
  def setup
    @api = AdwordsApi::Api.new
    @report_utils = @api.report_utils(API_VERSION)
  end

  # Testing HTTP code 400.
  def test_check_for_errors_400
    REPLY_TYPES.each do |reply_type|
      begin
        response = ResponseStub.new(400, reply_type[:reply])
        @report_utils.check_for_errors(response)
        assert(false, 'No exception thrown for code 400')
      rescue AdwordsApi::Errors::ReportError => e
        assert_equal(400, e.http_code)
        assert(e.message.include?(reply_type[:message]))
      end
    end
  end

  # Testing HTTP code 500.
  def test_check_for_errors_500
    REPLY_TYPES.each do |reply_type|
      begin
        response = ResponseStub.new(500, nil)
        @report_utils.check_for_errors(response)
        assert(false, 'No exception thrown for code 500')
      rescue AdwordsApi::Errors::ReportError => e
        assert_equal(500, e.http_code)
      end
    end
  end

  # Testing HTTP code 200 with success.
  def test_check_for_errors_200_success
    response = ResponseStub.new(200, VALID_REPORT)
    assert_nothing_raised do
      @report_utils.check_for_errors(response)
    end
  end

  # Testing HTTP code 200 with failure.
  def test_check_for_errors_200_success
    REPLY_TYPES.each do |reply_type|
      begin
        response = ResponseStub.new(200, reply_type[:reply])
        @report_utils.check_for_errors(response)
        assert(false, 'No exception thrown for code 200')
      rescue AdwordsApi::Errors::ReportError => e
        assert_equal(200, e.http_code)
        assert(e.message.include?(reply_type[:message]))
      end
    end
  end

  # Testing correct gzipped reply.
  def test_gzipped_data
    report = (RUBY_VERSION >= '1.9.1') ?
        GZIPPED_REPORT.force_encoding('UTF-8') : GZIPPED_REPORT
    response = ResponseStub.new(200, report)
    assert_nothing_raised do
      @report_utils.check_for_errors(response)
    end
  end

  # Tests generated hash order for root (complete set).
  def test_add_report_definition_hash_order_root1
    node = {
      :include_zero_impressions => false,
      :download_format => 'CSV',
      :report_type => 'CRITERIA_PERFORMANCE_REPORT',
      :selector => {},
      :report_name => 'report_name',
      :date_range_type => 'LAST_7_DAYS'
    }
    expected = [:selector, :report_name, :report_type, :date_range_type,
                :download_format, :include_zero_impressions]
    @report_utils.add_report_definition_hash_order(node)
    assert_not_nil(node[:order!])
    assert_equal(expected, node[:order!])
  end

  # Tests generated hash order for root (incomplete set).
  def test_add_report_definition_hash_order_root2
    node = {
      :download_format => 'CSV',
      :report_type => 'CRITERIA_PERFORMANCE_REPORT',
      :selector => {},
      :report_name => 'report_name',
      :date_range_type => 'LAST_7_DAYS'
    }
    expected = [:selector, :report_name, :report_type, :date_range_type,
                :download_format]
    @report_utils.add_report_definition_hash_order(node)
    assert_not_nil(node[:order!])
    assert_equal(expected, node[:order!])
  end

  # Tests generated hash order for whole structure.
  def test_add_report_definition_hash_order_deep
    node = {
      :report_name => 'report_name',
      :report_type => 'CRITERIA_PERFORMANCE_REPORT',
      :selector => {
        :date_range => {:max => '20120405', :min => '20120405'},
        :predicates => {:operator => 'IN', :field => 'S', :values => ['A']},
        :fields => ['CampaignId']
      },
      :include_zero_impressions => false,
      :download_format => 'CSV',
      :date_range_type => 'LAST_7_DAYS'
    }
    expected1 = [:selector, :report_name, :report_type, :date_range_type,
                 :download_format, :include_zero_impressions]
    expected2 = [:fields, :predicates, :date_range]
    expected3 = [:min, :max]
    expected4 = [:field, :operator, :values]

    @report_utils.add_report_definition_hash_order(node)
    assert_not_nil(node[:order!])
    assert_not_nil(node[:selector][:order!])
    assert_not_nil(node[:selector][:date_range][:order!])
    assert_not_nil(node[:selector][:predicates][:order!])

    assert_equal(expected1, node[:order!])
    assert_equal(expected2, node[:selector][:order!])
    assert_equal(expected3, node[:selector][:date_range][:order!])
    assert_equal(expected4, node[:selector][:predicates][:order!])
  end
end
