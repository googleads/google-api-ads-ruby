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
# Base class with common methods used across both report and service queries.

require 'adwords_api/query_utils/where_builder'

module AdwordsApi
  class QueryBuilder
    def initialize(api)
      @api = api
      @where = []
    end

    def where(field)
      clause = WhereBuilder.new(field)
      @where << clause
      return clause
    end

    def build_where()
      return '' if @where.empty?
      wheres = @where.map {|w| w.awql}
      return sprintf(' WHERE %s', wheres.join(' AND '))
    end
  end
end
