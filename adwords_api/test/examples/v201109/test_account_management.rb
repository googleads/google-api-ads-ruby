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
# Tests the account managements examples.

require 'test/unit'

require 'account_management/create_account'
require 'account_management/get_account_alerts'
require 'account_management/get_account_changes'
require 'account_management/get_account_hierarchy'
require 'account_management/get_client_customer_id'
require 'account_management/get_client_unit_usage'

class TestAccountManagementV201109 < Test::Unit::TestCase
  def setup
  end

  # This test is disabled to avoid creating too many accounts.
  def disabled_test_create_account
    create_account()
  end

  def test_get_account_alerts
    get_account_alerts()
  end

  def test_get_account_changes
    get_account_changes()
  end

  def test_get_account_hierarchy
    get_account_hierarchy()
  end

  def test_get_client_customer_id
    get_client_customer_id('user@example.com')
  end

  def test_get_client_unit_usage
    get_client_unit_usage(1234567890)
  end
end
