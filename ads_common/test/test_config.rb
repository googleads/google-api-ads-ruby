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

class TestConfig < Test::Unit::TestCase
  DEFAULT_CONFIG_HASH = {
      :service => {:use_ruby_names => false,
                   :environment => 'sandbox'},
      :authentication => {:method => 'ClientLogin',
                          :email => 'root@example.com'}
  }

  DEFAULT_CONFIG_FILENAME = 'test/test_config.yml'

  # Test initializer with no arguments.
  def test_initialize_nil
    assert_nothing_raised do
      config = AdsCommon::Config.new
      assert_nil(config.read('service.use_ruby_names'))
    end
  end

  # Test initializer with hash argument.
  def test_initialize_hash
    config = AdsCommon::Config.new(DEFAULT_CONFIG_HASH)
    assert_equal(false, config.read('service.use_ruby_names'))
    assert_equal('sandbox', config.read('service.environment'))
    assert_equal('ClientLogin', config.read('authentication.method'))
    assert_equal('root@example.com', config.read('authentication.email'))
    assert_nil(config.read('unexisting.entry'))
  end

  # Test initializer with filename argument.
  def test_initialize_filename
    config = AdsCommon::Config.new(DEFAULT_CONFIG_FILENAME)
    assert_equal(false, config.read('service.use_ruby_names'))
    assert_equal('sandbox', config.read('service.environment'))
    assert_equal('ClientLogin', config.read('authentication.method'))
    assert_equal('root@example.com', config.read('authentication.email'))
    assert_nil(config.read('unexisting.entry'))
  end

  # Test default result.
  def test_read_default_result
    config = AdsCommon::Config.new(DEFAULT_CONFIG_HASH)
    assert_nil(config.read('unexisting.entry'))
    assert_equal('default', config.read('unexisting.entry', 'default'))
    assert_equal('sandbox', config.read('service.environment', 'production'))
  end

  # Test setter.
  def test_set
    config = AdsCommon::Config.new(DEFAULT_CONFIG_HASH)
    assert_equal('sandbox', config.read('service.environment'))
    assert_nil(config.read('unexisting.entry'))
    config.set('unexisting.entry', 'foobar')
    assert_equal('sandbox', config.read('service.environment'))
    assert_equal('foobar', config.read('unexisting.entry'))
  end

  # Test subhash.
  def test_set
    config = AdsCommon::Config.new(DEFAULT_CONFIG_HASH)
    result = config.read('service')
    assert_instance_of(Hash, result)
    assert_equal('sandbox', result[:environment])
    assert_equal(false, result[:use_ruby_names])
  end
end
