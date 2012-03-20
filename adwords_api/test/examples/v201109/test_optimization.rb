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
# Tests the optimization examples.

require 'test/unit'

require 'optimization/estimate_keyword_traffic'
require 'optimization/get_keyword_bid_simulations'
require 'optimization/get_keyword_ideas'
require 'optimization/get_placement_ideas'

class TestOptimizationV201109 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201109.new(@adwords)
  end

  def test_estimate_keyword_traffic
    estimate_keyword_traffic()
  end

  def test_get_keyword_bid_simulations
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    keyword = @utils.get_keyword()
    assert_not_nil(keyword)
    assert_not_nil(keyword[:criterion])
    assert_not_nil(keyword[:criterion][:id])
    get_criterion_bid_landscapes(ad_group[:id], keyword[:criterion][:id])
  end

  def test_get_keyword_ideas
    keyword_text = 'orion tours'
    get_keyword_ideas(keyword_text)
  end

  def test_get_placement_ideas
    url = 'http://example.google.com'
    get_placement_ideas(url)
  end
end
