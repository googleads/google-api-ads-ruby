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
# Tests credential handler.

require 'test/unit'

require 'adwords_api'

# Overriding default access levels to public for tests.
module AdwordsApi
  class CredentialHandler
    public :validate_headers_for_server
  end
end

class TestCredentialHandler < Test::Unit::TestCase
  def test_validate_headers_for_server_client_email
    config = AdsCommon::Config.new(
        {:authentication => {:client_email => 'email@example.com'}})
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_nothing_raised do
      handler.validate_headers_for_server(:v201101)
    end
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      handler.validate_headers_for_server(:v201109)
    end
  end

  def test_validate_headers_for_server_client_customer_id
    config = AdsCommon::Config.new(
        {:authentication => {:client_customer_id => '123-456-7890'}})
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_nothing_raised do
      handler.validate_headers_for_server(:v201101)
      handler.validate_headers_for_server(:v201109)
    end
  end

  def test_validate_headers_for_server_valid_cid
    config = AdsCommon::Config.new(
        {:authentication => {:client_customer_id => '123-456-7890'}})
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_nothing_raised do
      handler.validate_headers_for_server(:v201109)
    end

    config = AdsCommon::Config.new(
        {:authentication => {:client_customer_id => '1234567890'}})
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_nothing_raised do
      handler.validate_headers_for_server(:v201109)
    end

    config = AdsCommon::Config.new(
        {:authentication => {:client_customer_id => 1234567890}})
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_nothing_raised do
      handler.validate_headers_for_server(:v201109)
    end
  end

  def test_validate_headers_for_server_invalid_cid
    config = AdsCommon::Config.new(
        {:authentication => {:client_customer_id => 'demo@example.com'}})
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      handler.validate_headers_for_server(:v201109)
    end

    config = AdsCommon::Config.new({
        :authentication => {
          :client_customer_id => 'demo@example.com 1234567890'
        }
    })
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      handler.validate_headers_for_server(:v201109)
    end

    config = AdsCommon::Config.new(
        {:authentication => {:client_customer_id => '123-456-7890-'}})
    handler = AdwordsApi::CredentialHandler.new(config)
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      handler.validate_headers_for_server(:v201109)
    end
  end
end
