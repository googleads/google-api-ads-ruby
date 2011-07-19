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
# Contains the main classes for the client library.

require 'rubygems'
gem 'google-ads-common', '~>0.5.0'
require 'thread'
require 'ads_common/api'
require 'ads_common/auth/oauth_handler'
require 'ads_common/savon_headers/oauth_header_handler'
require 'ads_common/savon_headers/simple_header_handler'
require 'adwords_api/api_config'
require 'adwords_api/client_login_header_handler'
require 'adwords_api/credential_handler'
require 'adwords_api/errors'
require 'adwords_api/v13_login_handler'

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

    # Getter for the API service configurations
    def api_config
      AdwordsApi::ApiConfig
    end

    # Constructor for API.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = AdwordsApi::CredentialHandler.new(@config)
      @total_units = 0
      @last_units = 0
      @mutex = Mutex.new
    end

    # Retrieve single NestedHeaderHandler for v20xx and one SingleHeaderHandler
    # per credential for v13.
    #
    # Args:
    # - auth_handler: instance of an AdsCommon::Auth::BaseHandler subclass to
    #   handle authentication
    # - header_list: the list of headers to be handled
    # - version: intended API version
    # - namespace: namespace to use as default for body
    #
    # Returns:
    # - a list of SOAP header handlers; one per provided header
    #
    def soap_header_handlers(auth_handler, header_list, version, namespace)
      auth_method = @config.read('authentication.method',
          'ClientLogin').to_s.upcase.to_sym

      handlers = []

      if version == :v13
        if auth_method == :OAUTH
          # v13 has no OAuth support, trying to fallback to ClientLogin.
          auth_handler = client_login_handler()
        end
        handlers = header_list.map do |header|
          AdsCommon::SavonHeaders::SimpleHeaderHandler.new(
              @credential_handler, auth_handler, header, nil, version)
        end
      else
        handlers = case auth_method
          when :CLIENTLOGIN
            auth_ns = api_config.headers_config[:AUTH_NAMESPACE_PREAMBLE] +
                version.to_s
            [AdwordsApi::ClientLoginHeaderHandler.new(
             @credential_handler, auth_handler,
             api_config.headers_config[:REQUEST_HEADER], namespace, auth_ns,
             version)]
          when :OAUTH
            [AdsCommon::SavonHeaders::OAuthHeaderHandler.new(
             @credential_handler, auth_handler,
             api_config.headers_config[:REQUEST_HEADER], namespace, version)]
        end
      end
      return handlers
    end

    # Accessor for client login handler, so that we can access the token.
    # This is a temporary solution for v13 and for v2009+ until full OAuth
    # support is available.
    def client_login_handler()
      if @client_login_handler.nil?
        auth_method_str = @config.read('authentication.method', 'ClientLogin')
        auth_method = auth_method_str.to_s.upcase.to_sym
        environment = @config.read('service.environment')
        if auth_method == :CLIENTLOGIN
          # We use client login, so we can reuse general AuthHandler.
          @client_login_handler = get_auth_handler(environment)
        else
          # We are using OAuth or something else and need to generate a handler.
          auth_server = api_config.auth_server(environment)
          @client_login_handler = AdsCommon::Auth::ClientLoginHandler.new(
              @config, auth_server,
              api_config.headers_config[:LOGIN_SERVICE_NAME])
        end
      end
      return @client_login_handler
    end

    # Helper method to provide a simple way of doing an MCC-level operation
    # without the need to change credentials. Executes a block of code as an
    # MCC-level operation and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as an MCC-level operation
    #
    # Returns:
    # - Boolean indicating whether MCC-level operations are currently enabled or
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
    # - accepts a block, which it will execute as a validate-only operation
    #
    # Returns:
    # - Boolean indicating whether validate-only operations are currently
    #   enabled or disabled
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
    # - accepts a block, which it will execute as a partial failure operation
    #
    # Returns:
    # - Boolean indicating whether partial failure operations are currently
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

    # Overrides AdsCommon::Api.get_auth_handler to allow version-specific
    # handlers.
    def get_auth_handler(environment, version)
      if @auth_handler.nil?
        @auth_handler = create_auth_handler(environment, version)
      end
      return @auth_handler
    end

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
          AdwordsApi::V13LoginHandler.new : super(environment)
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
      interface_class_name = api_config.interface_name(version, service)
      endpoint_url = endpoint.nil? ? nil : endpoint + service.to_s
      wrapper = class_for_path(interface_class_name).new(self, endpoint_url)

      auth_handler = get_auth_handler(environment, version)
      header_list =
          auth_handler.header_list(@credential_handler.credentials(version))

      soap_handlers = soap_header_handlers(auth_handler, header_list,
                                           version, wrapper.namespace)
      soap_handlers.each do |handler|
        wrapper.headerhandler << handler
      end

      return wrapper
    end

    # Converts complete class path into class object.
    def class_for_path(path)
      path.split('::').inject(Kernel) do |scope, const_name|
        scope.const_get(const_name)
      end
    end
  end
end
