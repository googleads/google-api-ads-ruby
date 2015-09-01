#!/usr/bin/env ruby
# Encoding: utf-8
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
# Tests validator methods.

require 'test/unit'

require 'ads_common/errors'
require 'ads_common/parameters_validator'

module AdsCommon
  class ParametersValidator
    public :deep_copy, :add_attribute, :array_from_named_list
    public :check_required_argument_present, :arrayize
  end
end

class TestParametersValidator < Test::Unit::TestCase
  def setup
    @validator = AdsCommon::ParametersValidator.new(nil)
  end

  def test_deep_copy_simple
    result1 = @validator.deep_copy(42)
    assert_equal(42, result1)

    result2 = @validator.deep_copy('Hello World')
    assert_equal('Hello World', result2)

    result3 = @validator.deep_copy(nil)
    assert_nil(result3)

    result4 = @validator.deep_copy([])
    assert_equal([], result4)
    assert_not_same([], result4)

    result5 = @validator.deep_copy({})
    assert_equal({}, result5)
    assert_not_same({}, result5)
  end

  def test_deep_copy_complex
    data = {:ab => 'ab', :cd => ['cd', 'de', 'ef']}

    result1 = @validator.deep_copy(data)
    assert_equal(data, result1)
    assert_not_same(data, result1)

    result2 = @validator.deep_copy(data)
    assert_equal(result2, result1)
    assert_not_same(result2, result1)

    result2[:cd] = nil
    assert_not_equal(data, result2)
    assert_equal(data, result1)
  end

  def test_add_attribute
    node = {}

    key, name, value1, value2, value3 = 'key', 'name', 'Lorem', 'ipsum', 'dolor'

    @validator.add_attribute(node, key, name, value1)
    assert_kind_of(Hash, node)
    assert_kind_of(Hash, node[:attributes!])
    assert_kind_of(Hash, node[:attributes!][key])
    assert_equal(value1, node[:attributes!][key][name])

    @validator.add_attribute(node, key, name, value2)
    assert_kind_of(Hash, node)
    assert_kind_of(Hash, node[:attributes!])
    assert_kind_of(Hash, node[:attributes!][key])
    assert_kind_of(Array, node[:attributes!][key][name])
    assert_equal(value1, node[:attributes!][key][name][0])
    assert_equal(value2, node[:attributes!][key][name][1])

    @validator.add_attribute(node, key, name, value3)
    assert_equal(value1, node[:attributes!][key][name][0])
    assert_equal(value2, node[:attributes!][key][name][1])
    assert_equal(value3, node[:attributes!][key][name][2])
  end

  def test_array_from_named_list
    src = [{:name => 'foo'}, {:name => 'bar', :bar => :baz}, {:name => 'ipsum'}]
    result = @validator.array_from_named_list(src)
    assert_equal(['foo', 'bar', 'ipsum'], result)
  end

  def test_check_required_argument_present
    field1 = {:min_occurs => 1, :max_occurs => 1,
              :name => 'field1', :type => 'type1'}
    assert_raises(AdsCommon::Errors::MissingPropertyError) do
      @validator.check_required_argument_present(nil, field1)
    end
    assert_raises(AdsCommon::Errors::TypeMismatchError) do
      @validator.check_required_argument_present([], field1)
    end
    assert_nothing_raised do
      @validator.check_required_argument_present({}, field1)
      @validator.check_required_argument_present('foobar', field1)
      @validator.check_required_argument_present(42, field1)
    end

    field2 = {:min_occurs => 0, :max_occurs => :unbounded,
              :name => 'field2', :type => 'type2'}
    assert_raises(AdsCommon::Errors::TypeMismatchError) do
      @validator.check_required_argument_present({}, field2)
    end
    assert_nothing_raised do
      @validator.check_required_argument_present(nil, field2)
      @validator.check_required_argument_present([], field2)
      @validator.check_required_argument_present([field1, field2], field2)
    end
  end

  def test_arrayize_empty
    result1 = @validator.arrayize(nil)
    assert_instance_of(Array, result1, 'returned object is not an Array')
    assert_equal(0, result1.size, 'array is not empty')

    result2 = @validator.arrayize([])
    assert_instance_of(Array, result2, 'returned object is not an Array')
    assert_equal(0, result2.size, 'array is not empty')
  end

  def test_arrayize_on_array
    result1 = @validator.arrayize([nil])
    assert_instance_of(Array, result1, 'returned object is not an Array')
    assert_equal(1, result1.size, 'array changed size')
    assert_equal(nil, result1[0], 'array changed data')

    result2 = @validator.arrayize(['a', 'b'])
    assert_instance_of(Array, result2, 'returned object is not an Array')
    assert_equal(2, result2.size, 'array changed size')
    assert_equal('a', result2[0], 'array changed data')
    assert_equal('b', result2[1], 'array changed data')
  end
end
