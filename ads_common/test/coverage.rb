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
# Runs test with coverage tool.

require 'simplecov'

SimpleCov.start

$:.unshift File.expand_path('../../', __FILE__)
require File.join(File.dirname(__FILE__), 'suite_unittests.rb')

# Now loading all files in the library to make sure we hit all untested files.
lib_base_path = File.expand_path('../../lib', __FILE__)
$:.unshift lib_base_path

code_files_mask = File.join(lib_base_path, '**/*.rb')
Dir.glob(code_files_mask).each {|file| require file}
