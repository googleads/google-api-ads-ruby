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
# Test suite for unit tests.

$:.unshift File.expand_path('../../lib/', __FILE__)
$:.unshift File.expand_path('../../', __FILE__)

# Ad Manager API units tests.
ad_manager_mask = File.join(
    File.dirname(__FILE__), 'ad_manager_api', 'test_*.rb'
)
Dir.glob(ad_manager_mask).each { |file| require file }

# Ad Manager API bug tests.
bugs_mask = File.join(File.dirname(__FILE__), 'bugs', 'test_*.rb')
Dir.glob(bugs_mask).each { |file| require file }
