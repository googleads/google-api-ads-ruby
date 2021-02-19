# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# StatementBuilder object to allow for simpler PQL statement generation.

require 'ad_manager_api/ad_manager_api_datetime'


module AdManagerApi
  # Query class used by StatementBuilder.
  class PQLQuery
    # Create a new query.
    def initialize(query = nil)
      @query = (query.nil?) ? nil : query.dup()
    end

    # Concatenate a new clause onto the current query.
    def <<(clause)
      @query = (@query.nil?) ? clause : @query << ' ' << clause
    end

    # Return the query string for a PQLQuery
    def to_s()
      @query.dup()
    end
  end

  # Values class used by StatementBuilder.
  class PQLValues
    VALUE_TYPES = {
      Numeric => 'NumberValue',
      String => 'TextValue',
      TrueClass => 'BooleanValue',
      FalseClass => 'BooleanValue',
      Array => 'SetValue',
      AdManagerApi::AdManagerDate => 'DateValue',
      AdManagerApi::AdManagerDateTime => 'DateTimeValue'
    }

    # Create a new values object.
    def initialize(values = {})
      @values = values || {}
    end

    # Add a value to the current values object on the provided key.
    def add_value(key, value)
      @values[key.to_sym] = generate_value_object(value)
    end

    # Get values as an array, the format the Ad Manager API expects.
    def values()
      # values_array is an Ad-Manager-compliant list of values of the following
      # form: [:key => ..., :value => {:xsi_type => ..., :value => ...}]
      values_array = @values.map do |key, value|
        raise 'Missing value in StatementBuilder.' if value.nil?
        raise 'Misconfigured value in StatementBuilder.' unless value.is_a? Hash
        raise 'Value cannot be nil on StatementBuilder.' if value[:value].nil?
        raise 'Missing value type for %s.' % key if value[:xsi_type].nil?
        unless VALUE_TYPES.values.include?(value[:xsi_type])
          raise 'Unknown value type for %s.' % key
        end
        if value[:xsi_type] == 'SetValue'
          if value[:value].map {|v| v.class}.to_set.size > 1
            raise 'Cannot pass more than one type in set variable, %s.' % key
          end
        end
        if value[:xsi_type] == 'DateTimeValue'
          unless value[:value][:time_zone_id]
            raise 'Missing timezone on DateTimeValue variable, %s.' %key
          end
        end
        {:key => key.to_s(), :value => value}
      end
      return values_array
    end

    # Create an individual value object by inferring the xsi_type. If the value
    # type isn't recognized, return the original value parameter.
    def generate_value_object(value)
      typeKeyValue = VALUE_TYPES.find {|key, val| value.is_a? key}
      dateTypes = [AdManagerApi::AdManagerDate, AdManagerApi::AdManagerDateTime]
      if dateTypes.include?(value.class)
        value = value.to_h
      end
      return value if typeKeyValue.nil?
      return {:xsi_type => typeKeyValue.last, :value => value}
    end
  end

  # A utility class for building PQL statements, used by the
  # PublisherQueryLanguageService and other services' get*ByStatement and
  # perform*Action requsts.
  #
  # Example usage:
  # sb = AdManagerApi::StatementBuilder.new do |b|
  #   b.select = 'ChangeDateTime, EntityId, EntityType, Operation'
  #   b.from = 'Change_History'
  #   b.where = 'ChangeDateTime < :start_date_time ' +
  #             'AND ChangeDateTime > :end_date_time'
  #   b.with_bind_variable('start_date_time',
  #                        AdManagerApi::AdManagerDate.today-1)
  #   b.with_bind_variable('end_date_time', AdManagerApi::Date.today)
  #   b.order_by = 'ChangeDateTime'
  #   b.ascending = false
  # end
  # sb.to_statement()
  #
  class StatementBuilder
    SUGGESTED_PAGE_LIMIT = 500

    SELECT = 'SELECT %s'
    FROM = 'FROM %s'
    WHERE = 'WHERE %s'
    ORDER = 'ORDER BY %s %s'
    LIMIT = 'LIMIT %d'
    OFFSET = 'OFFSET %d'

    attr_accessor :select, :from, :where, :order_by, :ascending, :limit, :offset

    # Create a StatementBuilder object.
    def initialize(api, &block)
      @api = api
      @select = nil
      @from = nil
      @where = nil
      @order_by = nil
      @ascending = true
      @limit = SUGGESTED_PAGE_LIMIT
      @offset = 0
      @pql_values = PQLValues.new
      yield self if block_given?
    end

    # Edit a StatmentBuilder object with a block.
    def configure(&block)
      yield self
    end

    # Add a value to be matched to bind a variable in WHERE conditions.
    def with_bind_variable(key, value)
      @pql_values.add_value(key, value)
      return self
    end

    # Return a list of validation errors.
    def validate()
      if !@select.to_s.strip.empty? and @from.to_s.strip.empty?
        raise 'FROM clause is required with SELECT'
      end
      if !@from.to_s.strip.empty? and @select.to_s.strip.empty?
        raise 'SELECT clause is required with FROM'
      end
      if !@offset.nil? and @limit.nil?
        raise 'LIMIT clause is required with OFFSET'
      end
      unless @limit.is_a? Integer or @limit.nil?
        raise 'LIMIT must be an integer'
      end
      unless @offset.is_a? Integer or @offset.nil?
        raise 'OFFSET must be an integer'
      end
    end

    # Create a statement object that can be sent in a Ad Manager API request.
    def to_statement()
      @api.utils_reporter.statement_builder_used()
      validate()
      ordering = @ascending ? 'ASC' : 'DESC'
      pql_query = PQLQuery.new
      pql_query << SELECT % @select unless @select.to_s.empty?
      pql_query << FROM % @from unless @from.to_s.empty?
      pql_query << WHERE % @where unless @where.to_s.empty?
      pql_query << ORDER % [@order_by, ordering] unless @order_by.to_s.empty?
      pql_query << LIMIT % @limit unless @limit.nil?
      pql_query << OFFSET % @offset unless @offset.nil?
      return {:query => pql_query.to_s(), :values => @pql_values.values}
    end
  end
end
