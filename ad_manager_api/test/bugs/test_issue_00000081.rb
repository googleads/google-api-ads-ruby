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
# Tests issue #81.

require 'nori'
require 'ads_savon'
require 'test/unit'

require 'ads_common/savon_service'
require 'ad_manager_api/v201902/line_item_service'

# SavonService is abstract, defining a child class for the test.
class StubService81 < AdsCommon::SavonService

  public :get_module

  def initialize(namespace, endpoint, version)
    @logger = Logger.new(STDERR)
    @config = AdsCommon::Config.new({:library => {:logger => @logger}})
    super(@config, namespace, endpoint, version)
  end

  def get_module()
    return AdManagerApi::V201902::LineItemService
  end
end


class TestAdManagerIssue81 < Test::Unit::TestCase

  TEST_NAMESPACE = 'https://ads.google.com/apis/ads/publisher/'
  TEST_ENDPOINT = (
      'https://ads.google.com/apis/ads/publisher/v201902/LineItemService?wsdl')
  TEST_VERSION = :v201902

  def setup()
    @stub_service =
        StubService81.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
    nori_options = {
      :strip_namespaces      => true,
      :convert_tags_to       => lambda { |tag| tag.snakecase.to_sym },
      :advanced_typecasting  => false
    }
    @nori = Nori.new(nori_options)
  end

  def test_issue_81()
    data = @nori.parse(get_xml_text())[:envelope][:body]
    savon_service =
        StubService81.new(TEST_NAMESPACE, TEST_ENDPOINT, TEST_VERSION)
    assert_instance_of(AdManagerApi::V201902::LineItemService::ApiException,
        savon_service.send(:exception_for_soap_fault, data))
  end

  def get_xml_text()
    return <<EOT
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Header>
    <ResponseHeader xmlns="https://www.google.com/apis/ads/publisher/v201902">
      <requestId>abc123</requestId>
      <responseTime>658</responseTime>
    </ResponseHeader>
  </soap:Header>
  <soap:Body>
    <soap:Fault>
      <faultcode>soap:Server</faultcode>
      <faultstring>
        [PublisherQueryLanguageContextError.UNEXECUTABLE @ Unknown column: 'blah']
      </faultstring>
      <detail>
        <ApiExceptionFault
         xmlns="https://www.google.com/apis/ads/publisher/v201902">
          <message>
            [PublisherQueryLanguageContextError.UNEXECUTABLE
             @ Unknown column: 'blah']
          </message>
          <errors xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:type="PublisherQueryLanguageContextError">
            <fieldPath>Unknown column: 'blah'</fieldPath>
            <trigger></trigger>
            <errorString>
              PublisherQueryLanguageContextError.UNEXECUTABLE
            </errorString>
            <reason>UNEXECUTABLE</reason>
          </errors>
        </ApiExceptionFault>
      </detail>
    </soap:Fault>
  </soap:Body>
</soap:Envelope>
EOT
  end
end
