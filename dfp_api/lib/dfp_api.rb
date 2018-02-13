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
require 'dfp_api/api_config'
require 'dfp_api/credential_handler'
require 'dfp_api/errors'
require 'dfp_api/dfp_api_statement'
require 'dfp_api/dfp_api_datetime'
require 'dfp_api/pql_statement_utils'
require 'dfp_api/utils_reporter'

# Main namespace for all the client library's modules and classes.
module DfpApi

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class Api < AdsCommon::Api
    attr_reader :utils_reporter

    # Constructor for API.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = DfpApi::CredentialHandler.new(@config)
      @utils_reporter = DfpApi::UtilsReporter.new(@credential_handler)
    end

    # Getter for the API service configurations.
    def api_config
      DfpApi::ApiConfig
    end

    # Returns an instance of StatementBuilder object.
    def new_statement_builder(&block)
      return DfpApi::StatementBuilder.new(self, &block)
    end

    def new_report_statement_builder(&block)
      statement = DfpApi::StatementBuilder.new(self) do |sb|
        sb.limit = nil
        sb.offset = nil
      end
      statement.configure(&block)
      return statement
    end

    # Returns an instance of DfpDate.
    def date(*args)
      return DfpApi::DfpDate.new(self, *args)
    end

    # Returns an instance of DfpDate representing the current day.
    def today(*args)
      return DfpApi::DfpDate.today(self, *args)
    end

    # Returns an instance of DfpDateTime.
    def datetime(*args)
      return DfpApi::DfpDateTime.new(self, *args)
    end

    # Returns an instance of DfpDateTime representing the current time.
    def now(*args)
      return DfpApi::DfpDateTime.now(self, *args)
    end

    # Returns an instance of DfpDateTime in the UTC timezone.
    def utc(*args)
      return DfpApi::DfpDateTime.utc(self, *args)
    end

    private

    # Retrieve DFP HeaderHandler per credential.
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
