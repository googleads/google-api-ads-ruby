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

require 'savon'

require 'ads_common/http'
require 'ads_common/parameters_validator'
require 'ads_common/results_extractor'

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
      client.config.raise_errors = false
      client.config.logger.subject = get_logger()
      return client
    end

    # Executes SOAP action specified as a string with given arguments.
    def execute_action(action_name, args, &block)
      registry = get_service_registry()
      validator = ParametersValidator.new(registry)
      args = validator.validate_args(action_name, args)
      response = execute_soap_request(
          action_name.to_sym, args, validator.extra_namespaces)
      log_headers(response.http.headers)
      handle_errors(response)
      extractor = ResultsExtractor.new(registry)
      result = extractor.extract_result(response, action_name, &block)
      run_user_block(extractor, response, result, &block) if block_given?
      return result
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
      response = @client.request(original_action_name) do |soap, wsdl, http|
        soap.body = args
        header_handler.prepare_request(http, soap)
        soap.namespaces.merge!(extra_namespaces) unless extra_namespaces.nil?
      end
      return response
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

    # Yields to user-specified block with additional information such as
    # headers.
    def run_user_block(extractor, response, body, &block)
      header = extractor.extract_header_data(response)
      case block.arity
        when 1 then yield(header)
        when 2 then yield(header, body)
        else
          raise AdsCommon::Errors::ApiException,
              "Wrong number of block parameters: %d" % block.arity
      end
      return nil
    end
  end
end
