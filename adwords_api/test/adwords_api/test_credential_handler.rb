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

require 'logger'
require 'test/unit'

require 'ads_common/config'
require 'adwords_api/credential_handler'

# Overriding default access levels to public for tests.
module AdwordsApi

  class CredentialHandler
    public :validate_headers_for_server
  end
end


class TestCredentialHandler < Test::Unit::TestCase

  def setup()
    @logger = Logger.new(STDERR)
    config = AdsCommon::Config.new({:library => {:logger => @logger}})
    @handler = AdwordsApi::CredentialHandler.new(config)
  end

  def test_validate_headers_for_server_client_email()
    credentials = {:client_email => 'email@example.com'}
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      @handler.validate_headers_for_server(credentials)
    end
  end

  def test_validate_headers_for_server_client_customer_id()
    credentials = {
      :client_customer_id => '123-456-7890',
      :developer_token => 'AbC'
    }
    assert_nothing_raised {@handler.validate_headers_for_server(credentials)}
  end

  def test_validate_headers_for_server_valid_cid()
    credentials1 = {
      :client_customer_id => '123-456-7890',
      :developer_token => 'AbC'
    }
    assert_nothing_raised {@handler.validate_headers_for_server(credentials1)}

    credentials2 = {
      :client_customer_id => '1234567890',
      :developer_token => 'AbC'
    }
    assert_nothing_raised {@handler.validate_headers_for_server(credentials2)}

    credentials3 = {
      :client_customer_id => 1234567890,
      :developer_token => 'AbC'
    }
    assert_nothing_raised {@handler.validate_headers_for_server(credentials3)}
  end

  def test_validate_headers_for_server_invalid_cid()
    credentials1 = {
      :client_customer_id => 'demo@example.com',
      :developer_token => 'AbC'
    }
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      @handler.validate_headers_for_server(credentials1)
    end

    credentials2 = {
      :client_customer_id => 'demo@example.com 1234567890',
      :developer_token => 'AbC'
    }
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      @handler.validate_headers_for_server(credentials2)
    end

    credentials3 = {
      :client_customer_id => '123-456-7890-',
      :developer_token => 'AbC'
    }
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      @handler.validate_headers_for_server(credentials3)
    end
  end

  def test_validate_headers_for_server_no_developer_token()
    credentials1 = {:client_customer_id => '123-456-7890'}
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      @handler.validate_headers_for_server(credentials1)
    end

    credentials2 = {
      :client_customer_id => '123-456-7890',
      :developer_token => ''
    }
    assert_raise(AdwordsApi::Errors::BadCredentialsError) do
      @handler.validate_headers_for_server(credentials2)
    end
  end
end
