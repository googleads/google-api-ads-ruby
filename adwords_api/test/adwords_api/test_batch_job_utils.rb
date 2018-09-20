#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# Tests batch job utils.

require 'test/unit'

require 'adwords_api'
require 'nokogiri'

# Overriding default access levels to public for tests.
module AdwordsApi
  class BatchJobUtils
    public :extract_soap_operations
    public :generate_soap_operations
    public :add_padding
  end
end

# Get rid of authentication code during the test.
require 'ads_common/savon_headers/oauth_header_handler'
module AdsCommon
  module SavonHeaders
    class OAuthHeaderHandler
      def generate_headers(request, soap)
        super(request, soap)
      end
    end
  end
end

# Stub class for HTTP response.
class ResponseStub
  attr_reader :code
  attr_reader :body
end

VALID_SERVICE_XML = '<?xml version="1.0" encoding="UTF-8"?><env:Envelope xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:wsdl="https://adwords.google.com/api/adwords/cm/v201809" xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"><env:Header><wsdl:RequestHeader xmlns="https://adwords.google.com/api/adwords/cm/v201809"><userAgent>batch job service test (AwApi-Ruby/0.17.0, Common-Ruby/0.11.1, GoogleAdsSavon/1.0.0, ruby/2.2.1, HTTPI/2.4.1, net_http)</userAgent><developerToken>developer_token</developerToken><clientCustomerId>012-345-6789</clientCustomerId></wsdl:RequestHeader></env:Header><env:Body><mutate xmlns="https://adwords.google.com/api/adwords/cm/v201809"><operations xsi:type="CampaignOperation"><operator>SET</operator><operand><id>0</id><status>PAUSED</status></operand></operations></mutate></env:Body></env:Envelope>'
EXPECTED_OPERATION = "<operations xsi:type=\"ns1:CampaignOperation\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n  <operator>SET</operator>\n  <operand>\n    <id>0</id>\n    <status>PAUSED</status>\n  </operand>\n</operations>"

class TestBatchJobUtils < Test::Unit::TestCase

  API_VERSION = :v201809

  # Initialize tests.
  def setup()
    @api = AdwordsApi::Api.new({
      :authentication => {
        :method => 'OAuth2',
        :oauth2_client_id => 'client_id123',
        :oauth2_client_secret => 'client_secret123',
        :developer_token => 'developer_token123',
        :client_customer_id => '012-345-6789',
        :user_agent => 'TestBatchJobUtils'
      },
      :service => {
        :environment => 'PRODUCTION'
      }
    })
    @batch_job_utils = @api.batch_job_utils(API_VERSION)
  end

  # Testing ability to extract operation from XML.
  def test_operation_from_xml()
    extracted = Nokogiri::XML(
        @batch_job_utils.extract_soap_operations(VALID_SERVICE_XML)
    )
    expected = Nokogiri::XML(EXPECTED_OPERATION)
    assert_equal(clean_xml(expected.to_s), clean_xml(extracted.to_s))
  end

  # Testing ability to extract operation from a ruby hash.
  def test_operation_from_hash()
    operation = {
      :xsi_type => 'CampaignOperation',
      :operator => 'SET',
      :operand => {
        :id => 0,
        :status => 'PAUSED'
      }
    }
    extracted = Nokogiri::XML(
        @batch_job_utils.generate_soap_operations([operation]).first
    )
    expected = Nokogiri::XML(EXPECTED_OPERATION)
    assert_equal(clean_xml(expected.to_s), clean_xml(extracted.to_s))
  end

  # Testing padding to make sure that it pads to the right length.
  def test_add_padding()
    length_increment = 256 * 1024
    assert_equal(
        @batch_job_utils.add_padding('abcd').bytesize,
        length_increment)
    assert_equal(
        @batch_job_utils.add_padding(' ' * length_increment).bytesize,
        length_increment)
    assert_equal(
        @batch_job_utils.add_padding(' ' * (length_increment + 1)).bytesize,
        2 * length_increment)
  end

  def clean_xml(xml)
    return xml.gsub(/\n */, '')
  end
end
