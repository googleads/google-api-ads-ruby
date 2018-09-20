#!/usr/bin/env ruby
# Encoding: utf-8
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
# Tests the AdWords API class features.

require 'test/unit'

require 'ads_common/config'
require 'ads_common/api_config'
require 'adwords_api'


class LoggerStub
  attr_reader :last_warning
  def warn(message)
    @last_warning = message
  end
end

class TestAdwordsApi < Test::Unit::TestCase

  API_VERSION = :v201809

  def setup()
    @logger = LoggerStub.new
  end

  def test_initialize()
    assert_nothing_raised do
      adwords_api = AdwordsApi::Api.new({})
    end
  end

  def test_api_config()
    assert_nothing_raised do
      adwords_api = AdwordsApi::Api.new({})
      api_config = adwords_api.api_config()
      assert_not_nil(api_config)
      assert_kind_of(AdsCommon::ApiConfig, api_config)
    end
  end

  def test_validate_only()
    adwords_api = AdwordsApi::Api.new({})
    adwords_api.validate_only = false
    assert(!adwords_api.validate_only)
    adwords_api.validate_only do
      assert(adwords_api.validate_only)
    end
  end

  def test_partial_failure()
    adwords_api = AdwordsApi::Api.new({})
    adwords_api.partial_failure = false
    assert(!adwords_api.partial_failure)
    adwords_api.partial_failure do
      assert(adwords_api.partial_failure)
    end
  end

  def test_service()
    adwords_api = AdwordsApi::Api.new({
      :library => {:logger => @logger}
    })
    service = adwords_api.service(:ManagedCustomerService, API_VERSION)
  end
end
