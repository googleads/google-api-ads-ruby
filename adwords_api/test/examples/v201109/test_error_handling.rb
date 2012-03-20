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
# Tests the error handling examples.

require 'test/unit'

require 'error_handling/handle_captcha_challenge'
require 'error_handling/handle_partial_failures'
require 'error_handling/handle_policy_violation_error'
require 'error_handling/handle_two_factor_authorization_error'

MAX_RETRIES = 50

class TestErrorHandlingV201109 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201109.new(@adwords)
  end

  # This test is disabled as it requires user input.
  def disabled_test_handle_captcha_challenge
    handle_captcha_challenge()
  end

  def test_handle_partial_failures
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    handle_partial_failures(ad_group[:id])
  end

  def test_handle_policy_violation_error
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    handle_policy_violation_error(ad_group[:id])
  end

  def test_handle_two_factor_authorization_error
    handle_two_factor_authorization_error()
  end
end
