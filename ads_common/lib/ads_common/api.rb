#!/usr/bin/ruby
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Generic Api class, to be inherited from and extended by specific APIs.

require 'logger'

require 'ads_common/errors'
require 'ads_common/auth/client_login_handler'
require 'ads_common/auth/oauth_handler'

module AdsCommon
  class Api

    # Methods that return the client library configuration. Needs to be
    # redefined in subclasses.
    attr_reader :config

    # Credential handler objects used for authentication.
    attr_reader :credential_handler

    # The logger for this API object.
    attr_reader :logger

    # Constructor for API.
    def initialize(provided_config = nil)
      load_config(provided_config)
      provided_logger = @config.read('library.logger')
      self.logger = (provided_logger.nil?) ?
          create_default_logger() : provided_logger

      # Check for valid environment.
      env_string = @config.read('service.environment')
      environment = (env_string.nil?) ? api_config.default_environment :
          env_string.to_s.upcase.to_sym
      if api_config.environments.include?(environment)
        @config.set('service.environment', environment)
      else
        raise AdsCommon::Errors::Error,
            "Unknown or unspecified environment: \"%s\"" % env_string
      end

      # Service wrappers.
      @wrappers = {}
    end

    # Sets the logger to use.
    def logger=(logger)
      @logger = logger
      @config.set('library.logger', @logger)
    end

    # Getter for the API service configurations.
    def api_config
      AdsCommon::ApiConfig
    end

    # Obtain an API service, given a version and its name.
    #
    # Args:
    # - name: name for the intended service
    # - version: intended API version.
    #
    # Returns:
    # - the service wrapper for the intended service.
    #
    def service(name, version = nil)
      name = name.to_sym
      version = (version.nil?) ? api_config.default_version : version.to_sym

      # Check if version exists.
      if !api_config.versions.include?(version)
        raise AdsCommon::Errors::Error, "Unknown version '%s'." % version
      end

      # Check if the current environment supports the requested version.
      environment = @config.read('service.environment')
      if !api_config.environment_has_version(environment, version)
        raise AdsCommon::Errors::Error,
            "Environment '%s' does not support version '%s'." %
            [environment, version]
      end

      # Check if the specified version has the requested service.
      if !api_config.version_has_service(version, name)
        raise AdsCommon::Errors::Error,
            "Version '%s' does not contain service '%s'", [version, name]
      end

      # Try to re-use the service for this version if it was requested before.
      wrapper = if @wrappers.include?(version) && @wrappers[version][name]
        @wrappers[version][name]
      else
        @wrappers[version] ||= {}
        @wrappers[version][name] = prepare_wrapper(version, name)
      end
      return wrapper
    end

    # Authorize with specified authentication method.
    #
    # Args:
    #  - parameters - hash of credentials to add to configuration
    #  - block - code block to handle auth login url
    #
    # Returns:
    #  - Auth token for the method
    #
    # Throws:
    #  - AdsCommon::Errors::AuthError or derived if authetication error has
    #    occured
    #
    def authorize(parameters = {}, &block)
      parameters.each_pair do |key, value|
        @credential_handler.set_credential(key, value)
      end
      @auth_handler = get_auth_handler(@config.read('service.environment'))

      # Token might still be valid, if not ask for a new one.
      token = @auth_handler.get_token() ||
        begin
          @auth_handler.get_token(@credential_handler.credentials)
        rescue AdsCommon::Errors::OAuthVerificationRequired => e
          verification_code = (block_given?) ? yield(e.oauth_url) : nil
          # Retry with verification code if one provided.
          if verification_code
            @credential_handler.set_credential(
                :oauth_verification_code, verification_code)
            retry
          else
            raise e
          end
        end
      return token
    end

    private

    # Retrieve the SOAP header handlers to plug into the drivers. Needs to
    # be implemented on the specific API, because of the different types of
    # SOAP headers (optional parameter specifying API version).
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
      raise NotImplementedError, 'soap_header_handlers not overriden.'
    end

    # Auxiliary method to get an authentication handler. Creates a new one if
    # the handler has not been initialized yet.
    #
    # Args:
    # - environment: the current working environment (production, sandbox, etc.)
    #
    # Returns:
    # - auth handler
    #
    def get_auth_handler(environment)
      @auth_handler = create_auth_handler(environment) if @auth_handler.nil?
      return @auth_handler
    end

    # Auxiliary method to create an authentication handler.
    #
    # Args:
    # - environment: the current working environment (production, sandbox, etc.)
    #
    # Returns:
    # - auth handler
    #
    def create_auth_handler(environment)
      auth_method_str = @config.read('authentication.method', 'ClientLogin')
      auth_method = auth_method_str.to_s.upcase.to_sym
      return case auth_method
        when :CLIENTLOGIN
          auth_server = api_config.auth_server(environment)
          AdsCommon::Auth::ClientLoginHandler.new(config, auth_server,
              api_config.headers_config[:LOGIN_SERVICE_NAME])
        when :OAUTH
          scope = api_config.environment_config()[environment][:oauth_scope]
          AdsCommon::Auth::OAuthHandler.new(config, scope)
        else
          raise AdsCommon::Errors::Error,
              "Unknown authentication method '%s'." % auth_method_str
        end
    end

    # Handle loading of a single service wrapper. Needs to be implemented on
    # specific API level.
    #
    # Args:
    # - version: intended API version. Must be a symbol.
    # - service: name for the intended service. Must be a symbol.
    #
    # Returns:
    # - a wrapper generated for the service.
    #
    def prepare_wrapper(version, service)
      raise NotImplementedError, 'prepare_wrapper not overriden.'
    end

    # Auxiliary method to create a default Logger.
    def create_default_logger()
      logger = Logger.new(STDOUT)
      logger.level = get_log_level_for_string(
          @config.read('library.log_level', Logger::INFO))
      return logger
    end

    # Helper method to load the default configuration file or a given config.
    def load_config(provided_config = nil)
      @config = (provided_config.nil?) ?
          AdsCommon::Config.new(
              File.join(ENV['HOME'], default_config_filename)) :
          AdsCommon::Config.new(provided_config)
    end

    # Gets the default config filename.
    def default_config_filename()
      return api_config.default_config_filename
    end

    # Converts log level string (from config) to Logger value.
    def get_log_level_for_string(log_level)
      result = log_level
      if log_level.is_a?(String)
        result = case log_level.upcase
          when 'FATAL' then Logger::FATAL
          when 'ERROR' then Logger::ERROR
          when 'WARN' then Logger::WARN
          when 'INFO' then Logger::INFO
          when 'DEBUG' then Logger::DEBUG
        end
      end
      return result
    end
  end
end
