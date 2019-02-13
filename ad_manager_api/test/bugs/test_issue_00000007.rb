#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# Tests issue #7.

require 'nori'
require 'ads_savon'
require 'test/unit'

require 'ads_common/config'
require 'ads_common/savon_service'
require 'ads_savon/soap/response'
require 'ad_manager_api/v201902/line_item_service'

class HeaderHandler
  def prepare_request(http, soap)
  end
end

# SavonService is abstract, defining a child class for the test.
class StubService7 < AdsCommon::SavonService

  public :get_module

  def initialize(namespace, endpoint, version)
    logger = Logger.new(STDERR)
    @config = AdsCommon::Config.new({:library => {:logger => logger}})
    super(@config, namespace, endpoint, version)
    @header_handler = HeaderHandler.new
  end

  def get_module()
    return AdManagerApi::V201902::LineItemService
  end

  def get_service_registry()
    return AdManagerApi::V201902::LineItemService::LineItemServiceRegistry
  end
end

class StubConfig
  attr_reader :raise_errors
end

class TestAdManagerIssue7 < Test::Unit::TestCase

  TEST_NAMESPACE = 'https://ads.google.com/apis/ads/publisher/'
  TEST_ENDPOINT =
      'https://ads.google.com/apis/ads/publisher/v201902/LineItemService?wsdl'
  TEST_VERSION = :v201902

  def test_issue_7_request()
    args = {:line_items => [
        {:order_id => 42, :id => 82, :web_property_code => ''}
    ]}
    want = '<webPropertyCode></webPropertyCode>'

    savon_service =
        StubService7.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
    result = savon_service.send(
        :handle_soap_request, :update_line_items, true, args, nil)

    assert(result.include?(want),
        "Expected '%s' but not found in:\n%s" % [want, result])
  end

  def test_issue_7_response()
    args = get_xml_response_text()

    response = GoogleAdsSavon::SOAP::Response.new(StubConfig.new, nil)
    nori = response.send(:nori)

    result = nori.parse(args)
    line_item =
        result[:body][:get_line_items_by_statement_response][:rval][:results]

    assert_equal('', line_item[:web_property_code])
  end

  def get_xml_response_text()
    return <<EOT
  <soap:Body>
    <getLineItemsByStatementResponse xmlns="https://www.google.com/apis/ads/publisher/v201902">
      <rval>
        <totalResultSetSize>1</totalResultSetSize>
        <startIndex>0</startIndex>
        <results>
          <orderId>41</orderId>
          <id>42</id>
          <name>name42</name>
          <webPropertyCode></webPropertyCode>
        </results>
      </rval>
    </getLineItemsByStatementResponse>
  </soap:Body>
EOT
  end
end
