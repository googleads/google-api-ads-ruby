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
# Contains the main classes for the client library.

require 'ads_common/api'
require 'ads_common/savon_headers/oauth_header_handler'
require 'ad_manager_api/api_config'
require 'ad_manager_api/credential_handler'
require 'ad_manager_api/errors'
require 'ad_manager_api/ad_manager_api_statement'
require 'ad_manager_api/ad_manager_api_datetime'
require 'ad_manager_api/pql_statement_utils'
require 'ad_manager_api/utils_reporter'

# Main namespace for all the client library's modules and classes.
module AdManagerApi

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class Api < AdsCommon::Api
    attr_reader :utils_reporter

    # Constructor for API.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = AdManagerApi::CredentialHandler.new(@config)
      @utils_reporter = AdManagerApi::UtilsReporter.new(@credential_handler)
    end

    # Getter for the API service configurations.
    def api_config
      AdManagerApi::ApiConfig
    end

    # Returns an instance of StatementBuilder object.
    def new_statement_builder(&block)
      return AdManagerApi::StatementBuilder.new(self, &block)
    end

    def new_report_statement_builder(&block)
      statement = AdManagerApi::StatementBuilder.new(self) do |sb|
        sb.limit = nil
        sb.offset = nil
      end
      statement.configure(&block)
      return statement
    end

    # Returns an instance of AdManagerDate.
    def date(*args)
      return AdManagerApi::AdManagerDate.new(self, *args)
    end

    # Returns an instance of AdManagerDate representing the current day.
    def today(*args)
      return AdManagerApi::AdManagerDate.today(self, *args)
    end

    # Returns an instance of AdManagerDateTime.
    def datetime(*args)
      return AdManagerApi::AdManagerDateTime.new(self, *args)
    end

    # Returns an instance of AdManagerDateTime representing the current time.
    def now(*args)
      return AdManagerApi::AdManagerDateTime.now(self, *args)
    end

    # Returns an instance of AdManagerDateTime in the UTC timezone.
    def utc(*args)
      return AdManagerApi::AdManagerDateTime.utc(self, *args)
    end

    private

    # Retrieve Ad Manager HeaderHandler per credential.
    def soap_header_handler(auth_handler, version, header_ns, default_ns)
      auth_method = @config.read('authentication.method', :OAUTH2)
      handler_class  = case auth_method
        when :OAUTH2, :OAUTH2_SERVICE_ACCOUNT
          AdsCommon::SavonHeaders::OAuthHeaderHandler
        else
          raise AdsCommon::Errors::AuthError,
              "Unknown auth method: %s" % auth_method
      end
      return handler_class.new(@credential_handler, auth_handler, header_ns,
                               default_ns, version)
    end
  end
end
