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
# Tests the remarketing examples.

require 'test/unit'

require 'remarketing/add_audience'
require 'remarketing/add_conversion_tracker'

class TestRemarketingV201109 < Test::Unit::TestCase
  def setup
  end

  def test_add_audience
    add_audience()
  end

  def test_add_conversion_tracker
    add_conversion_tracker()
  end
end
