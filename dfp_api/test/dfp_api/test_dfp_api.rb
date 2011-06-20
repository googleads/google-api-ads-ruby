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
require 'dfp_api'

class TestDfpApi < Test::Unit::TestCase
  DEFAULT_CONFIG_HASH = {
      :service => {:use_ruby_names => false,
                   :environment => 'sandbox'},
      :authentication => {:method => 'ClientLogin',
                          :email => 'root@example.com'}
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
      config = DfpApi::Api.new(DEFAULT_CONFIG_HASH)
    end
  end

  # Test initializer with filename argument.
  def test_initialize_filename
    assert_nothing_raised do
      config = DfpApi::Api.new(DEFAULT_CONFIG_FILENAME)
    end
  end

  # Test initializer with bad filename argument.
  def test_initialize_filename_not_exists
    assert_raises(Errno::ENOENT) do
      config = DfpApi::Api.new(DEFAULT_FAILURE_FILENAME)
    end
  end
end
