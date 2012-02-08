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
# Tests the general API features.

require 'test/unit'
require 'dfp_api'

class TestDfpApi < Test::Unit::TestCase
  DEFAULT_CONFIG_HASH = {
      :service => {
          :environment => 'sandbox'
      },
      :authentication => {
          :method => 'ClientLogin',
          :email => 'root@example.com',
          :password => 'mySecretPassword',
          :application_name => 'ruby_test_suit',
          :network_code => 1234567
      }
  }

  DEFAULT_CONFIG_FILENAME = File.expand_path('../test_config.yml', __FILE__)
  DEFAULT_FAILURE_FILENAME = 'test_notexists.yml'

  # Test initializer with no arguments.
  def test_initialize_nil
    assert_nothing_raised do
      dfp_api = DfpApi::Api.new
    end
  end

  # Test initializer with hash argument.
  def test_initialize_hash
    assert_nothing_raised do
      dfp_api = DfpApi::Api.new(DEFAULT_CONFIG_HASH)
      check_config_data(dfp_api.config)
    end
  end

  # Test initializer with filename argument.
  def test_initialize_filename
    assert_nothing_raised do
      dfp_api = DfpApi::Api.new(DEFAULT_CONFIG_FILENAME)
      check_config_data(dfp_api.config)
    end
  end

  # Test initializer with bad filename argument.
  def test_initialize_filename_not_exists
    assert_raises(Errno::ENOENT) do
      dfp_api = DfpApi::Api.new(DEFAULT_FAILURE_FILENAME)
      check_config_data(dfp_api.config)
    end
  end

  # Utility method to check the actual data.
  def check_config_data(config)
    assert_equal(:CLIENTLOGIN, config.read('authentication.method'))
    assert_equal('ruby_test_suit',
        config.read('authentication.application_name'))
    assert_equal('mySecretPassword', config.read('authentication.password'))
    assert_equal('root@example.com', config.read('authentication.email'))
    assert_equal(1234567, config.read('authentication.network_code'))
    assert_equal(:SANDBOX, config.read('service.environment'))
    assert_nil(config.read('item.not.exists'))
    assert_equal(:default, config.read('item.not.exists', :default))
  end
end
