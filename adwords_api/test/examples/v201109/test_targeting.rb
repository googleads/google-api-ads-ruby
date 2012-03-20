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
# Tests the targeting examples.

require 'test/unit'

require 'targeting/add_campaign_targeting_criteria'
require 'targeting/get_campaign_targeting_criteria'
require 'targeting/get_targetable_languages_and_carriers'
require 'targeting/lookup_location'

class TestTargetingV201109 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201109.new(@adwords)
  end

  def test_add_campaign_targeting_criteria
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    add_campaign_targeting_criteria(campaign[:id])
  end

  def test_get_campaign_targeting_criteria
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    get_campaign_targeting_criteria(campaign[:id])
  end

  def test_get_targetable_languages_and_carriers
    get_targetable_languages_and_carriers()
  end

  def test_lookup_location
    lookup_location()
  end
end
