#!/usr/bin/env ruby
# Encoding: utf-8
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

    public :check_array_collapse
    public :normalize_item
    public :check_key_value_struct
    public :check_key_value_hash
    public :convert_key_value_to_hash
  end
end

class StubRegistry
  def get_type_signature(type_name)
    if type_name == :SoapResponseHeader
      return {:fields => []}
    else
      return nil
    end
  end
end

class StubResponse
  attr_accessor :header
end

class TestResultsExtractor < Test::Unit::TestCase

  # Initialize tests.
  def setup()
    registry = StubRegistry.new()
    @extractor = AdsCommon::ResultsExtractor.new(registry)
  end

  def test_normalize_item_nil()
    result1 = @extractor.normalize_item(nil, {:type => 'unknown'})
    assert_equal(nil, result1, 'bad conversion')
  end

  def test_normalize_item_int()
    result1 = @extractor.normalize_item(5, {:type => 'int'})
    assert_kind_of(Integer, result1)
    assert_equal(5, result1, 'bad conversion')

    result2 = @extractor.normalize_item(2147483648, {:type => 'int'})
    assert_kind_of(Integer, result2)
    assert_equal(2147483648, result2, 'bad conversion')
  end

  def test_normalize_item_string()
    result1 = @extractor.normalize_item('foobar',
        {:type => 'string'})
    assert_kind_of(String, result1)
    assert_equal('foobar', result1, 'bad conversion')

    result2 = @extractor.normalize_item('', {:type => 'string'})
    assert_kind_of(String, result2)
    assert_equal('', result2, 'bad conversion')
  end

  def test_normalize_item_long()
    result1 = @extractor.normalize_item(2147483648, {:type => 'long'})
    assert_kind_of(Integer, result1)
    assert_equal(2147483648, result1, 'bad conversion')

    result2 = @extractor.normalize_item(-1, {:type => 'long'})
    assert_kind_of(Integer, result2)
    assert_equal(-1, result2, 'bad conversion')
  end

  def test_normalize_item_boolean()
    result1 = @extractor.normalize_item(true, {:type => 'boolean'})
    assert_kind_of(TrueClass, result1)

    result2 = @extractor.normalize_item(false, {:type => 'boolean'})
    assert_kind_of(FalseClass, result2)

    result3 = @extractor.normalize_item('true', {:type => 'boolean'})
    assert_kind_of(TrueClass, result3)

    result4 = @extractor.normalize_item('false', {:type => 'boolean'})
    assert_kind_of(FalseClass, result4)

    result5 = @extractor.normalize_item('True', {:type => 'boolean'})
    assert_kind_of(TrueClass, result5)

    result6 = @extractor.normalize_item('False', {:type => 'boolean'})
    assert_kind_of(FalseClass, result6)
  end

  def test_normalize_item_object()
    result1 = @extractor.normalize_item({:a => 'b'}, {:type => 'StubClass'})
    assert_equal('b', result1[:a], 'object corrupted')

    result2 = @extractor.normalize_item(@extractor, {:type => 'SavonService'})
    assert_equal(@extractor.hash, result2.hash, 'object corrupted')
  end

  def test_normalize_item_double()
    result1 = @extractor.normalize_item(3.14, {:type => 'double'})
    assert_kind_of(Float, result1)
    assert_equal(3.14, result1, 'bad conversion')

    result2 = @extractor.normalize_item('-3.14', {:type => 'double'})
    assert_kind_of(Float, result2)
    assert_equal(-3.14, result2, 'bad conversion')

    result3 = @extractor.normalize_item('42', {:type => 'double'})
    assert_kind_of(Float, result3)
    assert_equal(42.0, result3, 'bad conversion')
  end

  def test_check_array_collapse()
    result1 = @extractor.check_array_collapse(
        42.0, {:min_occurs => '0', :max_occurs => 1})
    assert_kind_of(Float, result1)
    assert_equal(42.0, result1, 'Float is expected for max_occurs 1')

    result2 = @extractor.check_array_collapse(
        42.0, {:min_occurs => '0', :max_occurs => :unbounded})
    assert_instance_of(Array, result2)
    assert_equal(42.0, result2[0])

    result3 = @extractor.check_array_collapse(
        42.0, {:min_occurs => '0', :max_occurs => 2})
    assert_instance_of(Array, result3)
    assert_equal(42.0, result3[0])

    result4 = @extractor.check_array_collapse(
        42.0, {:min_occurs => '0', :max_occurs => nil})
    assert_instance_of(Float, result4)
    assert_equal(42.0, result4, 'Float is expected for nil max_occurs')

    result5 = @extractor.check_array_collapse(
        [42, -1], {:min_occurs => '0', :max_occurs => :unbounded})
    assert_instance_of(Array, result5)
    assert_equal(42, result5[0])
    assert_equal(-1, result5[1])

    result6 = @extractor.check_array_collapse(
        {}, {:min_occurs => '0', :max_occurs => 1})
    assert_equal({}, result6)

    result7 = @extractor.check_array_collapse(
        {}, {:min_occurs => '0', :max_occurs => :unbounded})
    assert_equal([{}], result7)
  end

  def test_check_array_collapse_exception()
    result1 = @extractor.check_array_collapse(
        42.0, {:min_occurs => '0', :max_occurs => 2, :type => 'FloatMapEntry'})
    assert_kind_of(Float, result1)
    assert_equal(42.0, result1)

    result2 = @extractor.check_array_collapse(
        42.0, {:min_occurs => '0', :max_occurs => 2, :type => 'MapEntryTest'})
    assert_kind_of(Array, result2)
    assert_equal(42.0, result2[0])
  end

  def test_extract_headers_empty()
    headers = {}
    response = StubResponse.new()
    response.header = {:response_header => headers}
    result = @extractor.extract_header_data(response)
    assert_equal(headers, result)
    assert_not_same(headers, result)
  end

  def test_extract_headers_passthrough()
    headers = {:a => 'aa', :b => '42'}
    response = StubResponse.new()
    response.header = {:response_header => headers}
    result = @extractor.extract_header_data(response)
    assert_equal(headers, result)
    assert_not_same(headers, result)
  end

  def test_extract_headers_attrs_removed()
    headers = {:a => 'aa', :@xmlns => '42'}
    expected = {:a => 'aa'}
    response = StubResponse.new()
    response.header = {:response_header => headers}
    result = @extractor.extract_header_data(response)
    assert_equal(expected, result)
  end

  def test_check_key_value_struct()
    assert(!@extractor.check_key_value_struct([]))
    assert(!@extractor.check_key_value_struct({}))

    test1 = [{:key => 'foo', :value => 'bar'}]
    assert(@extractor.check_key_value_struct(test1))
    test2 = [{:key => 'foo'}]
    assert(!@extractor.check_key_value_struct(test2))
    test3 = [{:key => 'foo', :value => 'bar', :extra => 42}]
    assert(!@extractor.check_key_value_struct(test3))
    test4 = [{:key => 'foo', :value => 'bar'}, {:baz => 'bar'}]
    assert(!@extractor.check_key_value_struct(test4))
    test5 = [
      {:key => 'foo', :value => 'bar'},
      {:key => 'bar', :value => {:bar => 'baz'}}
    ]
    assert(@extractor.check_key_value_struct(test5))
    test6 = {:key => 'foo', :value => 'bar'}
    assert(@extractor.check_key_value_struct(test6))
    test7 = {:key => 'foo'}
    assert(!@extractor.check_key_value_struct(test7))
    test8 = {:value => 'baz', :key => 'foo'}
    assert(@extractor.check_key_value_struct(test8))
  end

  def test_convert_key_value_to_hash()
    result1 = @extractor.convert_key_value_to_hash(
        [{:key => 'foo', :value => 'bar'}, {:key => 42, :value => 88.2}])
    assert_kind_of(Hash, result1)
    assert(result1.include?('foo'))
    assert(result1.include?(42))
    assert_equal('bar', result1['foo'])
    assert_equal(88.2, result1[42])
    result2 = @extractor.convert_key_value_to_hash(
        {:key => 'foo', :value => 'bar'})
    assert_kind_of(Hash, result2)
    assert_equal(['foo'], result2.keys)
    assert_equal('bar', result2['foo'])
  end
end
