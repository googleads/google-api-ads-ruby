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
# Tests report utils.

require 'rubygems'
require 'test/unit'
require 'adwords_api'

API_VERSION = :v201109

# Overriding default access levels to public for tests.
module AdwordsApi
  class ReportUtils
    public :check_for_errors
  end
end

# Stub class for HTTP response.
class ResponseStub
  attr_reader :code
  attr_reader :body

  def initialize(code, body)
    @code, @body = code, body
  end
end

# Typical reply types.
REPLY_TYPES = [
    {:reply => '!!!2|||-1|||Improperly formatted report request???',
     :message => 'Improperly formatted report request'},
    {:reply => "!!!2|||-1|||ReportDefinitionError.INVALID_FIELD_NAME_FOR_REPORT @ ; trigger:'bCampaignId'???",
     :message => "ReportDefinitionError.INVALID_FIELD_NAME_FOR_REPORT @ ; trigger:'bCampaignId'"}
]

VALID_REPORT = '"Custom ADGROUP_PERFORMANCE_REPORT (Oct 20, 2011-Oct 26, 2011)"\nCampaign ID,Ad group ID,Impressions,Clicks,Cost\nTotal, --,0,0,0.00'

class TestApiConfig < Test::Unit::TestCase
  # Initialize tests.
  def setup
    @api = AdwordsApi::Api.new
    @report_utils = @api.report_utils(API_VERSION)
  end

  # Testing HTTP code 400.
  def test_check_for_errors_400
    REPLY_TYPES.each do |reply_type|
      begin
        response = ResponseStub.new(400, reply_type[:reply])
        @report_utils.check_for_errors(response)
        assert(false, 'No exception thrown for code 400')
      rescue AdwordsApi::Errors::ReportError => e
        assert_equal(400, e.http_code)
        assert(e.message.include?(reply_type[:message]))
      end
    end
  end

  # Testing HTTP code 500.
  def test_check_for_errors_500
    REPLY_TYPES.each do |reply_type|
      begin
        response = ResponseStub.new(500, nil)
        @report_utils.check_for_errors(response)
        assert(false, 'No exception thrown for code 500')
      rescue AdwordsApi::Errors::ReportError => e
        assert_equal(500, e.http_code)
      end
    end
  end

  # Testing HTTP code 200 with success.
  def test_check_for_errors_200_success
    response = ResponseStub.new(200, VALID_REPORT)
    assert_nothing_raised do
      @report_utils.check_for_errors(response)
    end
  end

  # Testing HTTP code 200 with failure.
  def test_check_for_errors_200_success
    REPLY_TYPES.each do |reply_type|
      begin
        response = ResponseStub.new(200, reply_type[:reply])
        @report_utils.check_for_errors(response)
        assert(false, 'No exception thrown for code 200')
      rescue AdwordsApi::Errors::ReportError => e
        assert_equal(200, e.http_code)
        assert(e.message.include?(reply_type[:message]))
      end
    end
  end
end
