#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# Tests the general API features.

require 'test/unit'

require 'adwords_api/api_config'

class TestApiConfig < Test::Unit::TestCase
  # Initializes tests.
  def setup()
    @config = AdwordsApi::ApiConfig
  end

  # Tests correct require path.
  def test_do_require()
    name1 = @config.do_require(:v201506, :CampaignService)
    assert_equal('adwords_api/v201506/campaign_service', name1)
  end

  # Tests correct module name.
  def test_module_name()
    name1 = @config.module_name(:v201506, :CampaignService)
    assert_equal('AdwordsApi::V201506::CampaignService', name1)
  end

  # Tests correct interface name.
  def test_interface_name()
    name1 = @config.interface_name(:v201506, :CampaignService)
    assert_equal('AdwordsApi::V201506::CampaignService::CampaignService', name1)
  end

  # Tests AdHoc report URL generator (prod).
  def test_adhoc_report_download_url_prod()
    url = AdwordsApi::ApiConfig.adhoc_report_download_url(:PRODUCTION, :v201506)
    expected_url =
        'https://adwords.google.com/api/adwords/reportdownload/v201506'
    assert_equal(expected_url, url)
  end
end
