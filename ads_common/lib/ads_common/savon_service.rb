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
# Base class for all generated API services based on Savon backend.

gem 'savon', '~>0.9.1'
require 'savon'

module AdsCommon
  class SavonService
    attr_accessor :headerhandler, :wiredump_dev, :options

    # Creates a new service.
    def initialize(endpoint, namespace)
      if self.class() == AdsCommon::SavonService
        raise NoMethodError, "Tried to instantiate an abstract class"
      end
      @headerhandler = []
      @wiredump_dev = nil
      @options = {}
      @client = Savon::Client.new do |wsdl|
        wsdl.namespace = namespace
        wsdl.endpoint = endpoint
      end
    end

    private

    # Returns ServiceRegistry for the current service. Has to be overriden.
    def get_service_registry()
      raise NoMethodError, "This methods needs to be overriden"
    end

    # Returns Module for the current service. Has to be overriden.
    def get_module()
      raise NoMethodError, "This methods needs to be overriden"
    end

    # Executes SOAP action specified as a string with given arguments.
    def execute_action(action_name, args)
      args = validate_args(action_name, args)
      response = @client.request(action_name.to_sym) do |soap|
        set_headers(soap, args)
      end
      handle_errors(response)
      return extract_result(response, action_name)
    end

    # Validates input parameters to:
    # - add parameter names;
    # - resolve xsi:type where required;
    # - convert some native types to xml.
    def validate_args(action_name, *args)
      validated_args = Hash.new
      in_params = get_service_registry.get_method_signature(action_name)[:input]
      in_params.each_with_index do |in_param, index|
        key = in_param[:name]
        value = args[index]
        validated_args[key] = (value.nil?) ? nil :
            validate_arg(value, validated_args, key)
      end
      return validated_args
    end

    # Validates method argument. Runs recursively if hash or array encountered.
    # Also handles some types that need special conversions.
    def validate_arg(arg, parent = nil, key = nil)
      result = case arg
        when Hash: validate_hash_arg(arg, parent, key)
        when Array: arg.map {|item| validate_arg(item, parent, key)}
        when Time: time_to_xml_hash(arg)
        else arg
      end
      return result
    end

    # Validates hash argument recursively. Keeps tracking of correct place
    # for xsi:type and adds is when required.
    def validate_hash_arg(arg, parent = nil, key = nil)
      xsi_type = arg.delete('xsi:type') || arg.delete(:xsi_type)
      if xsi_type
        if parent and key
          add_xsi_type(parent, key, xsi_type)
        else
          raise AdsCommon::Errors::ApiException.new(
              "Can't find correct position for xsi:type (%s) [%s], [%s]" %
                  [xsi_type, parent, key])
        end
      end
      return arg.inject({}) do |result, (key, value)|
        result[key] = (key == :attributes!) ? value :
            validate_arg(value, result, key)
        result
      end
    end

    # Adds ":attributes!" record for Savon to specify xsi:type.
    def add_xsi_type(parent, key, xsi_type)
      parent[:attributes!] ||= {}
      parent[:attributes!][key] ||= {}
      parent[:attributes!][key]["xsi:type"] ||= []
      parent[:attributes!][key]["xsi:type"] << xsi_type
    end

    # Executes each handler to generate SOAP headers.
    def set_headers(soap, args)
      @headerhandler.each {|handler| handler.prepare_soap(soap, args)}
    end

    # Checks for errors in response and raises appropriate exception.
    def handle_errors(response)
      if response.soap_fault?
        exception = exception_for_soap_fault(response)
        raise exception
      end
      if response.http_error?
        raise AdsCommon::Errors::HttpError,
            "HTTP Error occurred: %s" % response.http_error
      end
    end

    # Finds an exception object for a given response.
    def exception_for_soap_fault(response)
      begin
        fault = response[:fault]
        if fault[:detail] and fault[:detail][:api_exception_fault]
          exception_fault = fault[:detail][:api_exception_fault]
          exception_name = exception_fault[:application_exception_type]
          exception_class = get_module().const_get(exception_name)
          return exception_class.new(exception_fault)
        elsif fault[:faultstring]
          fault_message = fault[:faultstring]
          return AdsCommon::Errors::ApiException.new(
              "Unknown exception with error: %s" % fault_message)
        else
          raise ArgumentError.new(fault.to_s)
        end
      rescue Exception => e
        return AdsCommon::Errors::ApiException.new(
            "Failed to resolve exception (%s), SOAP fault: %s" %
            [e.message, response.soap_fault])
      end
    end

    # Extracts the finest results possible for the given result. Returns the
    # response itself in worst case (contents unknown).
    def extract_result(response, action_name)
      method = get_service_registry.get_method_signature(action_name)
      action = method[:output][:name].to_sym
      result = response.to_hash
      result = result[action] if result.include?(action)
      return normalize_output(result, method)
    end

    # Normalizes output starting with root node "rval".
    def normalize_output(output_data, method_definition)
      fields_list = method_definition[:output][:fields]
      result = normalize_output_field(output_data, fields_list, :rval)
      return result[:rval]
    end

    # Normalizes one field of a given data recursively.
    # Args:
    #  - output_data: XML data to normalize
    #  - fields_list: expected list of fields from signature
    #  - field_name: specifies field name to normalize
    def normalize_output_field(output_data, fields_list, field_name)
      return nil if output_data.nil?
      field_definition = get_field_by_name(fields_list, field_name)
      field_sym = field_name.to_sym
      output_data[field_sym] = normalize_type(output_data[field_sym],
          field_definition)

      sub_type = get_service_registry.get_type_signature(
          field_definition[:type])
      if sub_type
        sub_type[:fields] += implode_parent(sub_type)
        if sub_type[:fields]
          # go recursive
          sub_type[:fields].each do |sub_type_field|
            if output_data[field_sym].is_a?(Array)
              items_list = output_data[field_sym]
              output_data[field_sym] = Array.new
              items_list.each do |item|
                output_data[field_sym] <<
                    normalize_output_field(item, sub_type_field,
                                           sub_type_field[:name])
              end
            else
              output_data[field_sym] =
                  normalize_output_field(output_data[field_sym], sub_type_field,
                                         sub_type_field[:name])
            end
          end
        end
      end
      return output_data
    end

    # Converts XML input string into a native format.
    def normalize_type(data, field)
      type_name = field[:type]
      result = case type_name
        when 'long', 'int': Integer(data)
        when 'double': Float(data)
        when 'boolean': data.kind_of?(String) ? data.casecmp('true') == 0 : data
        else data
      end
      # If field signature allows an array, forcing array structure even for one
      # item.
      if !field[:min_occurs].nil? and
          (field[:max_occurs].nil? or field[:max_occurs] > 1)
        result = arrayize(result)
      end
      return result
    end

    # Finds a field in a list by its name.
    def get_field_by_name(fields_list, name)
      fields_array = arrayize(fields_list)
      index = fields_array.find_index {|field| field[:name].eql?(name)}
      return (index.nil?) ? nil : fields_array.at(index)
    end

    # Makes sure object is an array.
    def arrayize(object)
      return Array.new if object.nil?
      return object.is_a?(Array) ? object : [object]
    end

    # Converts Time to a hash for XML marshalling.
    def time_to_xml_hash(time)
      return {
          :hour => time.hour, :minute => time.min, :second => time.sec,
          :date => {:year => time.year, :month => time.month, :day => time.day}
      }
    end

    # Returns all inherited fields of superclasses for given type.
    def implode_parent(data_type)
      result = Array.new
      if data_type and data_type[:base]
        parent_type = get_service_registry.get_type_signature(data_type[:base])
        result += parent_type[:fields] if parent_type[:fields]
        result += implode_parent(parent_type) if parent_type[:base]
      end
      return result
    end
  end
end
