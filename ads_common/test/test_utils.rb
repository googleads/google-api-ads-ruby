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
# Tests the utils.

require 'test/unit'

require 'ads_common/utils'


class TestUtils < Test::Unit::TestCase

  def test_has_lower_camelcase()
    assert('str'.respond_to?(:lower_camelcase))
  end

  def test_lower_camelcase_works()
    data = [
        {:input => 'lowerCamelCase', :output => 'lowerCamelCase'},
        {:input => 'UpperCamelCase', :output => 'upperCamelCase'},
        {:input => 'snake_case', :output => 'snakeCase'},
        {:input => 'single1', :output => 'single1'},
        {:input => 'Single2', :output => 'single2'},
        {:input => '', :output => ''},
        {:input => 'strange_MixOf_all', :output => 'strangeMixOfAll'},
        {:input => 'number_5', :output => 'number5'},
    ]
    data.each do |arg|
      result = arg[:input].lower_camelcase()
      assert_equal(arg[:output], result)
    end
  end

  def test_lower_camelcase_non_destructive()
    str = 'str_snake'
    result = str.lower_camelcase()
    assert_not_same(str, result)
    assert_equal('str_snake', str)
  end
end
