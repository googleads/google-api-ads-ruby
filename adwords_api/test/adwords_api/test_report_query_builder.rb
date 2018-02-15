#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
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
# Tests the AdWords API report query builder.

require 'test/unit'

class TestUtils < Test::Unit::TestCase
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
  end

  def test_all_report_clauses()
    builder = @api.report_query_builder do |b|
      b.select('a', 'b')
      b.from('table')
      b.where('b').equal_to(7)
      b.during_date_range('YESTERDAY')
    end
    expected = 'SELECT a, b FROM table WHERE b = 7 DURING YESTERDAY'
    assert_equal(expected, builder.build.to_s)
    builder.configure do |b|
      b.during_date_range(nil)
      b.during('start', 'end')
    end
    expected = 'SELECT a, b FROM table WHERE b = 7 DURING start,end'
    assert_equal(expected, builder.build.to_s)
  end

  def test_all_report_clauses_no_block()
    builder = @api.report_query_builder()
    builder.select('a', 'b')
    builder.from('table')
    builder.where('b').equal_to(7)
    builder.during_date_range('YESTERDAY')
    expected = 'SELECT a, b FROM table WHERE b = 7 DURING YESTERDAY'
    assert_equal(expected, builder.build.to_s)
    builder.during_date_range(nil)
    builder.during('start', 'end')
    expected = 'SELECT a, b FROM table WHERE b = 7 DURING start,end'
    assert_equal(expected, builder.build.to_s)
  end

  def test_multiple_wheres()
    builder = @api.report_query_builder do |b|
      b.select('a', 'b')
      b.from('table')
      b.where('b').equal_to(7)
      b.where('a').less_than_or_equal_to(100)
    end
    expected = 'SELECT a, b FROM table WHERE b = 7 AND a <= 100'
    assert_equal(expected, builder.build.to_s)
  end

  def test_missing_select_report()
    builder = @api.report_query_builder do |b|
      b.from('table')
    end
    begin
      builder.build
    rescue ArgumentError => e
      assert(e.message.include?('SELECT'))
    end
  end

  def test_missing_from()
    builder = @api.report_query_builder do |b|
      b.select('a', 'b')
    end
    begin
      builder.build
    rescue ArgumentError => e
      assert(e.message.include?('FROM'))
    end
  end

  def test_both_dates_specified()
    builder = @api.report_query_builder do |b|
      b.select('a', 'b')
      b.from('table')
    end
    # Make sure no error is thrown yet.
    builder.build
    builder.configure do |b|
      b.during('start', 'end')
      b.during_date_range('YESTERDAY')
    end
    assert_raise do
      builder.build
    end
  end

  def test_only_start_date()
    builder = @api.report_query_builder do |b|
      b.select('a', 'b')
      b.from('table')
    end
    # Make sure no error is thrown yet.
    builder.build
    builder.configure do |b|
      b.during('start', nil)
    end
    assert_raise do
      builder.build
    end
  end

  def test_only_end_date()
    builder = @api.report_query_builder do |b|
      b.select('a', 'b')
      b.from('table')
    end
    # Make sure no error is thrown yet.
    builder.build
    builder.configure do |b|
      b.during(nil, 'end')
    end
    assert_raise do
      builder.build
    end
  end
end
