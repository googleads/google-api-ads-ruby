#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# Tests the Ad Manager utils.

require 'test/unit'
require 'ad_manager_api/utils'
require 'thread'


class TestUtils < Test::Unit::TestCase
  @@lock = Mutex.new

  def test_utility_registry()
    util_registry = AdManagerApi::Utils::UtilityRegistry.instance
    @@lock.synchronize do
      util_registry.extract!  # clear any previously recorded utilities
      assert_equal(0, util_registry.length)
      util_registry.add('item1')
      assert_equal(1, util_registry.length)
      util_registry.add('item2')
      assert_equal(2, util_registry.length)
      assert_equal(Set.new(['item1', 'item2']), util_registry.extract!)
      assert_equal(0, util_registry.length)
    end
  end

  def test_utility_registry_disabled()
    util_registry = AdManagerApi::Utils::UtilityRegistry.instance
    @@lock.synchronize do
      util_registry.extract!  # clear any previously recorded utilities
      util_registry.enabled = false
      assert_equal(0, util_registry.length)
      util_registry.add('item1')
      assert_equal(0, util_registry.length)
      util_registry.enabled = true  # re-enable to restore default state
    end
  end
end
