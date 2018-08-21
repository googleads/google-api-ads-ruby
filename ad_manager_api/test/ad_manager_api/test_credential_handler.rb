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
# Tests the Ad Manager credential handler.

require 'logger'
require 'test/unit'

require 'ads_common/config'
require 'ad_manager_api/credential_handler'

# Overriding default access levels to public for tests.
module AdManagerApi

  class CredentialHandler
    public :validate_headers_for_server
  end
end


class TestCredentialHandler < Test::Unit::TestCase

  def setup()
    @logger = Logger.new(STDERR)
    config = AdsCommon::Config.new({:library => {:logger => @logger}})
    @handler = AdManagerApi::CredentialHandler.new(config)
  end

  def test_validate_headers_for_bad_application_name()
    credentials1 = {:application_name => 'INSERT_APPLICATION_NAME_HERE'}
    assert_raise(AdsCommon::Errors::AuthError) do
      @handler.validate_headers_for_server(credentials1)
    end

    credentials2 = {:application_name => 'dfp_ruby_examplesEXTRATEXT'}
    assert_raise(AdsCommon::Errors::AuthError) do
      @handler.validate_headers_for_server(credentials2)
    end

    credentials3 = {:application_name => 'something awesome '}
    assert_nothing_raised do
      @handler.validate_headers_for_server(credentials3)
    end
    assert_equal(credentials3[:application_name], 'something awesome ')
  end

end
