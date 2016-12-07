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
# Tests environment is correct.

require 'openssl'
require 'test/unit'

class TestEnv < Test::Unit::TestCase

  # Output ruby interpreter version to the tests log.
  def test_ruby_version
    puts "\nRunning tests with %s-%s-%s.\n" %
        [RUBY_ENGINE, RUBY_VERSION, RUBY_PATCHLEVEL]
  end

  # Output SSL version to the tests log. There is a known issue with this
  # required property not defined in some JRuby implementations.
  def test_openssl_version
    puts "\nUsing OpenSSL %s with %d methods.\n" %
        [OpenSSL::OPENSSL_VERSION, OpenSSL::SSL::SSLContext::METHODS.count]
  end

  # Output rake version to the tests log.
  def test_rake_version
    puts "\nRunning with rake %s.\n" % Rake::VERSION if defined?(Rake)
  end
end
