#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
#           api.dklimkin@gmail.com (Danial Klimkin)
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
    # Whether we're making MCC-level requests.
    attr_accessor :use_mcc
    # Whether we're making validate-only requests.
    attr_accessor :validate_only
    # Whether we're making partial failure requests.
    attr_accessor :partial_failure

    def initialize(config)
      super(config)
      @use_mcc = false
      @validate_only = false
      @partial_failure = false
    end

    # Create the list of credentials to be used by the auth handler for header
    # generation.
    def credentials(version = nil)
      validate_headers_for_server
      result = case @credentials[:method]
        when :CLIENTLOGIN
          {:email => @credentials[:email],
           :password => @credentials[:password]}
        when :OAUTH
          {:oauth_consumer_key => @credentials[:oauth_consumer_key],
           :oauth_consumer_secret => @credentials[:oauth_consumer_secret],
           :oauth_verification_code => @credentials[:oauth_verification_code],
           :oauth_token => @credentials[:oauth_token],
           :oauth_token_secret => @credentials[:oauth_token_secret],
           :oauth_callback => @credentials[:oauth_callback],
           :oauth_method => @credentials[:oauth_method]}
      end
      client_lib = 'Ruby-AwApi-%s|' % AdwordsApi::ApiConfig::CLIENT_LIB_VERSION
      user_agent = @credentials[:user_agent] || $0
      user_agent = client_lib + user_agent
      user_agent_symbol = (version == :v13) ? :useragent : :userAgent
      result[user_agent_symbol] = user_agent
      result[:developerToken] = @credentials[:developer_token]
      unless @use_mcc
        if @credentials[:client_email]
          result[:clientEmail] = @credentials[:client_email]
        elsif @credentials[:client_customer_id]
          result[:clientCustomerId] = @credentials[:client_customer_id]
        end
      end
      if version != :v13
        result[:validateOnly] = 'true' if @validate_only
        result[:partialFailure] = 'true' if @partial_failure
      end
      return result.reject {|k,v| v.nil?}
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
      token = @credentials[:developer_token]
      client_email = @credentials[:client_email]
      (sandbox_token, sandbox_client) = case @credentials[:method]
        when :CLIENTLOGIN
          email = @credentials[:email]
          [(token =~ /#{Regexp.escape(email)}\+\+[a-zA-Z]{3}/),
           (client_email =~ /client_[1-5]\+#{Regexp.escape(email)}/)]
        when :OAUTH
          [(token =~ /.+@.+\+\+[a-zA-Z]{3}/),
           (client_email =~ /client_[1-5]\+.+@.+/)]
        else
          [nil, nil]
      end
      environment = @config.read('service.environment')
      case environment
        when :PRODUCTION
          # Only check the token, because 'client_n+x@y.tld' may be a valid
          # client email for some customers.
          if sandbox_token
            raise AdsCommon::Errors::EnvironmentMismatchError,
                'Attempting to connect to production with sandbox credentials.'
          end
        when :SANDBOX
          # Check if either the token or client email do not follow the
          # correct format. Client email may not exist, though.
          if (!sandbox_token or (!client_email.empty? and !sandbox_client))
            raise AdsCommon::Errors::EnvironmentMismatchError,
                'Attempting to connect to the sandbox with malformatted ' +
                'credentials. Please check ' +
                'http://code.google.com/apis/adwords/docs/developer/' +
                'adwords_api_sandbox.html#requestheaders for details.'
          end
      end
    end
  end
end
