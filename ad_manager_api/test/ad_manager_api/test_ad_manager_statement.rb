#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the 'License');
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an 'AS IS' BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# Tests the StatementBuilder utility.

require 'test/unit'
require 'ad_manager_api'
require 'date'


KEYWORDS = ['SELECT', 'FROM', 'WHERE', 'ORDER BY', 'LIMIT', 'OFFSET']
DEFAULT_LIMIT = 500
DEFAULT_OFFSET = 0


def keywords_downcase(query)
  KEYWORDS.each do |keyword|
    # Case-insensitively match the keyword and replace it with lowercase form
    query = query.sub(/#{keyword}/i, keyword.downcase)
  end
  query
end


class TestAdManagerApi < Test::Unit::TestCase
  def setup()
    @ad_manager = AdManagerApi::Api.new({})
  end

  # Test initializer with only SELECT and FROM clauses
  def test_basic_query_initalize_with_block()
    columns = 'TestColumnA, TestColumnB'
    table = 'TestTable'
    sb = @ad_manager.new_statement_builder do |b|
      b.select = columns
      b.from = table
    end
    query = 'select ' + columns + ' from ' + table + ' limit ' +
        DEFAULT_LIMIT.to_s + ' offset ' + DEFAULT_OFFSET.to_s
    assert_equal(query, keywords_downcase(sb.to_statement()[:query]))
  end

  # Test configure method with only SELECT and FROM clauses
  def test_basic_query_configure_method
    columns = 'TestColumnA, TestColumnB'
    table = 'TestTable'
    sb = @ad_manager.new_statement_builder
    sb.configure do |b|
      b.select = columns
      b.from = table
    end
    query = 'select ' + columns + ' from ' + table + ' limit ' +
        DEFAULT_LIMIT.to_s + ' offset ' + DEFAULT_OFFSET.to_s
    assert_equal(query, keywords_downcase(sb.to_statement()[:query]))
  end

  # Test initializer with all options
  def test_complex_query_initialize_with_block()
    bind_variable_name = 'bind_variable'
    bind_variable_value = 100  # Expected to be a number
    columns = 'TestColumnA, TestColumnB'
    table = 'TestTable'
    condition = 'TestColumnA > :' + bind_variable_name
    order_property = 'TestColumnA'
    ascending = false
    limit = 1000
    offset = 500
    sb = @ad_manager.new_statement_builder do |b|
      b.select = columns
      b.from = table
      b.where = condition
      b.order_by = order_property
      b.ascending = ascending
      b.limit = limit
      b.offset = offset
      b.with_bind_variable(bind_variable_name, bind_variable_value)
    end
    query = 'select ' + columns + ' from ' + table + ' where ' +
        condition + ' order by ' + order_property +
        (ascending ? ' ASC' : ' DESC') + ' limit ' + limit.to_s +
        ' offset ' + offset.to_s
    values = [{
      :key => bind_variable_name,
      :value => {
        :xsi_type => 'NumberValue',
        :value => bind_variable_value
      }
    }]
    assert_equal(query, keywords_downcase(sb.to_statement()[:query]))
    assert_equal(values, sb.to_statement()[:values])
  end

  # Test all bind variable types
  def test_bind_variable_type_inference()
    sb = @ad_manager.new_statement_builder do |b|
      b.with_bind_variable('num_var', 1)
      b.with_bind_variable('text_var', 'asdf')
      b.with_bind_variable('bool_var', true)
      b.with_bind_variable('set_var', [1,2,3])
      b.with_bind_variable('date_var', @ad_manager.date())
      b.with_bind_variable('datetime_var', @ad_manager.datetime('UTC'))
    end
    values = sb.to_statement()[:values]
    assert_equal('NumberValue',
        values.find {|v| v[:key] == 'num_var'}[:value][:xsi_type])
    assert_equal('TextValue',
        values.find {|v| v[:key] == 'text_var'}[:value][:xsi_type])
    assert_equal('BooleanValue',
        values.find {|v| v[:key] == 'bool_var'}[:value][:xsi_type])
    assert_equal('SetValue',
        values.find {|v| v[:key] == 'set_var'}[:value][:xsi_type])
    assert_equal('DateValue',
        values.find {|v| v[:key] == 'date_var'}[:value][:xsi_type])
    assert_equal('DateTimeValue',
        values.find {|v| v[:key] == 'datetime_var'}[:value][:xsi_type])
  end

  # Test only last variable for a given key is retained
  def test_multiple_settings_of_bind_variable()
    sb = @ad_manager.new_statement_builder
    sb.with_bind_variable('var_name', 123)
    sb.with_bind_variable('var_name', 'abc')
    values = [{:key => 'var_name',
      :value => {:xsi_type => 'TextValue', :value => 'abc'}}]
    assert_equal(values, sb.to_statement()[:values])
  end

  # Test validation of SELECT clause without FROM clause
  def test_validation_select_without_from()
    sb = @ad_manager.new_statement_builder { |b| b.select = 'TestColumnA' }
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of FROM clause without SELECT clause
  def test_validation_from_without_select()
    sb = @ad_manager.new_statement_builder { |b| b.from = 'TestTable' }
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of SELECT clause with empty string for FROM clause
  def test_validation_select_with_empty_from()
    sb = @ad_manager.new_statement_builder do |b|
      b.select = 'TestColumnA'
      b.from = ''
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of FROM clause with empty string for SELECT clause
  def test_validation_from_with_empty_select()
    sb = @ad_manager.new_statement_builder do |b|
      b.select = ''
      b.from = 'TestTable'
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of OFFSET clause without LIMIT clause
  def test_validation_offset_without_limit()
    sb = @ad_manager.new_statement_builder do |b|
      b.offset = 50
      b.limit = nil
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of OFFSET clause with empty string for LIMIT clause
  def test_validation_offset_with_empty_limit()
    sb = @ad_manager.new_statement_builder do |b|
      b.offset = 50
      b.limit = ''
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of LIMIT clause with empty string for OFFSET clause
  def test_validation_limit_with_empty_offset()
    sb = @ad_manager.new_statement_builder do |b|
      b.offset = ''
      b.limit = 100
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of non-integer OFFSET
  def test_validation_non_integer_offset()
    sb = @ad_manager.new_statement_builder { |b| b.offset = 50.0 }
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation of non-integer LIMIT
  def test_validation_non_integer_limit()
    sb = @ad_manager.new_statement_builder { |b| b.limit = 100.0 }
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation for missing value
  def test_validation_missing_value()
    sb = @ad_manager.new_statement_builder do |b|
      b.with_bind_variable('var_name', nil)
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation for missing value type
  def test_validation_missing_value_type()
    sb = @ad_manager.new_statement_builder do |b|
      b.with_bind_variable('var_name', {:value => 123})
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation for unknown value type
  def test_validation_unknown_value_type()
    sb = @ad_manager.new_statement_builder do |b|
      b.with_bind_variable('var_name',
          {:xsi_type => 'FloatValue', :value => 1.0})
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation for sets containing different types
  def test_validation_heterogeneous_sets()
    sb = @ad_manager.new_statement_builder do |b|
      b.with_bind_variable('var_name', [1,2,'3'])
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end

  # Test validation for DateTimeValues without time_zone_id
  def test_validation_datetime_missing_timezone()
    sb = @ad_manager.new_statement_builder do |b|
      datetime = @ad_manager.datetime('UTC').to_h
      datetime.delete(:time_zone_id)
      b.with_bind_variable('var_name',
          {:xsi_type => 'DateTimeValue', :value => datetime})
    end
    assert_raise(RuntimeError) { sb.to_statement() }
  end
end
