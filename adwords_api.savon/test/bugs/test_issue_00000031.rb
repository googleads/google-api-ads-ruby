#!/usr/bin/ruby
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
# Tests issue #31.

require 'rubygems'
require 'test/unit'
require 'adwords_api'
require 'adwords_api/v201101/targeting_idea_service'

class TestIssue31 < Test::Unit::TestCase
  class StubService < AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaService
    def stub_validate_args(action_name, args)
      return validate_args(action_name, args)
    end
  end

  def setup
    @api = AdwordsApi::Api.new()
    @service = StubService.new(
        @api, @api.api_config.environment_config[:PRODUCTION][:v201101])
  end

  def run_test(selector)
    result_hash = @service.stub_validate_args('get', [selector])
    return Gyoku.xml(result_hash)
  end

  def test_issue_31_single_xsi_type
    selector = {
        :search_parameters => [
            {:xsi_type => 'KeywordMatchTypeSearchParameter',
             :keyword_match_types => ['BROAD']}
        ]
    }
    result_xml = run_test(selector)
    r = /searchParameters xsi:type="KeywordMatchTypeSearchParameter"/ =~
        result_xml
    assert_not_nil(r, 'Unable to find item with xsi_type ' +
        'KeywordMatchTypeSearchParameter')
  end

  def test_issue_31_multiple_xsi_types
    selector = {
        :search_parameters => [
            {:xsi_type => 'AverageTargetedMonthlySearchesSearchParameter',
             :operation => { :minimum => 10000, :maximum => 100000000}},
            {:xsi_type => 'KeywordMatchTypeSearchParameter',
             :keyword_match_types => ['BROAD']}
        ]
    }
    result_xml = run_test(selector)
    r1 = /searchParameters xsi:type="KeywordMatchTypeSearchParameter"/ =~
        result_xml
    r2 = /searchParameters xsi:type="AverageTargetedMonthlySearchesSearchParameter"/ =~
        result_xml
    assert_not_nil(r1, 'Unable to find item with xsi_type ' +
        'KeywordMatchTypeSearchParameter')
    assert_not_nil(r2, 'Unable to find item with xsi_type ' +
        'AverageTargetedMonthlySearchesSearchParameter')
  end
end
