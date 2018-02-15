# Encoding: utf-8
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
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
# Class with methods to aid in building AWQL for reports.

require 'adwords_api/query_utils/query_builder'
require 'adwords_api/query_utils/report_query'

module AdwordsApi
  class ReportQueryBuilder < QueryBuilder
    def initialize(api)
      super(api)
      @select = nil
      @from = nil
      @during_range = nil
      @during_start = nil
      @during_end = nil
      yield self if block_given?
    end

    def configure()
      yield self
    end

    def select(*fields)
      @select = fields
    end

    def from(report_name)
      @from = report_name
    end

    def during_date_range(date_range)
      @during_range = date_range
    end

    def during(start_date, end_date)
      @during_start = start_date
      @during_end = end_date
    end

    def build()
      raise ArgumentError,
          'Must specify SELECT clause for valid AWQL' if @select.nil?
      raise ArgumentError,
          'Must specify FROM clause for valid AWQL' if @from.nil?
      if !@during_range.nil? && (!@during_start.nil? || !@during_end.nil?)
        raise ArgumentError,
            'Cannot specify both date range and start/end dates.'
      end
      result = sprintf('SELECT %s', @select.join(', '))
      result += sprintf(' FROM %s', @from)
      result += build_where()
      if !@during_range.nil?
        result += sprintf(' DURING %s', @during_range)
      elsif !@during_start.nil? || !@during_end.nil?
        if @during_start.nil?
          raise ArgumentError, 'Cannot specify end date without start date.'
        elsif @during_end.nil?
          raise ArgumentError, 'Cannot specify start date without end date.'
        end
        result += sprintf(' DURING %s,%s', @during_start, @during_end)
      end
      @api.utils_reporter.report_query_builder_used()
      return ReportQuery.new(result)
    end
  end
end
