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
# Tests the array replies from services.

require 'test/unit'

require 'ads_common/config'
require 'ads_common/savon_service'

# SavonService is abstract, defining a child class for the test.
class StubService < AdsCommon::SavonService

  public :get_service_registry, :get_module, :normalize_type

  def initialize(namespace, endpoint, version)
    @logger = Logger.new(STDERR)
    @config = AdsCommon::Config.new({:library => {:logger => @logger}})
    super(@config, namespace, endpoint, version)
  end
end

class TestSavonService < Test::Unit::TestCase

  TEST_NAMESPACE = 'namespace'
  TEST_ENDPOINT = 'endpoint'
  TEST_VERSION = :vVersion

  # Initialize tests.
  def setup()
    @stub_service = StubService.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
  end

  def test_initialize_abstract()
    assert_raises(NoMethodError) do
      AdsCommon::SavonService.new(nil, TEST_NAMESPACE, TEST_ENDPOINT,
          TEST_VERSION)
    end
    assert_nothing_raised do
      StubService.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
    end
  end

  def test_get_service_registry_abstract()
    assert_raises(NoMethodError) { @stub_service.get_service_registry() }
  end

  def test_get_module_abstract()
    assert_raises(NoMethodError) { @stub_service.get_module() }
  end

  def test_normalize_type_int()
    result1 = @stub_service.normalize_type(5, {:type => 'int'})
    assert_kind_of(Integer, result1)
    assert_equal(5, result1, 'bad conversion')

    result2 = @stub_service.normalize_type(2147483648, {:type => 'int'})
    assert_kind_of(Integer, result2)
    assert_equal(2147483648, result2, 'bad conversion')
  end

  def test_normalize_type_string()
    result1 = @stub_service.normalize_type('foobar',
        {:type => 'string'})
    assert_kind_of(String, result1)
    assert_equal('foobar', result1, 'bad conversion')

    result2 = @stub_service.normalize_type('', {:type => 'string'})
    assert_kind_of(String, result2)
    assert_equal('', result2, 'bad conversion')
  end

  def test_normalize_type_long()
    result1 = @stub_service.normalize_type(2147483648,
        {:type => 'long'})
    assert_kind_of(Integer, result1)
    assert_equal(2147483648, result1, 'bad conversion')

    result2 = @stub_service.normalize_type(-1, {:type => 'long'})
    assert_kind_of(Integer, result2)
    assert_equal(-1, result2, 'bad conversion')
  end

  def test_normalize_type_boolean()
    result1 = @stub_service.normalize_type(true, {:type => 'boolean'})
    assert_kind_of(TrueClass, result1)

    result2 = @stub_service.normalize_type(false, {:type => 'boolean'})
    assert_kind_of(FalseClass, result2)

    result3 = @stub_service.normalize_type('true', {:type => 'boolean'})
    assert_kind_of(TrueClass, result3)

    result4 = @stub_service.normalize_type('false',
        {:type => 'boolean'})
    assert_kind_of(FalseClass, result4)

    result5 = @stub_service.normalize_type('True',
        {:type => 'boolean'})
    assert_kind_of(TrueClass, result3)

    result6 = @stub_service.normalize_type('False',
        {:type => 'boolean'})
    assert_kind_of(FalseClass, result4)
  end

  def test_normalize_type_object()
    result1 = @stub_service.normalize_type({:a => 'b'},
        {:type => 'StubClass'})
    assert_equal('b', result1[:a], 'object corrupted')

    result2 = @stub_service.normalize_type(@stub_service,
        {:type => 'SavonService'})
    assert_equal(@stub_service.hash, result2.hash, 'object corrupted')
  end

  def test_normalize_type_double()
    result1 = @stub_service.normalize_type(3.14, {:type => 'double'})
    assert_kind_of(Float, result1)
    assert_equal(3.14, result1, 'bad conversion')

    result2 = @stub_service.normalize_type('-3.14', {:type => 'double'})
    assert_kind_of(Float, result2)
    assert_equal(-3.14, result2, 'bad conversion')

    result3 = @stub_service.normalize_type('42', {:type => 'double'})
    assert_kind_of(Float, result3)
    assert_equal(42.0, result3, 'bad conversion')
  end

  def test_normalize_type_single_array_item()
    result1 = @stub_service.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => 1})
    assert_kind_of(Float, result1)
    assert_equal(42.0, result1, 'Float is expected for max_occurs 1')

    result2 = @stub_service.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => :unbounded})
    assert_instance_of(Array, result2)
    assert_equal(42.0, result2[0], 'Array is expected for unbounded max_occurs')

    result3 = @stub_service.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => 2})
    assert_instance_of(Array, result3)
    assert_equal(42.0, result3[0], 'Array is expected for max_occurs > 1')

    result4 = @stub_service.normalize_type('42',
        {:type => 'double', :min_occurs => '0', :max_occurs => nil})
    assert_instance_of(Float, result4)
    assert_equal(42.0, result4, 'Float is expected for nil max_occurs')
  end
end
