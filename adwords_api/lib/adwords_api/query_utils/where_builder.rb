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
# Class to aid in constructing where clauses for reporting and service queries.

module AdwordsApi
  class WhereBuilder
    attr_reader :awql

    def initialize(field)
      @field = field
      @awql = nil
    end

    def equal_to(value)
      @awql = sprintf("%s = %s", @field, value)
    end

    def not_equal_to(value)
      @awql = sprintf("%s != %s", @field, value)
    end

    def greater_than(value)
      @awql = sprintf("%s > %s", @field, value)
    end

    def greater_than_or_equal_to(value)
      @awql = sprintf("%s >= %s", @field, value)
    end

    def less_than(value)
      @awql = sprintf("%s < %s", @field, value)
    end

    def less_than_or_equal_to(value)
      @awql = sprintf("%s <= %s", @field, value)
    end

    def starts_with(value)
      @awql = sprintf("%s STARTS_WITH %s", @field, value)
    end

    def starts_with_ignore_case(value)
      @awql = sprintf("%s STARTS_WITH_IGNORE_CASE %s", @field, value)
    end

    def contains(value)
      @awql = sprintf("%s CONTAINS %s", @field, value)
    end

    def contains_ignore_case(value)
      @awql = sprintf("%s CONTAINS_IGNORE_CASE %s", @field, value)
    end

    def does_not_contain(value)
      @awql = sprintf("%s DOES_NOT_CONTAIN %s", @field, value)
    end

    def does_not_contain_ignore_case(value)
      @awql = sprintf("%s DOES_NOT_CONTAIN_IGNORE_CASE %s", @field, value)
    end

    def in(*values)
      @awql = sprintf("%s IN [%s]", @field, values.join(','))
    end

    def not_in(*values)
      @awql = sprintf("%s NOT_IN [%s]", @field, values.join(','))
    end

    def contains_any(*values)
      @awql = sprintf("%s CONTAINS_ANY [%s]", @field, values.join(','))
    end

    def contains_none(*values)
      @awql = sprintf("%s CONTAINS_NONE [%s]", @field, values.join(','))
    end

    def contains_all(*values)
      @awql = sprintf("%s CONTAINS_ALL [%s]", @field, values.join(','))
    end
  end
end
