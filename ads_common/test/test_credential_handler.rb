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
# Tests credential handler methods.

require 'logger'
require 'minitest/mock'
require 'test/unit'

require 'ads_common/config'
require 'ads_common/credential_handler'

class TestCredentialHandler < Test::Unit::TestCase

  def setup()
    logger = Logger.new(STDERR)
    @default_credentials = {:client_customer_id => '1234567890', :foo => 'bar'}
    config = AdsCommon::Config.new({
        :library => {:logger => logger},
        :authentication => @default_credentials
    })
    @handler = AdsCommon::CredentialHandler.new(config)
  end

  def test_credentials_simple()
    credentials = @handler.credentials()
    assert_equal(@default_credentials, credentials)
    assert_not_same(@default_credentials, credentials)
  end

  def test_credentials_override()
    @override = {:client_customer_id => 42}
    credentials = @handler.credentials(@override)
    assert_not_equal(@default_credentials, credentials)
    assert_not_same(@default_credentials, credentials)
    assert_equal(42, credentials[:client_customer_id])
    assert_equal('bar', credentials[:foo])
  end

  def test_generate_user_agent_simple()
    result1 = @handler.generate_user_agent()
    assert_kind_of(String, result1)
  end

  def test_generate_user_agent_chained()
    test_str = 'Tester/0.2.0'
    result1 = @handler.generate_user_agent([test_str])
    assert_kind_of(String, result1)
    assert_match(/#{Regexp.escape(test_str)}/, result1)
  end

  def test_auth_handler_callback_once()
    mock = MiniTest::Mock.new()
    mock.expect(:property_changed,  nil, [:foo, 'bar'])
    @handler.set_auth_handler(mock)
    @handler.set_credential(:foo, 'bar')
    assert(mock.verify)
  end

  def test_auth_handler_callback_compare()
    credentials = @handler.credentials

    credentials[:foo] = 'bar'
    credentials[:baz] = 42
    mock1 = MiniTest::Mock.new()
    mock1.expect(:property_changed, nil, [:baz, 42])
    @handler.set_auth_handler(mock1)
    @handler.credentials = credentials
    assert(mock1.verify)

    credentials.delete(:baz)
    mock2 = MiniTest::Mock.new()
    mock2.expect(:property_changed, nil, [:baz, nil])
    @handler.set_auth_handler(mock2)
    @handler.credentials = credentials
    assert(mock2.verify)

    credentials[:foo] = nil
    mock3 = MiniTest::Mock.new()
    mock3.expect(:property_changed, nil, [:foo, nil])
    mock3.expect(:property_changed, nil, [:baz, nil])
    @handler.set_auth_handler(mock3)
    @handler.credentials = credentials
    assert(mock3.verify)
  end
end
