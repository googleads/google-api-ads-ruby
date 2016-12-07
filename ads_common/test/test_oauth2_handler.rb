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
# Test OAuth2 authentication.

require 'time'

require 'ads_common/auth/oauth2_handler'
require 'ads_common/config'
require 'webmock/test_unit'

module AdsCommon
  module Auth
    class OAuth2Handler
      attr_reader :scopes

      def client()
        @client
      end

      # Overrides to ensure @client stores issued_at as a string, to test
      # converting it back.
      def setup_client()
        @client = Signet::OAuth2::Client.new({
          :authorization_uri => 'https://accounts.google.com/o/oauth2/auth',
          :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
          :client_id => 'client_id123',
          :client_secret => 'client_secret123',
          :scope => 'https://www.googleapis.com/auth/adwords'
        })
      end
    end
  end
end

class TestOAuth < Test::Unit::TestCase
  def setup()
    stub_request(:post, 'https://accounts.google.com/o/oauth2/auth').to_return(
        :status => 200,
        :body => '{"access_token":"access_token123",' +
            '"token_type":"Bearer","expires_in":"3600"}\n',
        :headers => {}
    )
  end

  def test_string_issued_at()
    handler = AdsCommon::Auth::OAuth2Handler.new(AdsCommon::Config.new(), nil)

    # Modify @client in the handler to get around a full setup.
    handler.setup_client()
    assert_not_nil(handler.client)
    handler.client.issued_at = Time.now.to_s
    assert_equal(Time, handler.client.issued_at.class)

    # Make sure that we are still able to refresh the token.
    assert_nothing_raised do
      handler.refresh_token!();
    end
  end

  def test_additional_scopes()
    config = AdsCommon::Config.new()
    config.set('authentication.oauth2_extra_scopes', ['extra-scope'])
    handler = AdsCommon::Auth::OAuth2Handler.new(config, 'base-scope')
    scopes = handler.scopes
    assert(scopes.include?('base-scope'), 'Missing base scope.')
    assert(scopes.include?('extra-scope'), 'Missing extra scope.')
  end
end
