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
# Contains the main classes for the client library. Takes care of all
# dependencies.

gem 'google-ads-common', '~>0.5.3'

require 'ads_common/api'
require 'ads_common/savon_service'
require 'ads_common/savon_headers/oauth_header_handler'
require 'ads_common/savon_headers/simple_header_handler'
require 'dfp_api/api_config'
require 'dfp_api/client_login_header_handler'
require 'dfp_api/credential_handler'
require 'dfp_api/errors'

# Main namespace for all the client library's modules and classes.
module DfpApi

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class Api < AdsCommon::Api
    # Constructor for API.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = DfpApi::CredentialHandler.new(@config)
    end

    # Getter for the API service configurations.
    def api_config
      DfpApi::ApiConfig
    end

    # Sets the logger to use.
    def logger=(logger)
      super(logger)
      AdsCommon::SavonService.logger = logger
    end

    private

    # Retrieve DFP HeaderHandlers per credential.
    def soap_header_handlers(auth_handler, header_list, version, namespace)
      handler = nil
      auth_method = @config.read('authentication.method', :CLIENTLOGIN)
      handler = case auth_method
        when :CLIENTLOGIN
          DfpApi::ClientLoginHeaderHandler
        when :OAUTH
          AdsCommon::SavonHeaders::OAuthHeaderHandler
      end
      ns = api_config.headers_config[:HEADER_NAMESPACE_PREAMBLE] + version.to_s
      return [handler.new(@credential_handler, auth_handler,
          api_config.headers_config[:REQUEST_HEADER], ns, version)]
    end
  end
end
