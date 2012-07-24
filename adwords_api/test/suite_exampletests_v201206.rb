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
# Test suite for v201206 example tests.

require 'test/unit'

$:.unshift File.expand_path('../../lib/', __FILE__)
$:.unshift File.expand_path('../../', __FILE__)

version = 'v201206'

examples_path =
    File.expand_path(File.join('..', '..', 'examples', version), __FILE__)
$:.unshift(examples_path)

tests_path = File.join(File.dirname(__FILE__), 'examples', version)
require File.join(tests_path, 'utils.rb')
tests_mask = File.join(tests_path, 'test_*.rb')
Dir.glob(tests_mask).each {|file| require file}
