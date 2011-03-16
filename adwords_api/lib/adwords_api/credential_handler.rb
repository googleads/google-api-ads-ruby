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
# AdWords-specific credential handler.

require 'ads_common/credential_handler'
require 'adwords_api/api_config'

module AdwordsApi
  class CredentialHandler < AdsCommon::CredentialHandler
    SERVICE_NAME = 'adwords'

    # Whether we're making MCC-level requests.
    attr_accessor :use_mcc
    # Whether we're making validate-only requests.
    attr_accessor :validate_only
    # Whether we're making partial failure requests.
    attr_accessor :partial_failure

    def initialize(config)
      super
      @use_mcc = false
      @validate_only = false
      @partial_failure = false
    end

    # Create the list of credentials to be used by the auth handler for header
    # generation.
    def credentials(version = nil)
      validate_headers_for_server
      result = {}
      client_lib = 'Ruby-AwApi-%s|' % AdwordsApi::ApiConfig::CLIENT_LIB_VERSION
      user_agent = @credentials[:user_agent]
      user_agent = $0 if user_agent.nil?
      user_agent = client_lib + user_agent
      if (version == :v13)
        result[:useragent] = user_agent
      else
        result[:userAgent] = user_agent
      end
      result[:email] = @credentials[:email]
      result[:password] = @credentials[:password]
      result[:developerToken] = @credentials[:developer_token]
      unless @use_mcc
        if @credentials[:client_email]
          result[:clientEmail] = @credentials[:client_email]
        elsif @credentials[:client_customer_id]
          result[:clientCustomerId] = @credentials[:client_customer_id]
        end
      end
      if version != :v13 and @validate_only
        result[:validateOnly] = 'true'
      end
      if version != :v13 and @partial_failure
        result[:partialFailure] = 'true'
      end
      return result
    end

    private

    # Validates that the right credentials are being used for the chosen
    # environment.
    #
    # Raises:
    # Adwordsapi::Error::EnvironmentMismatchError if sandbox credentials are
    # being used for production or vice-versa.
    #
    def validate_headers_for_server
      email = @credentials[:email]
      token = @credentials[:developer_token]
      client = @credentials[:client_email]
      environment = @config.read('service.environment').to_s.upcase

      sandbox_token = (token =~ /#{Regexp.escape(email)}\+\+[a-zA-Z]{3}/)
      sandbox_client = (client =~ /client_[1-5]\+#{Regexp.escape(email)}/)

      # Only check the token, because 'client_n+x@y.tld' may be a valid client
      # email for some customers.
      if environment == 'PRODUCTION' and sandbox_token
        raise AdsCommon::Errors::EnvironmentMismatchError,
            'Attempting to connect to production with sandbox credentials.'
      # Check if either the token or client email do not follow the correct
      # format. Client email may not exist, though.
      elsif environment == 'SANDBOX' and (!sandbox_token or
          (client.length > 0 and !sandbox_client))
        raise AdsCommon::Errors::EnvironmentMismatchError,
            'Attempting to connect to the sandbox with malformatted ' +
            'credentials. Please check ' +
            'http://code.google.com/apis/adwords/docs/developer/' +
            'adwords_api_sandbox.html#requestheaders for details.'
      end
    end
  end
end
