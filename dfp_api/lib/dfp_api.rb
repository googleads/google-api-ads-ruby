#!/usr/bin/ruby
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
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

gem 'google-ads-common', '~>0.3.0'
require 'logger'
require 'ads_common/api'
require 'ads_common/config'
require 'ads_common/auth/client_login_handler'
require 'ads_common/savon_headers/simple_header_handler'
require 'dfp_api/errors'
require 'dfp_api/api_config'
require 'dfp_api/extensions'
require 'dfp_api/credential_handler'

# Main namespace for all the client library's modules and classes.
module DfpApi

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class Api < AdsCommon::Api
    # TODO move to service.rb
    HEADER_NAMESPACE_PREAMBLE = 'https://www.google.com/apis/ads/publisher/'
    REQUEST_HEADER = 'RequestHeader'
    LOGIN_SERVICE_NAME = 'gam'

    public

    # Getter for the API service configurations
    def api_config
      DfpApi::ApiConfig
    end

    # Constructor for Api
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = DfpApi::CredentialHandler.new(@config)
      env_string = config.read('service.environment')
      if env_string.nil? or
          !api_config.environments.include?(env_string.upcase.to_sym)
        raise AdsCommon::Errors::Error,
            "Unknown or unspecified environment: \"%s\"" % env_string
      end
      @drivers = Hash.new
      @wrappers = Hash.new
    end

    # Sets the logger to use.
    def logger=(logger)
      super(logger)
      Savon.configure do |config|
        config.log_level = :debug
        config.logger = logger
      end
    end

    private

    # Creates an appropriate authentication handler for each service (reuses the
    # ClientLogin one to avoid generating multiple tokens unnecessarily).
    def create_auth_handler(version, environment)
      if @client_login_handler.nil?
        auth_server = api_config.auth_server(environment)
        @client_login_handler =
            AdsCommon::Auth::ClientLoginHandler.new(config, auth_server,
                LOGIN_SERVICE_NAME)
      end
      return @client_login_handler
    end

    # Retrieve DFP HeaderHandlers per credential.
    def soap_header_handlers(auth_handler, header_list, version)
      ns = HEADER_NAMESPACE_PREAMBLE + version.to_s
      return [AdsCommon::SavonHeaders::SimpleHeaderHandler.new(
          @credential_handler, auth_handler, REQUEST_HEADER, ns, version)]
    end

    # Handle loading of a single service.
    # Creates the driver, sets up handlers, declares the appropriate wrapper
    # class and creates an instance of it.
    #
    # Args:
    # - version: intended API version. Must be an integer.
    # - service: name for the intended service
    #
    # Returns:
    # - the driver for the service
    # - the simplified wrapper generated for the driver
    #
    def prepare_driver(version, service)
      version = version.to_sym
      service = service.to_sym
      environment = config.read('service.environment')
      api_config.do_require(version, service)
      endpoint = api_config.endpoint(environment, version, service)
      interface_class_name = api_config.interface_name(version, service)
      endpoint_url = endpoint.nil? ? nil : endpoint.to_s + service.to_s
      driver = class_for_path(interface_class_name).new(endpoint_url)

      auth_handler = create_auth_handler(version, environment)
      header_list =
          auth_handler.header_list(@credential_handler.credentials(version))

      soap_handlers = soap_header_handlers(auth_handler, header_list, version)

      soap_handlers.each do |handler|
        driver.headerhandler << handler
      end

      @drivers[[version, service]] = driver
      @wrappers[[version, service]] = driver
      return driver, driver
    end

    # Converts complete class path into class object.
    def class_for_path(path)
      path.split('::').inject(Kernel) do |scope, const_name|
        scope.const_get(const_name)
      end
    end
  end
end
