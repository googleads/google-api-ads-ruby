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
# This class extracts data received from Savon and enriches it.

module AdsCommon
  class ResultsExtractor

    # Instance initializer.
    #
    # Args:
    #  - registry: a registry that defines service
    #
    def initialize(registry)
      @registry = registry
    end

    # Extracts the finest results possible for the given result. Returns the
    # response itself in worst case (contents unknown).
    def extract_result(response, action_name)
      method = @registry.get_method_signature(action_name)
      action = method[:output][:name].to_sym
      result = response.to_hash
      result = result[action] if result.include?(action)
      result = normalize_output(result, method)
      return result
    end

    private

    # Extracts misc data from response header.
    def extract_header_data(response)
      header_type = get_full_type_signature(:SoapResponseHeader)
      headers = response.header[:response_header].dup
      process_attributes(headers, false)
      result = headers.inject({}) do |result, (key, v)|
        normalize_output_field(headers, header_type[:fields], key)
        result[key] = headers[key]
        result
      end
      return result
    end

    # Normalizes output starting with root node "rval".
    def normalize_output(output_data, method_definition)
      fields_list = method_definition[:output][:fields]
      result = normalize_output_field(output_data, fields_list, :rval)
      return result[:rval] || result
    end

    # Normalizes one field of a given data recursively.
    # Args:
    #  - output_data: XML data to normalize
    #  - fields_list: expected list of fields from signature
    #  - field_name: specifies field name to normalize
    def normalize_output_field(output_data, fields_list, field_name)
      return nil if output_data.nil?

      process_attributes(output_data, true)

      field_definition = get_field_by_name(fields_list, field_name)
      if field_definition.nil?
        get_logger().warn("Can not determine type for field: %s" % field_name)
        return output_data
      end

      field_sym = field_name.to_sym
      field_data = normalize_type(output_data[field_sym], field_definition)
      output_data[field_sym] = field_data

      sub_type = get_full_type_signature(field_definition[:type])
      if sub_type and sub_type[:fields]
        # go recursive
        sub_type[:fields].each do |sub_type_field|
          if field_data.is_a?(Array)
            field_data.each do |item|
              normalize_output_field(item, sub_type_field,
                                     sub_type_field[:name])
            end
          else
            normalize_output_field(field_data, sub_type_field,
                                   sub_type_field[:name])
          end
        end
      end
      return output_data
    end

    # Converts XML input string into a native format.
    def normalize_type(data, field)
      type_name = field[:type]
      result = case data
        when Array
          data.map {|item| normalize_item(type_name, item)}
        else
          normalize_item(type_name, data)
      end
      # If field signature allows an array, forcing array structure even for one
      # item.
      if !field[:min_occurs].nil? and
          (field[:max_occurs] == :unbounded ||
              (!field[:max_occurs].nil? and field[:max_occurs] > 1))
        result = arrayize(result)
      end
      return result
    end

    # Converts one leaf item to a built-in type.
    def normalize_item(type_name, item)
      return (item.nil?) ? item :
          case type_name
            when 'long', 'int' then Integer(item)
            when 'double', 'float' then Float(item)
            when 'boolean' then item.kind_of?(String) ?
                item.casecmp('true') == 0 : item
            else item
          end
    end

    # Finds a field in a list by its name.
    def get_field_by_name(fields_list, name)
      fields_array = arrayize(fields_list)
      index = fields_array.find_index {|field| field[:name].eql?(name)}
      return (index.nil?) ? nil : fields_array.at(index)
    end

    # Makes sure object is an array.
    def arrayize(object)
      return [] if object.nil?
      return object.is_a?(Array) ? object : [object]
    end

    # Returns all inherited fields of superclasses for given type.
    def implode_parent(data_type)
      result = []
      if data_type[:base]
        parent_type = @registry.get_type_signature(data_type[:base])
        result += implode_parent(parent_type)
      end
      data_type[:fields].each do |field|
        # If the parent type includes a field with the same name, overwrite it.
        result.reject! {|parent_field| parent_field[:name].eql?(field[:name])}
        result << field
      end
      return result
    end

    # Returns type signature with all inherited fields.
    def get_full_type_signature(type_name)
      result = (type_name.nil?) ? nil : @registry.get_type_signature(type_name)
      result[:fields] = implode_parent(result) if result and result[:base]
      return result
    end

    # Handles attributes received from Savon.
    def process_attributes(data, keep_xsi_type = false)
      if data.kind_of?(Hash)
        if keep_xsi_type
          xsi_type = data.delete(:"@xsi:type")
          data[:xsi_type] = xsi_type if xsi_type
        end
        data.reject! {|key, value| key.to_s.start_with?('@')}
      end
    end
  end
end
