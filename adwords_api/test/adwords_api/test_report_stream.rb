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
# Tests report stream.

require 'test/unit'

require 'adwords_api'

module AdwordsApi
  class ReportUtils
    def download_report_as_stream(report_definition, cid = nil, &block)
      yield "a\n"
      yield "b\nc"
      yield "\n\n\nd"
      yield "e"
      yield "f\ng\xe4\xb9"
      yield "\x91h\n"
    end
  end
end

class TestReportStream < Test::Unit::TestCase
  API_VERSION = :v201809

  # Initialize tests.
  def setup()
    @api = AdwordsApi::Api.new({
      :authentication => {
          :method => 'OAuth2',
          :oauth2_client_id => 'client_id123',
          :oauth2_client_secret => 'client_secret123',
          :developer_token => 'developer_token123',
          :client_customer_id => '012-345-6789',
          :user_agent => 'TestReportUtils'
      },
      :service => {
        :environment => 'PRODUCTION'
      }
    })
    @report_utils = @api.report_utils(API_VERSION)
  end

  def test_read_by_line()
    expected_lines = ["a", "b", "c", "", "", "def", "g\u4e51h"]
    actual_lines = []
    @report_utils.get_stream_helper(nil).each_line do |line|
      actual_lines << line
    end
    assert_equal(expected_lines, actual_lines)
  end
end
