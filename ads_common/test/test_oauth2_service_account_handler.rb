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
# Test OAuth2 service account authentication.

require 'tempfile'
require 'test/unit'
require 'ads_common/auth/oauth2_service_account_handler'
require 'ads_common/config'

module AdsCommon
  module Auth
    class OAuth2ServiceAccountHandler
      public :validate_credentials
    end
  end
end

class TestOAuthServiceAccount < Test::Unit::TestCase
  def test_file_extension_check()
    assert_nothing_raised do
      validate_credentials(['test', '.json'])
    end
    assert_raise(AdsCommon::Errors::AuthError) do
      validate_credentials(['test', '.p12'])
    end
    assert_raises(AdsCommon::Errors::AuthError) do
      validate_credentials(['test', '.other'])
    end
  end

  def validate_credentials(filename)
    file = Tempfile.new(filename)
    credentials = {
      :method => 'OAUTH2_SERVICE_ACCOUNT',
      :oauth2_keyfile => file.path,
      :oauth2_issuer => 'issuer',
      :oauth2_secret => 'secret'
    }
    handler = AdsCommon::Auth::OAuth2ServiceAccountHandler.new(
        AdsCommon::Config.new(), 'https://www.googleapis.com/auth/adwords')
    handler.validate_credentials(credentials)
    file.close
    file.unlink
  end
end
