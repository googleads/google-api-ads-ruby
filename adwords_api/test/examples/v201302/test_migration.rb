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
# Tests the migration examples.

require 'test/unit'

require 'migration/set_campaign_enhanced'

class TestMigrationV201302 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201302.new(@adwords)
  end

  def test_set_campaign_enhanced()
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    set_campaign_enhanced(campaign[:id])
  end

  def test_upgrade_legacy_sitelinks()
    campaign = @utils.get_campaign()
    assert_not_nil(campaign)
    assert_not_nil(campaign[:id])
    upgrade_legacy_sitelinks([campaign[:id]])
  end
end
