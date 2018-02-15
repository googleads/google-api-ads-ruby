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
# Tests the AdWords API service query builder.

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

  def test_all_service_clauses()
    builder = @api.service_query_builder do |b|
      b.select('a', 'b')
      b.order_by_asc('a')
      b.where('b').equal_to(7)
      b.limit(0, 500)
    end
    expected = 'SELECT a, b WHERE b = 7 ORDER BY a ASC LIMIT 0,500'
    assert_equal(expected, builder.build.to_s)
  end

  def test_all_service_clauses_no_block()
    builder = @api.service_query_builder()
    builder.select('a', 'b')
    builder.order_by_asc('a')
    builder.order_by_desc('b')
    builder.where('b').equal_to(7)
    builder.limit(0, 500)
    expected = 'SELECT a, b WHERE b = 7 ORDER BY a ASC, b DESC LIMIT 0,500'
    assert_equal(expected, builder.build.to_s)
  end

  def test_duplicate_fields()
    builder = @api.service_query_builder do |b|
      b.select('a', 'b', 'c', 'd', 'b')
    end
    expected = 'SELECT a, b, c, d'
    assert_equal(expected, builder.build.to_s)
  end

  def test_missing_select_service()
    builder = @api.service_query_builder do |b|
      b.order_by_asc('a')
    end
    assert_raise do
      builder.build
    end
  end

  def test_multiple_orders()
    builder = @api.service_query_builder do |b|
      b.select('a', 'b')
      b.order_by_asc('a')
      b.order_by_desc('b')
    end
    expected = 'SELECT a, b ORDER BY a ASC, b DESC'
    assert_equal(expected, builder.build.to_s)
  end

  def test_paging()
    builder = @api.service_query_builder do |b|
      b.select('a', 'b')
      b.limit(0, 500)
    end
    query = builder.build
    expected = 'SELECT a, b LIMIT 0,500'
    assert_equal(expected, query.to_s)
    assert_true(query.has_next({:total_num_entries => 750}))
    assert_false(query.has_next({:total_num_entries => 50}))
    query.next_page()
    assert_false(query.has_next({:total_num_entries => 750}))
    expected = 'SELECT a, b LIMIT 500,500'
    assert_equal(expected, query.to_s)
  end

  def test_landscape_paging()
    builder = @api.service_query_builder do |b|
      b.select('a', 'b')
      b.limit(0, 2)
    end
    query = builder.build
    expected = 'SELECT a, b LIMIT 0,2'
    assert_equal(expected, query.to_s)
    page = {
      :entries => [
        {
          :landscape_points => [1, 2]
        }
      ]
    }
    assert_true(query.has_next_landscape_page(page))
    page = {
      :entries => [
        {
          :landscape_points => [1]
        },
        {
          :landscape_points => [2]
        }
      ]
    }
    assert_true(query.has_next_landscape_page(page))
    page = {
      :entries => [
        {
          :landscape_points => [1]
        }
      ]
    }
    assert_false(query.has_next_landscape_page(page))
    page = {
      :entries => []
    }
    assert_false(query.has_next_landscape_page(page))
    query.next_page
    expected = 'SELECT a, b LIMIT 2,2'
    assert_equal(expected, query.to_s)
  end

  def test_no_paging_with_no_limit()
    builder = @api.service_query_builder do |b|
      b.select('a', 'b')
    end
    query = builder.build
    assert_raise do
      query.has_next(1000)
    end
    assert_raise do
      query.next_page
    end
  end
end
