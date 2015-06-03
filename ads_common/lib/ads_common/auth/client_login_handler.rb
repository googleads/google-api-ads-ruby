# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
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
      AUTH_PREFIX = 'GoogleLogin auth='
      CAPTCHA_PATH = '/accounts/'

      # Initializes the ClientLoginHandler with all the necessary details.
      def initialize(config, auth_server, service_name)
        super(config)
        @server = auth_server
        @service_name = service_name
      end

      # Invalidates the stored token if the email, password or provided auth
      # token have changed.
      def property_changed(prop, value)
        if [:email, :password].include?(prop)
          @token = nil
        end
        if :auth_token.eql?(prop)
          @token = create_token_from_string(value)
        end
      end

      # Handle specific ClientLogin errors.
      def handle_error(error)
        # TODO: Add support for automatically regenerating auth tokens when they
        # expire.
        get_logger().error(error)
        raise error
      end

      # Returns authorization string.
      def auth_string(credentials)
        return [AUTH_PREFIX, get_token(credentials)].join
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

        if credentials[:auth_token].nil?
          if credentials[:email].nil?
            raise AdsCommon::Errors::AuthError,
                'Email address not included in credentials.'
          end
          if credentials[:password].nil?
            raise AdsCommon::Errors::AuthError,
                'Password not included in credentials.'
          end
        else
          if credentials[:email] and credentials[:password]
            get_logger().warn('Both auth_token and login credentials present' +
                ', preferring auth_token.')
          end
        end
      end

      # Auxiliary method to generate an authentication token for login in via
      # the ClientLogin API.
      #
      # Args:
      # - credentials: a hash with the credentials for the account being
      #   accessed
      #
      # Returns:
      # - The auth token for the account
      #
      # Raises:
      # - AdsCommon::Errors::AuthError if authentication fails
      #
      def create_token(credentials)
        token = credentials.include?(:auth_token) ?
            create_token_from_string(credentials[:auth_token]) :
            generate_token(credentials)
        return token
      end

      # Creates token for provided auth string. Trivial for this handler.
      def create_token_from_string(token_string)
        return token_string
      end

      # Prepares POST data for ClientLogin request.
      def get_login_data(credentials)
        email = CGI.escape(credentials[:email])
        password = CGI.escape(credentials[:password])
        service_name = @service_name
        data = "accountType=%s&Email=%s&Passwd=%s&service=%s" %
            [ACCOUNT_TYPE, email, password, service_name]
        if credentials[:logintoken] and credentials[:logincaptcha]
          data += "&logintoken=%s&logincaptcha=%s" %
            [CGI.escape(credentials[:logintoken]),
             CGI.escape(credentials[:logincaptcha])]
        end
        return data
      end

      # Generates new client login token based on credentials.
      def generate_token(credentials)
        validate_credentials(credentials)

        url = @server + AUTH_PATH
        data = get_login_data(credentials)
        headers = {'Content-Type' => 'application/x-www-form-urlencoded'}

        response = AdsCommon::Http.post_response(url, data, @config, headers)
        results = parse_token_text(response.body)

        if response.code == 200 and results.include?('Auth')
          return results['Auth']
        else
          handle_login_error(credentials, response, results)
        end
      end

      # Raises relevant error based on response and parsed results.
      def handle_login_error(credentials, response, results)
        # Handling for known errors.
        if 'CaptchaRequired'.eql?(results['Error'])
          captcha_url = @server + CAPTCHA_PATH + results['CaptchaUrl']
          raise AdsCommon::Errors::CaptchaRequiredError.new(results['Error'],
              results['CaptchaToken'], captcha_url, results['Url'])
        end
        # For other errors throwing a generic error.
        error_message = "ClientLogin failed for email '%s': HTTP code %d." %
            [credentials[:email], response.code]
        error_str = results['Error'] || response.body
        error_message += " Error: %s." % error_str if error_str
        if results.include?('Info')
          error_message += " Info: %s." % results['Info']
        end
        raise AdsCommon::Errors::AuthError.new(error_message, error_str,
            results['Info'])
      end

      # Extracts key-value pairs from ClientLogin server response.
      #
      # Args:
      # - text: server response string
      #
      # Returns:
      #   Hash of key-value pairs
      #
      def parse_token_text(text)
        return text.split("\n").inject({}) do |result, line|
          key, *values = line.split('=')
          result[key] = values.join('=')
          result
        end
      end
    end
  end
end
