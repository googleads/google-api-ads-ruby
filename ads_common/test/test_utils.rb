#!/usr/bin/env ruby
# Encoding: utf-8
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

require 'tempfile'
require 'test/unit'
require 'yaml'

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

  def test_hash_keys_to_str()
    data = {:a => 'aa', :b5 => 43, 'xyz' => :abc}
    result = AdsCommon::Utils.hash_keys_to_str(data)
    assert_equal('aa', result['a'])
    assert_equal(43, result['b5'])
    assert_equal(:abc, result['xyz'])
    assert_equal(3, result.size)
    assert_not_same(result, data)
  end

  def test_hash_keys_to_sym()
    data = {:a => 'aa', :b5 => 43, 'xyz' => :abc, 'f5' => :xyz}
    result = AdsCommon::Utils.hash_keys_to_sym(data)
    assert_equal('aa', result[:a])
    assert_equal(43, result[:b5])
    assert_equal(:abc, result[:xyz])
    assert_equal(:xyz, result[:f5])
    assert_equal(4, result.size)
    assert_not_same(result, data)
  end

  def test_save_oauth2_token()
    config_stub = {:authentication => {:method => 'OAuth2'}}
    token = {:token_key => 'token_value', :token_number => 42}
    expected_result = {
      :authentication => {
        :method => 'OAuth2',
        :oauth2_token => token.dup
      }
    }
    tmp_file = Tempfile.new('ruby-tests')
    tmp_file.write(YAML::dump(config_stub))
    filename = tmp_file.path()
    tmp_file.close()
    AdsCommon::Utils.save_oauth2_token(filename, token)

    assert(File.exist?(filename))
    result = YAML::load_file(filename)
    assert_equal(expected_result, result)
    assert(File.exist?(filename + '.backup'))
    File.unlink(filename + '.backup')
  end

  def test_find_new_name()
    tmp_file = Tempfile.new('ruby-tests')
    name1 = AdsCommon::Utils.find_new_name(tmp_file.path())
    assert_equal(tmp_file.path() + '.backup', name1)
    File.open(name1, 'w') do |file1|
      name2 = AdsCommon::Utils.find_new_name(tmp_file.path())
      assert_equal(tmp_file.path() + '.backup1', name2)
    end
    File.unlink(name1)
  end
end
