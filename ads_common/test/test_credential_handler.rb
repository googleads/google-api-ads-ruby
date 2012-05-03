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
end
