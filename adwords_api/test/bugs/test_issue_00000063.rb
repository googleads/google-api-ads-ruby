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
# Tests issue #63.

require 'nori'
require 'savon'
require 'test/unit'

require 'ads_common/results_extractor'
require 'adwords_api'
require 'adwords_api/v201302/mutate_job_service_registry'

class TestIssue63 < Test::Unit::TestCase
  def setup()
    @registry =
        AdwordsApi::V201302::MutateJobService::MutateJobServiceRegistry
  end

  def run_test(xml_text)
    data = Nori.parse(xml_text)[:envelope][:body]
    extractor = AdsCommon::ResultsExtractor.new(@registry)
    return extractor.extract_result(data, :get_result)
  end

  def test_issue_63_single_mutate_error()
    result = run_test(single_error_xml)
    errors = result[:simple_mutate_result][:errors]
    assert_kind_of(Array, errors)
    assert_equal(1, errors.size)
  end

  def test_issue_63_multiple_mutate_errors()
    result = run_test(multiple_errors_xml)
    errors = result[:simple_mutate_result][:errors]
    assert_kind_of(Array, errors)
    assert_equal(2, errors.size)
  end

  def single_error_xml()
    return <<EOT
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Header>
    <ResponseHeader xmlns="https://adwords.google.com/api/adwords/cm/v201302">
      <requestId>123</requestId>
      <serviceName>MutateJobService</serviceName>
      <methodName>getResult</methodName>
      <operations>1</operations>
      <responseTime>180</responseTime>
      <units>1</units>
    </ResponseHeader>
  </soap:Header>
  <soap:Body>
    <getResultResponse xmlns="https://adwords.google.com/api/adwords/cm/v201302">
      <rval>
        <SimpleMutateResult>
          <results>
            <PlaceHolder/>
          </results>
          <results>
            <PlaceHolder/>
          </results>
          <errors xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="EntityNotFound">
            <fieldPath>operations[0].operand.adGroupId</fieldPath>
            <trigger>AdGroupId: 0</trigger>
            <errorString>EntityNotFound.INVALID_ID</errorString>
            <ApiError.Type>EntityNotFound</ApiError.Type>
            <reason>INVALID_ID</reason>
          </errors>
        </SimpleMutateResult>
      </rval>
    </getResultResponse>
  </soap:Body>
</soap:Envelope>
EOT
  end

  def multiple_errors_xml
    return <<EOT
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Header>
    <ResponseHeader xmlns="https://adwords.google.com/api/adwords/cm/v201302">
      <requestId>123</requestId>
      <serviceName>MutateJobService</serviceName>
      <methodName>getResult</methodName>
      <operations>1</operations>
      <responseTime>180</responseTime>
      <units>1</units>
    </ResponseHeader>
  </soap:Header>
  <soap:Body>
    <getResultResponse xmlns="https://adwords.google.com/api/adwords/cm/v201302">
      <rval>
        <SimpleMutateResult>
          <results>
            <PlaceHolder/>
          </results>
          <results>
            <PlaceHolder/>
          </results>
          <errors xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="EntityNotFound">
            <fieldPath>operations[0].operand.adGroupId</fieldPath>
            <trigger>AdGroupId: 0</trigger>
            <errorString>EntityNotFound.INVALID_ID</errorString>
            <ApiError.Type>EntityNotFound</ApiError.Type>
            <reason>INVALID_ID</reason>
          </errors>
          <errors xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="EntityNotFound">
            <fieldPath>operations[1].operand.adGroupId</fieldPath>
            <trigger>AdGroupId: 0</trigger>
            <errorString>EntityNotFound.INVALID_ID</errorString>
            <ApiError.Type>EntityNotFound</ApiError.Type>
            <reason>INVALID_ID</reason>
          </errors>
        </SimpleMutateResult>
      </rval>
    </getResultResponse>
  </soap:Body>
</soap:Envelope>
EOT
  end
end
