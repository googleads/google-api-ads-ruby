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
# Tests the basic operations examples.

require 'test/unit'

require 'basic_operations/add_ad_groups'
require 'basic_operations/add_campaigns'
require 'basic_operations/add_keywords'
require 'basic_operations/add_text_ads'
require 'basic_operations/delete_ad_group'
require 'basic_operations/delete_ad'
require 'basic_operations/delete_campaign'
require 'basic_operations/delete_keyword'
require 'basic_operations/get_ad_groups'
require 'basic_operations/get_campaigns'
require 'basic_operations/get_keywords'
require 'basic_operations/get_text_ads'
require 'basic_operations/pause_ad'
require 'basic_operations/update_ad_group'
require 'basic_operations/update_campaign'
require 'basic_operations/update_keyword'

class TestBasicOperationsV201109 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201109.new(@adwords)
  end

  def test_add_campaigns
    add_campaigns()
  end

  def test_get_campaigns
    get_campaigns()
  end

  def test_add_ad_groups
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    add_ad_groups(campaign[:id])
  end

  def test_add_keywords
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    add_keywords(ad_group[:id])
  end

  def test_get_keywords
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    get_keywords(ad_group[:id])
  end

  def test_add_text_ads
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    add_text_ads(ad_group[:id])
  end

  def test_get_text_ads
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    get_text_ads(ad_group[:id])
  end

  def test_pause_ad
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    ad = @utils.get_ad()
    assert_not_nil(ad)
    assert_not_nil(ad[:ad])
    assert_not_nil(ad[:ad][:id])
    pause_ad(ad_group[:id], ad[:ad][:id])
  end

  def test_update_ad_group
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    update_ad_group(ad_group[:id])
  end

  def test_update_campaign
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    update_campaign(campaign[:id])
  end

  def test_update_keyword
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    keyword = @utils.get_keyword()
    assert_not_nil(keyword)
    assert_not_nil(keyword[:criterion])
    assert_not_nil(keyword[:criterion][:id])
    update_keyword(ad_group[:id], keyword[:criterion][:id])
  end

  def test_delete_keyword
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    keyword = @utils.get_keyword()
    assert_not_nil(keyword)
    assert_not_nil(keyword[:criterion])
    assert_not_nil(keyword[:criterion][:id])
    delete_keyword(ad_group[:id], keyword[:criterion][:id])
  end

  def test_delete_ad
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    ad = @utils.get_ad()
    assert_not_nil(ad)
    assert_not_nil(ad[:ad])
    assert_not_nil(ad[:ad][:id])
    delete_ad(ad_group[:id], ad[:ad][:id])
  end

  def test_delete_ad_group
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    delete_ad_group(ad_group[:id])
  end

  def test_delete_campaign
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    delete_campaign(campaign[:id])
  end

  def test_get_ad_groups
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    get_ad_groups(campaign[:id])
  end
end
