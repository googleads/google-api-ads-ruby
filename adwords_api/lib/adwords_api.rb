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
gem 'google-ads-common', '~>0.2.0'
require 'thread'
require 'uri'
require 'ads_common/logger'
require 'ads_common/soap4r_patches'
require 'ads_common/api'
require 'ads_common/config'
require 'ads_common/auth/client_login_handler'
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

    REQUEST_HEADER = 'RequestHeader'
    HEADER_NAMESPACE_PREAMBLE = 'https://adwords.google.com/api/adwords/cm/'
    LOGIN_SERVICE_NAME = 'adwords'

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
        ns = HEADER_NAMESPACE_PREAMBLE + version.to_s
        top_ns = wrapper.namespace
        return [AdsCommon::Soap4rHeaders::NestedHeaderHandler.new(
            @credential_handler, auth_handler, REQUEST_HEADER, top_ns, ns,
            version)]
      end
    end

    # Constructor for Api.
    def initialize(provided_config = nil)
      load_config(provided_config)
      @credential_handler = AdwordsApi::CredentialHandler.new(@config)
      environment = config.read('service.environment').upcase.to_sym
      if !api_config.environments.include? environment
        raise AdsCommon::Errors::Error,
            "Unknown environment #{environment}"
      end
      @drivers = Hash.new
      @wrappers = Hash.new
      @total_units = 0
      @last_units = 0
      log_to_console = !ENV['ADWORDSAPI_DEBUG'].nil? &&
          ENV['ADWORDSAPI_DEBUG'].upcase == 'TRUE'
      @xml_logger = AdsCommon::Logger.new('soap_xml', log_to_console)
      @request_logger = AdsCommon::Logger.new('request_info')
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
    # - version: intended API version
    # - environment: the current working environment (production, sandbox, etc.)
    #
    # Returns:
    # - auth handler
    #
    def create_auth_handler(version, environment)
      if version == :v13
        return AdwordsApi::Auth::V13LoginHandler.new
      else
        if @client_login_handler.nil?
          auth_server = api_config.auth_server(environment)
          @client_login_handler =
              AdsCommon::Auth::ClientLoginHandler.new(config, auth_server,
                  LOGIN_SERVICE_NAME)
        end
        return @client_login_handler
      end
    end

    # Helper method to load the default configuration file or a given config.
    #
    # Args:
    # - provided_config: a configuration hash, if you wish to use a specific
    #   configuration rather than use the default
    #
    def load_config(provided_config = nil)
      @config = AdsCommon::Config.new
      if !provided_config
        filename = File.join(ENV['HOME'], 'adwords_api.yml')
        @config.load(filename)
      else
        @config.set_all(provided_config)
      end
    end
  end
end
