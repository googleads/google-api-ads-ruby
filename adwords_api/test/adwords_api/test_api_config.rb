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

require 'rubygems'
require 'test/unit'
require 'adwords_api'

class TestApiConfig < Test::Unit::TestCase
  # Initialize tests.
  def setup
    @config = AdwordsApi::ApiConfig
  end

  # Test correct require path.
  def test_do_require
    name1 = @config.do_require(:v201109, :InfoService)
    assert_equal('adwords_api/v201109/info_service', name1)
    name2 = @config.do_require(:v13, :AccountService)
    assert_equal('adwords_api/v13/account_service', name2)
  end

  # Test correct module name.
  def test_module_name
    name1 = @config.module_name(:v201109, :InfoService)
    assert_equal('AdwordsApi::V201109::InfoService', name1)
    name2 = @config.module_name(:v13, :AccountService)
    assert_equal('AdwordsApi::V13::AccountService', name2)
  end

  # Test correct interface name.
  def test_interface_name
    name1 = @config.interface_name(:v201109, :InfoService)
    assert_equal('AdwordsApi::V201109::InfoService::InfoService', name1)
    name2 = @config.interface_name(:v13, :AccountService)
    assert_equal('AdwordsApi::V13::AccountService::AccountService', name2)
  end
end
