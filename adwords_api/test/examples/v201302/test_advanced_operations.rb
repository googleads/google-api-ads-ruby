#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# Tests the advanced operations examples.

require 'test/unit'

require 'advanced_operations/add_site_links'
require 'advanced_operations/add_click_to_download_ad'
require 'advanced_operations/create_and_attach_shared_keyword_set'
require 'advanced_operations/find_and_remove_criteria_from_shared_set'

PLACEHOLDER_SITELINKS = 1
PLACEHOLDER_FIELD_SITELINK_LINK_TEXT = 1
PLACEHOLDER_FIELD_SITELINK_LINK_URL = 2

class TestAdvancedOperationsV201302 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201302.new(@adwords)
  end

  def test_add_site_links()
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    add_site_links(campaign[:id])
  end

  def test_add_click_to_download_ad()
    ad_group = @utils.get_ad_group()
    assert_not_nil(ad_group)
    assert_not_nil(ad_group[:id])
    add_click_to_download_ad(ad_group[:id])
  end

  def test_add_and_remove_shared_criteria()
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    create_and_attach_shared_keyword_set(campaign[:id])
    find_and_remove_criteria_from_shared_set(campaign[:id])
  end
end
