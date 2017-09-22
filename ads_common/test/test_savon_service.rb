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
# Tests the array replies from services.

require 'test/unit'
require 'logger'

require 'ads_common/config'
require 'ads_common/savon_service'

# SavonService is abstract, defining a child class for the test.
class StubService < AdsCommon::SavonService

  public :get_service_registry, :get_module
  public :format_headers, :sanitize_request, :format_fault
  public :should_log_summary, :should_log_payloads

  def initialize(namespace, endpoint, version)
    @logger = Logger.new(STDERR)
    @config = AdsCommon::Config.new({:library => {:logger => @logger}})
    super(@config, namespace, endpoint, version)
  end
end


class TestSavonService < Test::Unit::TestCase

  TEST_NAMESPACE = 'namespace'
  TEST_ENDPOINT = 'endpoint'
  TEST_VERSION = :vVersion

  # Initialize tests.
  def setup()
    @stub_service = StubService.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
  end

  def test_initialize_abstract()
    assert_raises(NoMethodError) do
      AdsCommon::SavonService.new(nil, TEST_NAMESPACE, TEST_ENDPOINT,
          TEST_VERSION)
    end
    assert_nothing_raised do
      StubService.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
    end
  end

  def test_get_service_registry_abstract()
    assert_raises(NoMethodError) { @stub_service.get_service_registry() }
  end

  def test_get_module_abstract()
    assert_raises(NoMethodError) { @stub_service.get_module() }
  end

  def test_format_headers()
    test1 = {
      'header1' => 'value1',
      'header2' => 'value2'
    }
    expected1 = "header1: value1, header2: value2"
    test2 = {
      'Authorization' => 'Bearer ABCD',
      'header3' => 'value3'
    }
    expected2 = "Authorization: REDACTED, header3: value3"
    assert_equal(expected1, @stub_service.format_headers(test1))
    assert_equal(expected2, @stub_service.format_headers(test2))
  end

  def test_sanitize_request()
    test1 = "<some_xml><developerToken>ab1cdEF2GH-IJ3KL_mn4OP" +
        "</developerToken></some_xml>"
    expected1 = "<some_xml><developerToken>REDACTED</developerToken></some_xml>"
    assert_equal(expected1, @stub_service.sanitize_request(test1))

    test2 = "<xml><element1></element1><element2></element2></xml>"
    assert_equal(test2, @stub_service.sanitize_request(test2))

    test3 = "<xml><ns1:developerToken>w-x_Y-Z_</ns1:developerToken></xml>"
    expected3 = "<xml><ns1:developerToken>REDACTED</ns1:developerToken></xml>"
    assert_equal(expected3, @stub_service.sanitize_request(test3))

    test4 = "<xml><httpAuthorizationHeader>Authorization: Bearer " +
        "1/abcdEFGH1234</httpAuthorizationHeader></xml>"
    expected4 = "<xml><httpAuthorizationHeader>REDACTED" +
        "</httpAuthorizationHeader></xml>"
    assert_equal(expected4, @stub_service.sanitize_request(test4))

    test5 = "<some_xml><developerToken>ab1cdEF2GH-IJ3KL_mn4OP" +
        "</developerToken>"
    test5 += "<operation>something</operation>" * 1024 + "</some_xml>"
    expected5 = "<some_xml><developerToken>REDACTED</developerToken>"
    expected5 += "<operation>something</operation>" * 1024 + "</some_xml>"
    assert_equal(expected5, @stub_service.sanitize_request(test5))

    src6 = "<OAuthInfo><httpAuthorizationHeader>abc21.deffoobar" +
      "</httpAuthorizationHeader></OAuthInfo>\n"
    dst6 = "<OAuthInfo><httpAuthorizationHeader>REDACTED" +
      "</httpAuthorizationHeader></OAuthInfo>\n"
    test6 = "<some_xml><developerToken>ab1cdEF2GH-IJ3KL_mn4OP" +
        "</developerToken>" + src6 * 128 + "</some_xml>"
    expected6 = "<some_xml><developerToken>REDACTED</developerToken>" +
        dst6 * 128 + "</some_xml>"
    assert_equal(expected6, @stub_service.sanitize_request(test6))
  end

  def test_format_fault()
    test1 = "fault\nwith\nnewlines\nand\nunicode\n\u2713\n"+
        "\u3084\u3063\u305F".encode('utf-8')
    expected1 = "fault with newlines and unicode \u2713 \u3084\u3063\u305F"
    test2 = "This needs to be more than 16000 characters......." * 1000
    expected2 = "This needs to be more than 16000 characters......." * 320
    assert(test2.length > AdsCommon::SavonService::MAX_FAULT_LOG_LENGTH)
    assert(expected2.length == AdsCommon::SavonService::MAX_FAULT_LOG_LENGTH)
    assert_equal(expected1, @stub_service.format_fault(test1))
    assert_equal(expected2, @stub_service.format_fault(test2))
  end

  def test_log_levels()
    assert_equal(true, @stub_service.should_log_payloads(Logger::DEBUG, true))
    assert_equal(true, @stub_service.should_log_payloads(Logger::DEBUG, false))
    assert_equal(true, @stub_service.should_log_payloads(Logger::INFO, true))
    assert_equal(false, @stub_service.should_log_payloads(Logger::INFO, false))
    assert_equal(false, @stub_service.should_log_payloads(Logger::WARN, true))
    assert_equal(false, @stub_service.should_log_payloads(Logger::WARN, false))

    assert_equal(true, @stub_service.should_log_summary(Logger::INFO, true))
    assert_equal(true, @stub_service.should_log_summary(Logger::INFO, false))
    assert_equal(true, @stub_service.should_log_summary(Logger::WARN, true))
    assert_equal(false, @stub_service.should_log_summary(Logger::WARN, false))
    assert_equal(false, @stub_service.should_log_summary(Logger::ERROR, true))
    assert_equal(false, @stub_service.should_log_summary(Logger::ERROR, false))
  end
end
