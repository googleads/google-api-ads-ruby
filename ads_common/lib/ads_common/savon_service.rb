# Encoding: utf-8
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

require 'httpi'
require 'savon'

require 'ads_common/http'
require 'ads_common/parameters_validator'

module AdsCommon
  class SavonService

    attr_accessor :header_handler
    attr_reader :config
    attr_reader :version
    attr_reader :namespace

    # Creates a new service.
    def initialize(config, endpoint, namespace, version)
      if self.class() == AdsCommon::SavonService
        raise NoMethodError, 'Tried to instantiate an abstract class'
      end
      @config, @version, @namespace = config, version, namespace
      @client = create_savon_client(endpoint, namespace)
    end

    private

    # Returns currently configured Logger.
    def get_logger()
      return @config.read('library.logger')
    end

    # Returns ServiceRegistry for the current service. Has to be overridden.
    def get_service_registry()
      raise NoMethodError, 'This method needs to be overridden'
    end

    # Returns Module for the current service. Has to be overridden.
    def get_module()
      raise NoMethodError, 'This method needs to be overridden'
    end

    # Creates and sets up Savon client.
    def create_savon_client(endpoint, namespace)
      Nori.advanced_typecasting = false
      client = Savon::Client.new do |wsdl, httpi|
        wsdl.endpoint = endpoint
        wsdl.namespace = namespace
        AdsCommon::Http.configure_httpi(@config, httpi)
      end
      Savon.configure do |config|
        config.raise_errors = false
        config.log_level = :debug
        config.logger = get_logger()
      end
      return client
    end

    # Executes SOAP action specified as a string with given arguments.
    def execute_action(action_name, args, &block)
      validator = ParametersValidator.new(get_service_registry())
      args = validator.validate_args(action_name, args)
      response = execute_soap_request(
          action_name.to_sym, args, validator.extra_namespaces)
      log_headers(response.http.headers)
      handle_errors(response)
      return extract_result(response, action_name, &block)
    end

    # Logs response headers.
    # TODO: this needs to go on http or httpi level.
    def log_headers(headers)
      get_logger().debug(headers.map {|k, v| [k, v].join(': ')}.join(', '))
    end

    # Executes the SOAP request with original SOAP name.
    def execute_soap_request(action, args, extra_namespaces)
      original_action_name =
          get_service_registry.get_method_signature(action)[:original_name]
      original_action_name = action if original_action_name.nil?
      response = @client.request(original_action_name) do |soap|
        soap.body = args
        set_headers(soap, extra_namespaces)
      end
      return response
    end

    # Executes each handler to generate SOAP headers.
    def set_headers(soap, extra_namespaces)
      header_handler.prepare_request(@client.http, soap)
      soap.namespaces.merge!(extra_namespaces) unless extra_namespaces.nil?
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
    def extract_result(response, action_name, &block)
      method = get_service_registry.get_method_signature(action_name)
      action = method[:output][:name].to_sym
      result = response.to_hash
      result = result[action] if result.include?(action)
      result = normalize_output(result, method)
      run_user_block(response, result, &block) if block_given?
      return result
    end

    # Yields to user-specified block with additional information such as
    # headers.
    def run_user_block(response, body, &block)
      header = extract_header_data(response)
      case block.arity
        when 1 then yield(header)
        when 2 then yield(header, body)
        else
          raise AdsCommon::Errors::ApiException,
              "Wrong number of block parameters: %d" % block.arity
      end
      return nil
    end

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
        parent_type = get_service_registry.get_type_signature(data_type[:base])
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
      result = (type_name.nil?) ? nil :
          get_service_registry.get_type_signature(type_name)
      if result and result[:base]
        result[:fields] = implode_parent(result)
      end
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
