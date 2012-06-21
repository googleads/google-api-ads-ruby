# Encoding: utf-8
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
# This module manages OAuth1.0a authentication.

require 'oauth'

require 'ads_common/auth/base_handler'
require 'ads_common/errors'

module AdsCommon
  module Auth

    # Credentials class to handle OAuth authentication.
    class OAuthHandler < AdsCommon::Auth::BaseHandler
      OAUTH_CONFIG = {
          :site => 'https://www.google.com',
          :request_token_path => '/accounts/OAuthGetRequestToken',
          :access_token_path => '/accounts/OAuthGetAccessToken',
          :authorize_path => '/accounts/OAuthAuthorizeToken'
      }

      DEFAULT_CALLBACK = 'oob'
      DEFAULT_METHOD = 'HMAC-SHA1'

      # Initializes the OAuthHandler with all the necessary details.
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
        if [:oauth_consumer_key, :oauth_consumer_secret].include?(prop)
          @consumer, @token, @request_token = nil, nil, nil
        end
      end

      def handle_error(error)
        # TODO: Add support.
        get_logger().error(error)
        raise error
      end

      # Returns authorization string.
      def auth_string(credentials, request)
        if request.nil?
          raise AdsCommon::Errors::AuthError,
              'Request is required for OAuth generator.'
        end
        return generate_oauth_parameters_string(credentials, request)
      end

      private

      # Generates auth string for OAuth method of authentication.
      #
      # Args:
      # - credentials: credentials set for authorization
      # - request: a HTTPI Request to generate headers for
      #
      # Returns:
      # - Authentication string
      #
      def generate_oauth_parameters_string(credentials, request)
        # get_token() ensures @consumer is initialized.
        token = get_token(credentials)
        oauth_params = {
            :consumer => @consumer,
            :token => token
        }
        oauth_helper = OAuth::Client::Helper.new(request, oauth_params)
        return oauth_helper.header
      end

      private

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

        if credentials[:oauth_consumer_key].nil?
          raise AdsCommon::Errors::AuthError,
              'Consumer key not included in credentials.'
        end

        if credentials[:oauth_consumer_secret].nil?
          raise AdsCommon::Errors::AuthError,
              'Consumer secret not included in credentials.'
        end

        # TODO: add checks for both methods.
      end

      # Auxiliary method to generate an authentication token for logging via
      # the OAuth API.
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
        @consumer ||= create_consumer(credentials)
        return create_token_from_credentials(credentials, @consumer) ||
            generate_access_token(credentials, @consumer)
      end

      def create_consumer(credentials)
        oauth_config = OAUTH_CONFIG.merge({:scope => @scope})
        proxy = @config.read('connection.proxy')
        oauth_config[:proxy] = proxy unless proxy.nil?
        return OAuth::Consumer.new(
            credentials[:oauth_consumer_key],
            credentials[:oauth_consumer_secret],
            oauth_config)
      end

      # Creates access token based on data from credentials.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      # - consumer: OAuth consumer for the current configuration
      #
      # Returns:
      # - The auth token for the account (as an AccessToken)
      #
      def create_token_from_credentials(credentials, consumer)
        token = credentials[:oauth_token]
        if token.nil? or token.empty?
          return nil
        end

        method = credentials[:oauth_method] || DEFAULT_METHOD
        access_token = case method
          when 'RSA-SHA1'
            OAuth::AccessToken.from_hash(consumer, {:oauth_token => token})
          when 'HMAC-SHA1'
            token_secret = credentials[:oauth_token_secret]
            if token_secret.nil? or token_secret.empty?
              get_logger().warn(("The 'token' specified for method %s but " +
                  "'token secret' is not available, ignoring token") % method)
              nil
            else
              OAuth::AccessToken.from_hash(consumer, {
                  :oauth_token => token, :oauth_token_secret => token_secret})
            end
        end
        return access_token
      end

      # Generates new request tokens and authorizes it to get access token.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      # - consumer: OAuth consumer for the current configuration
      #
      # Returns:
      # - The auth token for the account (as an AccessToken)
      #
      def generate_access_token(credentials, consumer)
        token = nil
        callback = credentials[:oauth_callback] || DEFAULT_CALLBACK
        begin
          if @request_token.nil?
            @request_token = credentials[:oauth_request_token] ||
                 consumer.get_request_token(
                     {:oauth_callback => callback},
                     {:scope => @scope}
                 )
          end
          verification_code = credentials[:oauth_verification_code]
          if verification_code.nil? || verification_code.empty?
            raise_oauth_verification_error(@request_token, callback)
          else
            token = @request_token.get_access_token(
                {:oauth_verifier => verification_code})
            @request_token = nil
          end
        rescue OAuth::Unauthorized => e
          if @request_token
            raise_oauth_verification_error(@request_token, callback)
          else
            raise AdsCommon::Errors::AuthError,
                "Authorization error occured: %s" % e
          end
        end
        return token
      end

      # Raises a OAuthVerificationRequired error with auth URL for given
      # request token.
      #
      # Args:
      # - request_token: an initialized OAuth request token
      # - callback: OAuth callback URL
      #
      # Returns:
      # - never returns
      #
      # Raises:
      # - AdsCommon::Errors::OAuthVerificationRequired in all cases
      #
      def raise_oauth_verification_error(request_token, callback)
        oauth_url = request_token.authorize_url({:oauth_callback => callback})
        error = AdsCommon::Errors::OAuthVerificationRequired.new(
            oauth_url, request_token)
        raise error
      end
    end
  end
end
