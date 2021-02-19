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
# Class with methods to aid in building AWQL for services.

require 'adwords_api/query_utils/query_builder'
require 'adwords_api/query_utils/service_query'
require 'set'

module AdwordsApi
  class ServiceQueryBuilder < QueryBuilder
    def initialize(api)
      super(api)
      @select = nil
      @order = []
      @start_index = nil
      @page_size = nil
      yield self if block_given?
    end

    def configure()
      yield self
    end

    def select(*fields)
      @select = Set[*fields]
    end

    def order_by_asc(field)
      @order << {
        :field => field,
        :direction => 'ASC'
      }
    end

    def order_by_desc(field)
      @order << {
        :field => field,
        :direction => 'DESC'
      }
    end

    def limit(start_index, page_size)
      @start_index = start_index
      @page_size = page_size
    end

    def build()
      raise ArgumentError,
          'Must specify SELECT clause for valid AWQL' if @select.nil?
      if !@start_index.nil? && @page_size.nil?
        raise ArgumentError, 'Cannot specify start index without page size.'
      end
      if !@page_size.nil? && @start_index.nil?
        raise ArgumentError, 'Cannot specify page size without start index.'
      end
      result = sprintf('SELECT %s', @select.to_a.join(', '))
      result += build_where()
      unless @order.empty?
        orders = @order.map do |o|
          sprintf('%s %s', o[:field], o[:direction])
        end
        result += sprintf(' ORDER BY %s', orders.join(', '))
      end
      @api.utils_reporter.service_query_builder_used()
      return ServiceQuery.new(result, @start_index, @page_size)
    end
  end
end
