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
# Tests the reporting examples.

require 'test/unit'
require 'tempfile'

require 'reporting/download_criteria_report'
require 'reporting/download_defined_report'
require 'reporting/get_campaign_stats'
require 'reporting/get_defined_reports'
require 'reporting/get_report_fields'
require 'reporting/parallel_report_download'

THREADS = 3
MAX_RETRIES = 3
BACKOFF_FACTOR = 3

class TestReportingV201109 < Test::Unit::TestCase
  def setup
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::ERROR
    @adwords = AdwordsApi::Api.new
    @adwords.logger = @logger
    @utils = UtilsV201109.new(@adwords)
  end

  def test_download_criteria_report
    file = Tempfile.new('ruby-examples')
    begin
      file.close()
      download_criteria_report(file.path)
    ensure
      file.unlink()
    end
  end

  def test_download_defined_report
    report_definition_id = '1234567890'
    file = Tempfile.new('ruby-examples')
    begin
      file.close()
      download_defined_report(report_definition_id, file.path)
    ensure
      file.unlink()
    end
  end

  def test_get_campaign_stats
    get_campaign_stats()
  end

  def test_get_defined_reports
    get_defined_reports()
  end

  def test_get_report_fields
    report_type = 'ACCOUNT_PERFORMANCE_REPORT'
    get_report_fields(report_type)
  end

  def test_parallel_report_download
    old_dir = Dir.pwd
    Dir.chdir('/tmp')
    begin
      parallel_report_download()
    ensure
      Dir.chdir(old_dir)
    end
  end
end
