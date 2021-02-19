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
# Class to hold a generated AWQL query and aid in paging for services.

module AdwordsApi
  class ServiceQuery
    def initialize(query, start_index, page_size)
      @query = query
      @start_index = start_index
      @page_size = page_size
    end

    def has_next(page)
      raise ArgumentError,
          'Cannot page through query with no LIMIT clause.' if @start_index.nil?
      return @start_index + @page_size < page[:total_num_entries]
    end

    # Determining whether another page exists when dealing with bid landscapes
    # is different from other types of queries. Use this method for those cases.
    def has_next_landscape_page(page)
      raise ArgumentError,
          'Cannot page through query with no LIMIT clause.' if @start_index.nil?
      return false unless page[:entries]
      total_landscape_points_in_page = 0
      page[:entries].each do |landscape|
        total_landscape_points_in_page += landscape[:landscape_points].size
      end
      return total_landscape_points_in_page >= @page_size
    end

    def next_page()
      raise ArgumentError,
          'Cannot page through query with no LIMIT clause.' if @start_index.nil?
      @start_index += @page_size
      return self
    end

    def to_s()
      query = @query
      unless @start_index.nil?
        query += sprintf(' LIMIT %s,%s', @start_index, @page_size)
      end
      return query
    end
  end
end
