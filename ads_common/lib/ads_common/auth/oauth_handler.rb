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
# This module manages OAuth authentication.

require 'oauth'

require 'ads_common/auth/base_handler'
require 'ads_common/errors'

module AdsCommon
  module Auth

    # Credentials class to handle OAuth authentication.
    class OAuthHandler < AdsCommon::Auth::BaseHandler
      IGNORED_FIELDS = [
          :email, :password, :auth_token,
          :oauth_verification_code, :oauth_consumer_secret, :oauth_consumer_key
      ]

      OAUTH_CONFIG = {
          :site => "https://www.google.com",
          :request_token_path => "/accounts/OAuthGetRequestToken",
          :access_token_path => "/accounts/OAuthGetAccessToken",
          :authorize_path => "/accounts/OAuthAuthorizeToken"
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

      def handle_error(error)
        # TODO: Add support.
        raise error
      end

      # Returns all of the fields that this auth handler will fill.
      #
      # Args:
      # - credentials: request credentials
      #
      # Returns:
      # - array with header names
      #
      def header_list(credentials)
        result = credentials.keys.map.reject do |field|
          IGNORED_FIELDS.include?(field)
        end
        result << :access_token
        return result
      end

      # Returns all of the credentials received from the CredentialHandler,
      # except for ignored fields.
      #
      # Args:
      # - credentials: request credentials
      #
      # Returns:
      # - hash with header names and values
      #
      def headers(credentials)
        result = credentials.reject do |field, value|
          IGNORED_FIELDS.include?(field)
        end
        result[:access_token] = get_token(credentials)
        return result
      end

      # Returns OAuth-specific Consumer object.
      def get_oauth_consumer()
        return @consumer
      end

      # Returns authorization string.
      def auth_string(credentials, request)
        if request.nil?
          raise AdsCommon::Errors::AuthError,
              'Request is required for OAuth generator.'
        end
        return generate_oauth_parameters_string(credentials, request)
      end

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
        oauth_params = {:consumer => @consumer,
                        :token => get_token(credentials)}
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
        if @consumer.nil?
          oauth_config = OAUTH_CONFIG.merge({:scope => @scope})
          proxy = @config.read('connection.proxy')
          oauth_config[:proxy] = proxy if !proxy.nil?
          @consumer = OAuth::Consumer.new(credentials[:oauth_consumer_key],
              credentials[:oauth_consumer_secret], oauth_config)
        end
        return create_token_from_credentials(credentials) ||
            generate_access_token(credentials)
      end

      # Creates access token based on data from credentials.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      #
      # Returns:
      # - The auth token for the account (as an AccessToken)
      #
      def create_token_from_credentials(credentials)
        access_token = nil

        token = credentials[:oauth_token]
        if !token.nil? and !token.empty?
          method = credentials[:oauth_method] || DEFAULT_METHOD
          access_token = case method
            when 'RSA-SHA1'
              OAuth::AccessToken.from_hash(@consumer, {:oauth_token => token})
            when 'HMAC-SHA1'
              token_secret = credentials[:oauth_token_secret]
              if token_secret.nil? or token_secret.empty?
                @logger.warn(("The 'token' specified for method %s but " +
                    "'token secret' is not available, ignoring token") % method)
                nil
              else
                OAuth::AccessToken.from_hash(@consumer, {
                    :oauth_token => token, :oauth_token_secret => token_secret})
              end
          end
        end
        return access_token
      end

      # Generates new request tokens and authorizes it to get access token.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      #
      # Returns:
      # - The auth token for the account (as an AccessToken)
      #
      def generate_access_token(credentials)
        token = nil
        callback = credentials[:oauth_callback] || DEFAULT_CALLBACK
        begin
          if @request_token.nil?
            @request_token = credentials[:oauth_request_token] ||
                 @consumer.get_request_token({:oauth_callback => callback},
                     {:scope => @scope})
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

      # Extracts key-value pairs from OAuth server response.
      #
      # Args:
      # - text: server response string
      #
      # Returns:
      # - Hash of key-value pairs
      #
      def parse_token_text(text)
        result = {}
        text.split('&').each do |line|
          key, value = line.split("=")
          result[key.to_sym] = value
        end
        return result
      end
    end
  end
end
