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
# Test suite for integration tests.

$:.unshift File.expand_path('../../lib/', __FILE__)
$:.unshift File.expand_path('../../', __FILE__)

require 'test/test_utils'

examples_dir_path =
    File.expand_path(File.join('..', '..', 'examples'), __FILE__)

examples_mask = File.join(examples_dir_path, 'v*/**/*.rb')

Dir.glob(examples_mask).each do |file|
  method_name = 'test_%s' % File.basename(file)
  Class.new(Test::Unit::TestCase) do
    define_method(method_name) do
      ExampleRunner.new(file).engage(self)
    end
  end
end
