# Encoding: utf-8
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

require 'ads_savon'

require 'ads_common/http'
require 'ads_common/parameters_validator'
require 'ads_common/results_extractor'

module AdsCommon
  class SavonService

    attr_accessor :header_handler
    attr_reader :config
    attr_reader :version
    attr_reader :namespace

    FALLBACK_API_ERROR_EXCEPTION = "ApiException"
    MAX_FAULT_LOG_LENGTH = 16000
    REDACTED_STR = 'REDACTED'

    # Creates a new service.
    def initialize(config, endpoint, namespace, version)
      if self.class() == AdsCommon::SavonService
        raise NoMethodError, 'Tried to instantiate an abstract class'
      end
      @config, @version, @namespace = config, version, namespace
      @client = create_savon_client(endpoint, namespace)
      @xml_only = false
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
      client = GoogleAdsSavon::Client.new do |wsdl, httpi|
        wsdl.endpoint = endpoint
        wsdl.namespace = namespace
        AdsCommon::Http.configure_httpi(@config, httpi)
      end
      client.config.raise_errors = false
      client.config.logger.subject = NoopLogger.new
      return client
    end

    # Generates and returns SOAP XML for the specified action and args.
    def get_soap_xml(action_name, args)
      registry = get_service_registry()
      validator = ParametersValidator.new(registry)
      args = validator.validate_args(action_name, args)
      return handle_soap_request(
          action_name.to_sym, true, args, validator.extra_namespaces)
    end

    # Executes SOAP action specified as a string with given arguments.
    def execute_action(action_name, args, &block)
      registry = get_service_registry()
      validator = ParametersValidator.new(registry)
      args = validator.validate_args(action_name, args)
      request_info, response = handle_soap_request(
          action_name.to_sym, false, args, validator.extra_namespaces)
      do_logging(action_name, request_info, response)
      handle_errors(response)
      extractor = ResultsExtractor.new(registry)
      result = extractor.extract_result(response, action_name, &block)
      run_user_block(extractor, response, result, &block) if block_given?
      return result
    end

    # Executes the SOAP request with original SOAP name.
    def handle_soap_request(action, xml_only, args, extra_namespaces)
      original_action_name =
          get_service_registry.get_method_signature(action)[:original_name]
      original_action_name = action if original_action_name.nil?
      request_info = nil
      response = @client.request(original_action_name) do |soap, wsdl, http|
        soap.body = args
        @header_handler.prepare_request(http, soap)
        soap.namespaces.merge!(extra_namespaces) unless extra_namespaces.nil?
        return soap.to_xml if xml_only
        request_info = RequestInfo.new(soap.to_xml, http.headers, http.url)
      end
      return request_info, response
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
          exception_name = (
              exception_fault[:application_exception_type] ||
              FALLBACK_API_ERROR_EXCEPTION)
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

    # Log the request, response, and summary lines.
    def do_logging(action, request, response)
      logger = get_logger()
      return unless should_log_summary(logger.level, response.soap_fault?)

      response_hash = response.hash

      soap_headers = {}
      begin
        soap_headers = response_hash[:envelope][:header][:response_header]
      rescue NoMethodError
        # If there are no headers, just ignore. We'll log what we know.
      end

      summary_message = ('ID: %s, URL: %s, Service: %s, Action: %s, Response ' +
          'time: %sms, Request ID: %s') % [@header_handler.identifier,
          request.url, self.class.to_s.split("::").last, action,
          soap_headers[:response_time], soap_headers[:request_id]]
      if soap_headers[:operations]
        summary_message += ', Operations: %s' % soap_headers[:operations]
      end
      summary_message += ', Is fault: %s' % response.soap_fault?

      request_message = nil
      response_message = nil

      if should_log_payloads(logger.level, response.soap_fault?)
        request_message = 'Outgoing request: %s %s' %
            [format_headers(request.headers), sanitize_request(request.body)]
        response_message = 'Incoming response: %s %s' %
            [format_headers(response.http.headers), response.http.body]
      end

      if response.soap_fault?
        summary_message += ', Fault message: %s' % format_fault(
            response_hash[:envelope][:body][:fault][:faultstring])
        logger.warn(summary_message)
        logger.info(request_message) unless request_message.nil?
        logger.info(response_message) unless response_message.nil?
      else
        logger.info(summary_message)
        logger.debug(request_message) unless request_message.nil?
        logger.debug(response_message) unless response_message.nil?
      end
    end

    # Format headers, redacting sensitive information.
    def format_headers(headers)
      return headers.map do |k, v|
        v = REDACTED_STR if k == 'Authorization'
        [k, v].join(': ')
      end.join(', ')
    end

    # Sanitize the request body, redacting sensitive information.
    def sanitize_request(body)
      return body.gsub(/(developerToken>|httpAuthorizationHeader>)[^<]+(<\/)/,
          '\1' + REDACTED_STR + '\2')
    end

    # Format the fault message by capping length and removing newlines.
    def format_fault(message)
      if message.length > MAX_FAULT_LOG_LENGTH
        message = message[0, MAX_FAULT_LOG_LENGTH]
      end
      return message.gsub("\n", ' ')
    end

    # Check whether or not to log request summaries based on log level.
    def should_log_summary(level, is_fault)
      # Fault summaries log at WARN.
      return level <= Logger::WARN if is_fault
      # Success summaries log at INFO.
      return level <= Logger::INFO
    end

    # Check whether or not to log payloads based on log level.
    def should_log_payloads(level, is_fault)
      # Fault payloads log at INFO.
      return level <= Logger::INFO if is_fault
      # Success payloads log at DEBUG.
      return level <= Logger::DEBUG
    end

    class RequestInfo
      attr_accessor :body, :headers, :url

      def initialize(body, headers, url)
        @body, @headers, @url = body, headers, url
      end
    end

    class NoopLogger
      def method_missing(m, *args, &block)
        nil
      end
    end
  end
end
