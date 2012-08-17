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
# Tests the AdWords API utils.

require 'test/unit'

require 'adwords_api/utils'

class TestUtils < Test::Unit::TestCase

  def test_operation_index_for_error()
    error1 = {:field_path => 'operations[0].operand.adGroupId'}
    assert_equal(0, AdwordsApi::Utils::operation_index_for_error(error1))

    error2 = {:field_path => 'operations[10].operand.adGroupId'}
    assert_equal(10, AdwordsApi::Utils::operation_index_for_error(error2))

    error3 = {:field_path => 'unknown'}
    assert_equal(nil, AdwordsApi::Utils::operation_index_for_error(error3))
  end

  def test_format_id()
    assert_equal('123-456-7890', AdwordsApi::Utils::format_id(1234567890))
    assert_equal('234-567-8901', AdwordsApi::Utils::format_id('2345678901'))
    assert_equal('345-678-9012', AdwordsApi::Utils::format_id('345-678-9012'))
    assert_equal('456-789-0123',
                 AdwordsApi::Utils::format_id('CID: 456-789-0123'))
    assert_equal('012-345-6789', AdwordsApi::Utils::format_id('0123-4567-89'))
    assert_equal('123', AdwordsApi::Utils::format_id('123'))
    assert_equal('234', AdwordsApi::Utils::format_id(234))
  end
end
