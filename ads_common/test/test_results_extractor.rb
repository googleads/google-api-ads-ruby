#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# Tests the array replies from services.

require 'test/unit'

require 'ads_common/results_extractor'

module AdsCommon
  class ResultsExtractor

    public :normalize_type
  end
end

class StubRegistry
end

class TestResultsExtractor < Test::Unit::TestCase

  # Initialize tests.
  def setup()
    registry = StubRegistry.new()
    @extractor = AdsCommon::ResultsExtractor.new(registry)
  end

  def test_normalize_type_int()
    result1 = @extractor.normalize_type(5, {:type => 'int'})
    assert_kind_of(Integer, result1)
    assert_equal(5, result1, 'bad conversion')

    result2 = @extractor.normalize_type(2147483648, {:type => 'int'})
    assert_kind_of(Integer, result2)
    assert_equal(2147483648, result2, 'bad conversion')
  end

  def test_normalize_type_string()
    result1 = @extractor.normalize_type('foobar',
        {:type => 'string'})
    assert_kind_of(String, result1)
    assert_equal('foobar', result1, 'bad conversion')

    result2 = @extractor.normalize_type('', {:type => 'string'})
    assert_kind_of(String, result2)
    assert_equal('', result2, 'bad conversion')
  end

  def test_normalize_type_long()
    result1 = @extractor.normalize_type(2147483648,
        {:type => 'long'})
    assert_kind_of(Integer, result1)
    assert_equal(2147483648, result1, 'bad conversion')

    result2 = @extractor.normalize_type(-1, {:type => 'long'})
    assert_kind_of(Integer, result2)
    assert_equal(-1, result2, 'bad conversion')
  end

  def test_normalize_type_boolean()
    result1 = @extractor.normalize_type(true, {:type => 'boolean'})
    assert_kind_of(TrueClass, result1)

    result2 = @extractor.normalize_type(false, {:type => 'boolean'})
    assert_kind_of(FalseClass, result2)

    result3 = @extractor.normalize_type('true', {:type => 'boolean'})
    assert_kind_of(TrueClass, result3)

    result4 = @extractor.normalize_type('false',
        {:type => 'boolean'})
    assert_kind_of(FalseClass, result4)

    result5 = @extractor.normalize_type('True',
        {:type => 'boolean'})
    assert_kind_of(TrueClass, result3)

    result6 = @extractor.normalize_type('False',
        {:type => 'boolean'})
    assert_kind_of(FalseClass, result4)
  end

  def test_normalize_type_object()
    result1 = @extractor.normalize_type({:a => 'b'},
        {:type => 'StubClass'})
    assert_equal('b', result1[:a], 'object corrupted')

    result2 = @extractor.normalize_type(@extractor,
        {:type => 'SavonService'})
    assert_equal(@extractor.hash, result2.hash, 'object corrupted')
  end

  def test_normalize_type_double()
    result1 = @extractor.normalize_type(3.14, {:type => 'double'})
    assert_kind_of(Float, result1)
    assert_equal(3.14, result1, 'bad conversion')

    result2 = @extractor.normalize_type('-3.14', {:type => 'double'})
    assert_kind_of(Float, result2)
    assert_equal(-3.14, result2, 'bad conversion')

    result3 = @extractor.normalize_type('42', {:type => 'double'})
    assert_kind_of(Float, result3)
    assert_equal(42.0, result3, 'bad conversion')
  end

  def test_normalize_type_single_array_item()
    result1 = @extractor.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => 1})
    assert_kind_of(Float, result1)
    assert_equal(42.0, result1, 'Float is expected for max_occurs 1')

    result2 = @extractor.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => :unbounded})
    assert_instance_of(Array, result2)
    assert_equal(42.0, result2[0], 'Array is expected for unbounded max_occurs')

    result3 = @extractor.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => 2})
    assert_instance_of(Array, result3)
    assert_equal(42.0, result3[0], 'Array is expected for max_occurs > 1')

    result4 = @extractor.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => nil})
    assert_instance_of(Float, result4)
    assert_equal(42.0, result4, 'Float is expected for nil max_occurs')
  end
end
