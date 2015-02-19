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

  public :get_service_registry, :get_module

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
end
