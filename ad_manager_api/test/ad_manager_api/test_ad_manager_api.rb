#!/usr/bin/env ruby
# Encoding: utf-8
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
require 'tempfile'

require 'ad_manager_api'

module AdManagerApi
  module ApiConfig
    def self.default_config_filename=(value)
      @default_config_filename = value
    end

    def self.default_config_filename
      @default_config_filename
    end
  end
end

class TestAdManagerApi < Test::Unit::TestCase
  DEFAULT_CONFIG_HASH = {
      :authentication => {
          :method => 'OAuth2',
          :oauth2_client_id => 'myClientId',
          :oauth2_client_secret => 'This is MY secret!',
          :oauth2_token => 'my access token',
          :application_name => 'ruby_test_suite',
          :network_code => 1234567
      }
  }

  DEFAULT_CONFIG_FILENAME = File.expand_path('../test_config.yml', __FILE__)
  DEFAULT_FAILURE_FILENAME = 'test_notexists.yml'

  # Test initializer with no arguments.
  def test_initialize_nil()
    # Set up a tempfile in ENV['HOME']
    temp_file = Tempfile.new(['ad_manager_api', 'yml'], ENV['HOME'])
    real_file = File.open(DEFAULT_CONFIG_FILENAME, 'r')
    temp_file.write(real_file.read)
    temp_file.flush()
    real_file.close()
    AdManagerApi::ApiConfig.default_config_filename =
        File.basename(temp_file.path)

    assert_nothing_raised do
      ad_manager_api = AdManagerApi::Api.new
    end

    temp_file.unlink()
  end

  # Test initializer with hash argument.
  def test_initialize_hash()
    assert_nothing_raised do
      ad_manager_api = AdManagerApi::Api.new(DEFAULT_CONFIG_HASH)
      check_config_data(ad_manager_api.config)
    end
  end

  # Test initializer with filename argument.
  def test_initialize_filename()
    assert_nothing_raised do
      ad_manager_api = AdManagerApi::Api.new(DEFAULT_CONFIG_FILENAME)
      check_config_data(ad_manager_api.config)
    end
  end

  # Test initializer with bad filename argument.
  def test_initialize_filename_not_exists()
    assert_raises(Errno::ENOENT) do
      ad_manager_api = AdManagerApi::Api.new(DEFAULT_FAILURE_FILENAME)
    end
  end

  # Utility method to check the actual data.
  def check_config_data(config)
    assert_equal(:OAUTH2, config.read('authentication.method'))
    assert_equal('ruby_test_suite',
        config.read('authentication.application_name'))
    assert_equal('myClientId', config.read('authentication.oauth2_client_id'))
    assert_equal('This is MY secret!', config.read(
        'authentication.oauth2_client_secret'))
    assert_equal('my access token', config.read('authentication.oauth2_token'))
    assert_equal(1234567, config.read('authentication.network_code'))
    assert_nil(config.read('item.not.exists'))
    assert_equal(:default, config.read('item.not.exists', :default))
  end
end
