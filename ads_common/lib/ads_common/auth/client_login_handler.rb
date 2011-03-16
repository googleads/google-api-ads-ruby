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
# This module manages ClientLogin authentication. It either uses a user-provided
# auth token, or automatically connects to Google's ClientLogin service and
# generates an auth token that can be used to login to an API.

require 'cgi'
require 'ads_common/http'
require 'ads_common/auth/base_handler'
require 'ads_common/errors'

module AdsCommon
  module Auth

    # Credentials class to handle ClientLogin authentication.
    class ClientLoginHandler < AdsCommon::Auth::BaseHandler

      ACCOUNT_TYPE = 'GOOGLE'
      AUTH_PATH = '/accounts/ClientLogin'
      IGNORED_FIELDS = [:email, :password, :auth_token]

      # Initializes the ClientLoginHandler with all the necessary details.
      def initialize(config, server, service_name)
        @token = config.read('authentication.auth_token')
        @config = config
        @server = server
        @service_name = service_name
      end

      # Invalidates the stored token if the email, password or provided auth
      # token have changed.
      def property_changed(prop, value)
        case prop
        when :auth_token
          @token = config.read('authentication.auth_token')
        when :email, :password
          @token = nil
        end
      end

      # Handle specific ClientLogin errors.
      def handle_error(error)
        # TODO: Add support for automatically regenerating auth tokens when they
        # expire.
        raise error
      end

      # Returns all of the fields that this auth handler will fill.
      def header_list(credentials)
        result = []
        result << :authToken
        credentials.each do |p, v|
          result << p unless IGNORED_FIELDS.include?(p)
        end
        return result
      end

      # Returns all of the credentials received from the CredentialHandler,
      # except for email and password.
      def headers(credentials)
        @token = generate_token(credentials) if @token == nil
        result = {}
        result[:authToken] = @token
        credentials.each do |p, v|
          result[p] = v unless IGNORED_FIELDS.include?(p)
        end
        return result
      end

      private

      # Auxiliary method to validate the credentials for token generation.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      #
      #
      # Raises:
      # AdsCommon::Errors::AuthError if validation fails.
      #
      def validate_credentials(credentials)
        if credentials.nil?
          raise AdsCommon::Errors::AuthError,
              'No credentials supplied.'
        end

        if credentials[:email].nil?
          raise AdsCommon::Errors::AuthError,
              'Email address not included in credentials.'
        end

        if credentials[:password].nil?
          raise AdsCommon::Errors::AuthError,
              'Password not included in credentials.'
        end
      end

      # Auxiliary method to generate an authentication token for logging via
      # the ClientLogin API.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      #
      # Returns:
      # The auth token for the account (as a string).
      #
      # Raises:
      # AdsCommon::Errors::AuthError if authentication fails.
      #
      def generate_token(credentials)
        validate_credentials(credentials)

        email = CGI.escape(credentials[:email])
        password = CGI.escape(credentials[:password])

        url = @server + AUTH_PATH

        data = "accountType=%s&Email=%s&Passwd=%s&service=%s" %
            [ACCOUNT_TYPE, email, password, @service_name]
        headers = {'Content-Type' => 'application/x-www-form-urlencoded'}

        response = AdsCommon::Http.post_response(url, data, @config, headers)
        results = parse_token_text(response.body)

        if response.code == 200 and results.include?(:Auth)
          return results[:Auth]
        else
          error_message = "Login failed for email %s: HTTP code %d." %
              [credentials[:email], response.code]
          if results.include?(:Error)
            error_message += " Error: %s." % results[:Error]
          else
            error_message += " Raw error: %s." % response.body
          end
          if results.include?(:Info)
            error_message += " Info: %s." % results[:Info]
          end
          raise AdsCommon::Errors::AuthError, error_message
        end
      end

      # Extracts key-value pairs from ClientLogin server response.
      #
      # Args:
      # - text: server response string.
      #
      # Returns:
      #   Hash of key-value pairs.
      #
      def parse_token_text(text)
        result = {}
        text.split("\n").each do |line|
          key, value = line.split("=")
          result[key.to_sym] = value
        end
        return result
      end
    end
  end
end
