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
# Tests the campaign management examples.

require 'test/unit'

require 'campaign_management/add_experiment'
require 'campaign_management/add_keywords_in_bulk'
require 'campaign_management/add_location_extension'
require 'campaign_management/add_location_extension_override'
require 'campaign_management/get_all_disapproved_ads'
require 'campaign_management/promote_experiment'
require 'campaign_management/set_ad_parameters'
require 'campaign_management/validate_text_ad'

RETRY_INTERVAL = 5
RETRIES_COUNT = 3
KEYWORD_NUMBER = 3

class TestCampaignManagementV201109 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201109.new(@adwords)
  end

  def test_add_experiment
    campaign = @utils.get_campaign()
    ad_group = @utils.get_ad_group()
    criterion = @utils.get_keyword()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    assert_not_nil(criterion)
    assert_not_nil(criterion[:criterion])
    assert_not_nil(criterion[:criterion][:id])
    add_experiment(campaign[:id], ad_group[:id], criterion[:criterion][:id])
  end

  def test_add_keywords_in_bulk
    add_keywords_in_bulk()
  end

  def test_add_location_extension
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    add_location_extension(campaign[:id])
  end

  def test_add_location_extension_override
    ad = @utils.get_ad()
    location_extension = @utils.get_location_extension()
    assert_not_nil(ad)
    assert_not_nil(ad[:ad])
    assert_not_nil(ad[:ad][:id])
    assert_not_nil(location_extension)
    assert_not_nil(location_extension[:ad_extension])
    assert_not_nil(location_extension[:ad_extension][:id])
    add_location_extension_override(
        ad[:ad][:id], location_extension[:ad_extension][:id])
  end

  def test_get_all_disapproved_ads
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    get_all_disapproved_ads(ad_group[:id])
  end

  def test_promote_experiment
    experiment = @utils.get_experiment()
    assert_not_nil(experiment)
    assert_not_nil(experiment[:id])
    promote_experiment(experiment[:id])
  end

  def test_set_ad_parameters
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    criterion = @utils.get_keyword()
    assert_not_nil(criterion)
    assert_not_nil(criterion[:criterion])
    assert_not_nil(criterion[:criterion][:id])
    set_ad_parameters(ad_group[:id], criterion[:criterion][:id])
  end

  def test_validate_text_ad
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    validate_text_ad(ad_group[:id])
  end
end
