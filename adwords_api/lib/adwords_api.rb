# Encoding: utf-8
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
#           api.dklimkin@gmail.com (Danial Klimkin)
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
# Contains the main classes for the client library.

require 'ads_common/api'
require 'ads_common/savon_headers/oauth_header_handler'
require 'adwords_api/api_config'
require 'adwords_api/credential_handler'
require 'adwords_api/errors'
require 'adwords_api/report_utils'

# Main namespace for all the client library's modules and classes.
module AdwordsApi

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class Api < AdsCommon::Api

    # Constructor for API.
    def initialize(provided_config = nil)
      super(provided_config)
      @credential_handler = AdwordsApi::CredentialHandler.new(@config)
    end

    # Getter for the API service configurations
    def api_config()
      AdwordsApi::ApiConfig
    end

    # Retrieve correct soap_header_handler.
    #
    # Args:
    # - auth_handler: instance of an AdsCommon::Auth::BaseHandler subclass to
    #   handle authentication
    # - version: intended API version
    # - header_ns: header namespace
    # - default_ns: default namespace
    #
    # Returns:
    # - SOAP header handler
    #
    def soap_header_handler(auth_handler, version, header_ns, default_ns)
      auth_method = @config.read('authentication.method', :OAUTH2)
      handler_class = case auth_method
        when :OAUTH2, :OAUTH2_JWT
          AdsCommon::SavonHeaders::OAuthHeaderHandler
        else
          raise AdsCommon::Errors::AuthError,
              "Unknown auth method: %s" % auth_method
        end
      return handler_class.new(@credential_handler, auth_handler, header_ns,
                                  default_ns, version)
    end

    # Helper method to provide a simple way of doing a validate-only operation
    # without the need to change credentials. Executes a block of code as an
    # validate-only operation and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as a validate-only operation
    #
    # Returns:
    # - block execution result, if block given
    # - boolean indicating whether validate-only operations are currently
    #   enabled or disabled, if no block provided
    #
    def validate_only(&block)
      return (block_given?) ?
        run_with_temporary_flag(:@validate_only, true, block) :
        @credential_handler.validate_only
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

    # Helper method to skip the report header when downloading reports.
    #
    # Args:
    # - value: whether to skip the report header (boolean)
    #
    def skip_report_header=(value)
      @config.set('library.skip_report_header', value)
    end

    # Helper method to skip the report summary when downloading reports.
    #
    # Args:
    # - value: whether to skip the report summary (boolean)
    #
    def skip_report_summary=(value)
      @config.set('library.skip_report_summary', value)
    end

    # Helper method to skip the column header when downloading reports.
    #
    # Args:
    # - value: whether to skip the column header (boolean)
    #
    def skip_column_header=(value)
      @config.set('library.skip_column_header', value)
    end

    # Helper method to include zero impressions when downloading reports.
    #
    # Args:
    # - value: whether to include zero impressions (boolean)
    #
    def include_zero_impressions=(value)
      @config.set('library.include_zero_impressions_header', value)
    end

    # Helper method to provide a simple way of performing requests with support
    # for partial failures. Executes a block of code with partial failures
    # enabled and/or returns the current status of the property.
    #
    # Args:
    # - accepts a block, which it will execute as a partial failure operation
    #
    # Returns:
    # - block execution result, if block given
    # - boolean indicating whether partial failure operations are currently
    # enabled or disabled, if no block provided
    #
    def partial_failure(&block)
      return (block_given?) ?
        run_with_temporary_flag(:@partial_failure, true, block) :
        @credential_handler.partial_failure
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

    # Returns an instance of ReportUtils object with all utilities relevant to
    # the reporting.
    #
    # Args:
    # - version: version of the API to use (optional).
    #
    def report_utils(version = nil)
      version = api_config.default_version if version.nil?
      # Check if version exists.
      if !api_config.versions.include?(version)
        raise AdsCommon::Errors::Error, "Unknown version '%s'" % version
      end
      return AdwordsApi::ReportUtils.new(self, version)
    end

    private

    # Executes block with a temporary flag set to a given value. Returns block
    # result.
    def run_with_temporary_flag(flag_name, flag_value, block)
      previous = @credential_handler.instance_variable_get(flag_name)
      @credential_handler.instance_variable_set(flag_name, flag_value)
      begin
        return block.call
      ensure
        @credential_handler.instance_variable_set(flag_name, previous)
      end
    end
  end
end
