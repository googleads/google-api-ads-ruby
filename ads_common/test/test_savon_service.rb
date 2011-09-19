#!/usr/bin/ruby
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
# Tests the array replies from services.

require 'rubygems'
require 'test/unit'

require 'ads_common/config'
require 'ads_common/savon_service'

# AdsCommon::Api is abstract, defining a stub class for the test.
class StubApi
  attr_accessor :config
  def initialize()
    @config = AdsCommon::Config.new
  end
  def self.get_instance()
    @api ||= StubApi.new
    return @api
  end
end

# SavonService is abstract, defining a child class for the test.
class StubService < AdsCommon::SavonService
  def initialize(namespace, endpoint, version)
    super(StubApi.get_instance(), namespace, endpoint, version)
  end
  def private_get_service_registry()
    return get_service_registry
  end
  def private_get_module()
    return get_module
  end
  def private_normalize_type(data, field)
    return normalize_type(data, field)
  end
  def private_get_field_by_name(fields_list, name)
    return get_field_by_name(fields_list, name)
  end
  def private_arrayize(object)
    return arrayize(object)
  end
  def private_deep_copy(object)
    return deep_copy(object)
  end
  def private_add_attribute(node, key, name, value)
    return add_attribute(node, key, name, value)
  end
end

class TestSavonService < Test::Unit::TestCase
  TEST_NAMESPACE = 'namespace'
  TEST_ENDPOINT = 'endpoint'
  TEST_VERSION = :vVersion

  # Initialize tests.
  def setup
    @stub_service = StubService.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
  end

  def test_initialize_abstract
    assert_raises(NoMethodError) do
      AdsCommon::SavonService.new(nil, TEST_NAMESPACE, TEST_ENDPOINT,
          TEST_VERSION)
    end
    assert_nothing_raised do
      StubService.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
    end
  end

  def test_get_service_registry_abstract
    assert_raises(NoMethodError) { @stub_service.private_get_service_registry }
  end

  def test_get_module_abstract
    assert_raises(NoMethodError) { @stub_service.private_get_module }
  end

  def test_arrayize_empty
    result1 = @stub_service.private_arrayize(nil)
    assert_instance_of(Array, result1, 'returned object is not an Array')
    assert_equal(0, result1.size, 'array is not empty')

    result2 = @stub_service.private_arrayize([])
    assert_instance_of(Array, result2, 'returned object is not an Array')
    assert_equal(0, result2.size, 'array is not empty')
  end

  def test_arrayize_on_array
    result1 = @stub_service.private_arrayize([nil])
    assert_instance_of(Array, result1, 'returned object is not an Array')
    assert_equal(1, result1.size, 'array changed size')
    assert_equal(nil, result1[0], 'array changed data')

    result2 = @stub_service.private_arrayize(['a', 'b'])
    assert_instance_of(Array, result2, 'returned object is not an Array')
    assert_equal(2, result2.size, 'array changed size')
    assert_equal('a', result2[0], 'array changed data')
    assert_equal('b', result2[1], 'array changed data')
  end

  def test_normalize_type_int
    result1 = @stub_service.private_normalize_type(5, {:type => 'int'})
    assert_kind_of(Integer, result1)
    assert_equal(5, result1, 'bad conversion')

    result2 = @stub_service.private_normalize_type(2147483648, {:type => 'int'})
    assert_kind_of(Integer, result2)
    assert_equal(2147483648, result2, 'bad conversion')
  end

  def test_normalize_type_string
    result1 = @stub_service.private_normalize_type('foobar',
        {:type => 'string'})
    assert_kind_of(String, result1)
    assert_equal('foobar', result1, 'bad conversion')

    result2 = @stub_service.private_normalize_type('', {:type => 'string'})
    assert_kind_of(String, result2)
    assert_equal('', result2, 'bad conversion')
  end

  def test_normalize_type_long
    result1 = @stub_service.private_normalize_type(2147483648,
        {:type => 'long'})
    assert_kind_of(Integer, result1)
    assert_equal(2147483648, result1, 'bad conversion')

    result2 = @stub_service.private_normalize_type(-1, {:type => 'long'})
    assert_kind_of(Integer, result2)
    assert_equal(-1, result2, 'bad conversion')
  end

  def test_normalize_type_boolean
    result1 = @stub_service.private_normalize_type(true, {:type => 'boolean'})
    assert_kind_of(TrueClass, result1)

    result2 = @stub_service.private_normalize_type(false, {:type => 'boolean'})
    assert_kind_of(FalseClass, result2)

    result3 = @stub_service.private_normalize_type('true', {:type => 'boolean'})
    assert_kind_of(TrueClass, result3)

    result4 = @stub_service.private_normalize_type('false',
        {:type => 'boolean'})
    assert_kind_of(FalseClass, result4)

    result5 = @stub_service.private_normalize_type('True',
        {:type => 'boolean'})
    assert_kind_of(TrueClass, result3)

    result6 = @stub_service.private_normalize_type('False',
        {:type => 'boolean'})
    assert_kind_of(FalseClass, result4)
  end

  def test_normalize_type_object
    result1 = @stub_service.private_normalize_type({:a => 'b'},
        {:type => 'StubClass'})
    assert_equal('b', result1[:a], 'object corrupted')

    result2 = @stub_service.private_normalize_type(@stub_service,
        {:type => 'SavonService'})
    assert_equal(@stub_service.hash, result2.hash, 'object corrupted')
  end

  def test_normalize_type_double
    result1 = @stub_service.send(:private_normalize_type, 3.14,
        {:type => 'double'})
    assert_kind_of(Float, result1)
    assert_equal(3.14, result1, 'bad conversion')

    result2 = @stub_service.send(:private_normalize_type, '-3.14',
        {:type => 'double'})
    assert_kind_of(Float, result2)
    assert_equal(-3.14, result2, 'bad conversion')

    result3 = @stub_service.send(:private_normalize_type, '42',
        {:type => 'double'})
    assert_kind_of(Float, result3)
    assert_equal(42.0, result3, 'bad conversion')
  end

  def test_normalize_type_single_array_item
    result1 = @stub_service.private_normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => 1})
    assert_kind_of(Float, result1)
    assert_equal(42.0, result1, 'Float is expected for max_occurs 1')

    result2 = @stub_service.private_normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => :unbounded})
    assert_instance_of(Array, result2)
    assert_equal(42.0, result2[0], 'Array is expected for unbounded max_occurs')

    result3 = @stub_service.private_normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => 2})
    assert_instance_of(Array, result3)
    assert_equal(42.0, result3[0], 'Array is expected for max_occurs > 1')

    result4 = @stub_service.private_normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => nil})
    assert_instance_of(Float, result4)
    assert_equal(42.0, result4, 'Float is expected for nil max_occurs')
  end

  def test_deep_copy_simple
    result1 = @stub_service.private_deep_copy(42)
    assert_equal(42, result1)

    result2 = @stub_service.private_deep_copy('Hello World')
    assert_equal('Hello World', result2)

    result3 = @stub_service.private_deep_copy(nil)
    assert_nil(result3)

    result4 = @stub_service.private_deep_copy([])
    assert_equal([], result4)
    assert_not_same([], result4)

    result5 = @stub_service.private_deep_copy({})
    assert_equal({}, result5)
    assert_not_same({}, result5)
  end

  def test_deep_copy_complex
    data = {:ab => 'ab', :cd => ['cd', 'de', 'ef']}

    result1 = @stub_service.private_deep_copy(data)
    assert_equal(data, result1)
    assert_not_same(data, result1)

    result2 = @stub_service.private_deep_copy(data)
    assert_equal(result2, result1)
    assert_not_same(result2, result1)

    result2[:cd] = nil
    assert_not_equal(data, result2)
    assert_equal(data, result1)
  end

  def test_add_attribute
    node = {}

    key, name, value1, value2, value3 = 'key', 'name', 'Lorem', 'ipsum', 'dolor'

    @stub_service.private_add_attribute(node, key, name, value1)
    assert_kind_of(Hash, node)
    assert_kind_of(Hash, node[:attributes!])
    assert_kind_of(Hash, node[:attributes!][key])
    assert_equal(value1, node[:attributes!][key][name])

    @stub_service.private_add_attribute(node, key, name, value2)
    assert_kind_of(Hash, node)
    assert_kind_of(Hash, node[:attributes!])
    assert_kind_of(Hash, node[:attributes!][key])
    assert_kind_of(Array, node[:attributes!][key][name])
    assert_equal(value1, node[:attributes!][key][name][0])
    assert_equal(value2, node[:attributes!][key][name][1])

    @stub_service.private_add_attribute(node, key, name, value3)
    assert_equal(value1, node[:attributes!][key][name][0])
    assert_equal(value2, node[:attributes!][key][name][1])
    assert_equal(value3, node[:attributes!][key][name][2])
  end
end
