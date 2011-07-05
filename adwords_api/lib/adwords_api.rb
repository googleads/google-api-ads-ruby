#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
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
# Contains the main classes for the client library. Takes care of all
# dependencies.

require 'rubygems'
gem 'soap4r', '=1.5.8'
gem 'google-ads-common', '~>0.5.0'
require 'thread'
require 'uri'
require 'ads_common/soap4r_patches'
require 'ads_common/api'
require 'ads_common/config'
require 'ads_common/auth/client_login_handler'
require 'ads_common/soap4r_headers/nested_header_handler'
require 'ads_common/soap4r_headers/single_header_handler'
require 'ads_common/soap4r_logger'
require 'adwords_api/auth/v13_login_handler'
require 'adwords_api/errors'
require 'adwords_api/api_config'
require 'adwords_api/extensions'
require 'adwords_api/soap4r_response_handler'
require 'adwords_api/credential_handler'
require 'adwords_api/utils'

# Main namespace for all the client library's modules and classes.
module AdwordsApi

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class Api < AdsCommon::Api
    # Mutex object for controlling concurrent access to API object data
    attr_reader :mutex
    # Number of units spent on the last operation via this API object
    attr_accessor :last_units
    # Number of units spent in total, via this API object
    attr_accessor :total_units

    # Accessor for client login handler, so that we can access the token.
    attr_accessor :client_login_handler

    public

    # Getter for the API service configurations
    def api_config
      AdwordsApi::ApiConfig
    end

    # Auxiliary method to create a new Soap4rResponseHandler, of the type we
    # want to use for AdWords logging
    def create_callback_handler
      AdwordsApi::Soap4rResponseHandler.new(self)
    end

    # Retrieve single NestedHeaderHandler for v20xx and one SingleHeaderHandler
    # per credential for v13.
    #
    # Args:
    # - auth_handler: instance of an AdsCommon::Auth::BaseHandler subclass to
    #   handle authentication
    # - header_list: the list of headers to be handled
    # - version: intended API version
    # - wrapper: wrapper object for the service being handled
    #
    # Returns:
    # - a list of SOAP header handlers; one per provided header
    #
    def soap_header_handlers(auth_handler, header_list, version, wrapper)
      if version == :v13
        header_handlers = []
        header_list.each do |header|
          header_handlers << AdsCommon::Soap4rHeaders::SingleHeaderHandler.new(
              @credential_handler, auth_handler, header, nil, version)
        end
        return header_handlers
      else
        auth_method = @config.read('authentication.method',
            'ClientLogin').to_s.upcase.to_sym
        handlers = case auth_method
          when :CLIENTLOGIN
            ns = api_config.headers_config[:HEADER_NAMESPACE_PREAMBLE] +
                version.to_s
            top_ns = wrapper.namespace
            [AdsCommon::Soap4rHeaders::NestedHeaderHandler.new(
                @credential_handler, auth_handler,
                api_config.headers_config[:REQUEST_HEADER],
                top_ns, ns, version)]
          when :OAUTH
            raise NotImplementedError, 'OAuth authentication method is not ' +
                'supported for Soap4r backend.'
        end
        return handlers
      end
    end

    # Constructor for Api.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = AdwordsApi::CredentialHandler.new(@config)
      @drivers = {}
      @total_units = 0
      @last_units = 0
      @mutex = Mutex.new
    end

    # Helper method to provide a simple way of doing an MCC-level operation
    # without the need to change credentials. Executes a block of code as an
    # MCC-level operation and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as an MCC-level operation.
    #
    # Returns:
    # Boolean indicating whether MCC-level operations are currently enabled or
    # disabled
    #
    def use_mcc
      if block_given?
        previous = @credential_handler.use_mcc
        begin
          @credential_handler.use_mcc = true
          yield
        ensure
          @credential_handler.use_mcc = previous
        end
      end
      return @credential_handler.use_mcc
    end

    # Helper method to provide a simple way of doing an MCC-level operation
    # without the need to change credentials. Sets the value of the property
    # that controls whether MCC-level operations are enabled or disabled.
    #
    # Args:
    # - value: the new value for the property (boolean)
    #
    def use_mcc=(value)
      @credential_handler.use_mcc = value
    end

    # Helper method to provide a simple way of doing a validate-only operation
    # without the need to change credentials. Executes a block of code as an
    # validate-only operation and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as a validate-only operation.
    #
    # Returns:
    # Boolean indicating whether validate-only operations are currently enabled
    # or disabled
    #
    def validate_only
      if block_given?
        previous = @credential_handler.validate_only
        begin
          @credential_handler.validate_only = true
          yield
        ensure
          @credential_handler.validate_only = previous
        end
      end
      return @credential_handler.validate_only
    end

    # Helper method to provide a simple way of performing validate-only
    # operations. Sets the value of the property
    # that controls whether validate-only operations are enabled or disabled.
    #
    # Args:
    # - value: the new value for the property (boolean)
    #
    def validate_only=(value)
      @credential_handler.validate_only = value
    end

    # Helper method to provide a simple way of performing requests with support
    # for partial failures. Executes a block of code with partial failures
    # enabled and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as a partial failure operation.
    #
    # Returns:
    # Boolean indicating whether partial failure operations are currently
    # enabled or disabled
    #
    def partial_failure
      if block_given?
        previous = @credential_handler.partial_failure
        begin
          @credential_handler.partial_failure = true
          yield
        ensure
          @credential_handler.partial_failure = previous
        end
      end
      return @credential_handler.partial_failure
    end

    # Helper method to provide a simple way of performing requests with support
    # for partial failures.
    #
    # Args:
    # - value: the new value for the property (boolean)
    #
    def partial_failure=(value)
      @credential_handler.partial_failure = value
    end

    private

    # Creates an appropriate authentication handler for each service (reuses the
    # ClientLogin one to avoid generating multiple tokens unnecessarily).
    #
    # Args:
    # - environment: the current working environment (production, sandbox, etc.)
    # - version: intended API version
    #
    # Returns:
    # - auth handler
    #
    def create_auth_handler(environment, version = nil)
      return (version == :v13) ?
          AdwordsApi::Auth::V13LoginHandler.new :
          super(environment)
    end

    # Handle loading of a single service.
    # Creates the driver, sets up handlers and logger, declares the appropriate
    # wrapper class and creates an instance of it.
    #
    # Args:
    # - version: intended API version. Must be a symbol.
    # - service: name for the intended service
    #
    # Returns:
    # - the simplified wrapper generated for the driver
    #
    def prepare_wrapper(version, service)
      environment = config.read('service.environment')
      api_config.do_require(version, service)
      endpoint = api_config.endpoint(environment, version, service)
      # Set endpoint if not using the default.
      if endpoint.nil? then
        driver = eval("#{api_config.interface_name(version, service)}.new")
      else
        endpoint_url = endpoint.to_s + service.to_s
        driver = eval("#{api_config.interface_name(version, service)}.new" +
                      "(\"#{endpoint_url}\")")
      end

      # Create an instance of the wrapper class for this service.
      wrapper_class = api_config.wrapper_name(version, service)
      wrapper = eval("#{wrapper_class}.new(driver, self)")

      auth_handler = get_auth_handler(environment, version)
      header_list =
          auth_handler.header_list(@credential_handler.credentials(version))

      soap_handlers = soap_header_handlers(auth_handler, header_list, version,
          wrapper)

      soap_handlers.each do |handler|
        driver.headerhandler << handler
      end

      # Add response handler to this driver for API unit usage processing.
      driver.callbackhandler = create_callback_handler
      # Plug the wiredump to our XML logger.
      driver.wiredump_dev = AdsCommon::Soap4rLogger.new(@logger, Logger::DEBUG)
      driver.options['protocol.http.ssl_config.verify_mode'] = nil
      proxy = config.read('connection.proxy')
      driver.options['protocol.http.proxy'] = proxy if proxy

      @drivers[version] ||= {}
      @drivers[version][service] = driver
      return wrapper
    end
  end
end
