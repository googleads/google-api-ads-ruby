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
# Tests the misc examples.

require 'test/unit'

require 'misc/get_all_images_and_videos'
require 'misc/upload_image'
require 'misc/use_oauth'

class TestMiscV201109 < Test::Unit::TestCase
  def setup
  end

  def test_get_all_images_and_videos
    get_all_images_and_videos()
  end

  def test_upload_image
    upload_image()
  end

  # This test is disabled as it requires user input.
  def disabled_test_use_oauth
    use_oauth()
  end
end
