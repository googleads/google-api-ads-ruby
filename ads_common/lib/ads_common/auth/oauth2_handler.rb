# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This module manages OAuth2.0 authentication.

require 'oauth2'

require 'ads_common/auth/base_handler'
require 'ads_common/errors'

module AdsCommon
  module Auth

    # Credentials class to handle OAuth2.0 authentication.
    class OAuth2Handler < AdsCommon::Auth::BaseHandler
      OAUTH2_CONFIG = {
          :site => 'https://accounts.google.com',
          :authorize_url => '/o/oauth2/auth',
          :token_url => '/o/oauth2/token'
      }
      OAUTH2_HEADER = 'Bearer %s'
      DEFAULT_CALLBACK = 'urn:ietf:wg:oauth:2.0:oob'

      # Initializes the OAuthHandler2 with all the necessary details.
      #
      # Args:
      # - config: Config object with library configuration
      # - scope: OAuth authorization scope
      #
      def initialize(config, scope)
        super(config)
        @scope = scope
      end

      # Invalidates the stored token if the required credential has changed.
      def property_changed(prop, value)
        oauth2_keys = [:oauth2_client_id, :oauth2_client_secret, :oauth2_token]
        if oauth2_keys.include?(prop)
          @token, @client = nil, nil
        end
      end

      def handle_error(error)
        # TODO: Add support.
        get_logger().error(error)
        raise error
      end

      # Returns authorization string.
      def auth_string(credentials, request = nil)
        return generate_oauth2_parameters_string(credentials)
      end

      # Overrides base get_token method to account for the token expiration.
      def get_token(credentials = nil)
        token = super(credentials)
        token = refresh_token! if !token.nil? && token.expired?
        return oauth_token_to_hash(token)
      end

      # Refreshes access token from refresh token.
      def refresh_token!()
        return nil if @token.nil? or @token.refresh_token.nil?
        @token = @token.refresh!
        return @token
      end

      private

      # Generates auth string for OAuth2.0 method of authentication.
      #
      # Args:
      # - credentials: credentials set for authorization
      #
      # Returns:
      # - Authentication string
      #
      def generate_oauth2_parameters_string(credentials)
        token = get_token(credentials)
        return OAUTH2_HEADER % token[:access_token]
      end

      # Auxiliary method to validate the credentials for token generation.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      #
      # Raises:
      # - AdsCommon::Errors::AuthError if validation fails
      #
      def validate_credentials(credentials)
        if @scope.nil?
          raise AdsCommon::Errors::AuthError, 'Scope is not specified.'
        end

        if credentials.nil?
          raise AdsCommon::Errors::AuthError, 'No credentials supplied.'
        end

        if credentials[:oauth2_client_id].nil?
          raise AdsCommon::Errors::AuthError,
              'Client id is not included in the credentials.'
        end

        if credentials[:oauth2_client_secret].nil?
          raise AdsCommon::Errors::AuthError,
              'Client secret is not included in the credentials.'
        end

        if credentials[:oauth2_token] &&
            !credentials[:oauth2_token].kind_of?(Hash)
          raise AdsCommon::Errors::AuthError,
              'OAuth2 token provided must be a Hash'
        end
      end

      # Auxiliary method to generate an authentication token for logging via
      # the OAuth2.0 API.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      #
      # Returns:
      # - The auth token for the account (as an AccessToken)
      #
      # Raises:
      # - AdsCommon::Errors::AuthError if authentication fails
      # - AdsCommon::Errors::OAuthVerificationRequired if OAuth verification
      #   code required
      #
      def create_token(credentials)
        validate_credentials(credentials)
        @client ||= create_client(credentials)
        return create_token_from_credentials(credentials, @client) ||
            generate_access_token(credentials, @client)
      end

      def create_client(credentials)
        oauth2_config = OAUTH2_CONFIG.dup()
        proxy = @config.read('connection.proxy')
        unless proxy.nil?
          oauth2_config.merge!({:connection_opts => {:proxy => proxy}})
        end
        client = OAuth2::Client.new(credentials[:oauth2_client_id],
                                    credentials[:oauth2_client_secret],
                                    oauth2_config)
        return client
      end

      # Creates access token based on data from credentials.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed. Has to include :oauth2_token key with a hash value that
      #   represents a stored OAuth2 access token
      # - client: OAuth2 client for the current configuration
      #
      # Returns:
      # - The auth token for the account (as an AccessToken)
      #
      def create_token_from_credentials(credentials, client)
        access_token = nil
        oauth2_token_hash = credentials[:oauth2_token]
        if !oauth2_token_hash.nil? && oauth2_token_hash.kind_of?(Hash)
          token_data = oauth2_token_hash.dup()
          access_token = OAuth2::AccessToken.from_hash(client, token_data)
        end
        return access_token
      end

      # Generates new request tokens and authorizes it to get access token.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      # - client: OAuth2 client for the current configuration
      #
      # Returns:
      # - The auth token for the account (as an AccessToken)
      #
      def generate_access_token(credentials, client)
        token = nil
        begin
          callback = credentials[:oauth2_callback] || DEFAULT_CALLBACK
          verification_code = credentials[:oauth2_verification_code]
          if verification_code.nil? || verification_code.empty?
            auth_options = {
                :redirect_uri => callback,
                :scope => @scope,
                :state => credentials[:oauth2_state],
                :access_type => credentials[:oauth2_access_type],
                :approval_prompt => credentials[:oauth2_approval_prompt]
            }.reject {|k, v| v.nil?}
            auth_url = client.auth_code.authorize_url(auth_options)
            raise AdsCommon::Errors::OAuth2VerificationRequired.new(auth_url)
          else
            token = @client.auth_code.get_token(verification_code,
                                                {:redirect_uri => callback})
          end
        rescue OAuth::Unauthorized => e
          raise AdsCommon::Errors::AuthError,
              'Authorization error occured: %s' % e
        end
        return token
      end

      # Converts OAuth token object into hash structure.
      def oauth_token_to_hash(token)
        return token.nil? ? nil :
            {
              :access_token => token.token,
              :refresh_token => token.refresh_token,
              :expires_in => token.expires_in,
              :expires_at => token.expires_at,
              :params => token.params,
              :options => token.options
            }
      end
    end
  end
end
