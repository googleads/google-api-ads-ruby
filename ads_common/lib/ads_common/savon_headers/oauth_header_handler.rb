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
# Handles SOAP headers and namespaces definition for OAuth type header.

require 'oauth'

require 'ads_common/savon_headers/base_header_handler'

module AdsCommon
  module SavonHeaders
    class OAuthHeaderHandler < BaseHeaderHandler
      # Enriches soap object with API-specific headers like namespaces, login
      # credentials etc. Sets the default namespace for the body to the one
      # specified in initializer.
      #
      # Args:
      #  - request: a HTTPI Request for extra configuration
      #  - soap: a Savon soap object to fill fields in
      #  - args: request parameters to adjust for namespaces
      #
      # Returns:
      #  - Modified soap structure
      #
      def prepare_request(request, soap, args)
        super(request, soap, args)
        generate_headers(request, soap)
      end

      private

      # Generates SOAP request header with login credentials and namespace
      # definition for OAuth authentication.
      #
      # Args:
      #  - request: a HTTPI Request to generate headers for
      #  - soap: a Savon soap object to fill fields in
      #
      # Returns:
      #  - Hash containing a header with filled in credentials
      #
      def generate_headers(request, soap)
        headers = @auth_handler.headers(@credential_handler.credentials)
        request_header = headers.inject({}) do |request_header, (header, value)|
          if header == :access_token
            request.headers['Authorization'] =
                generate_oauth_parameters_string(value, soap.endpoint)
          else
            request_header[prepend_namespace(header)] = value
          end
          request_header
        end
        soap.header[prepend_namespace(@element_name)] = request_header
      end

      # Generates auth string for OAuth method of authentication.
      #
      # Args:
      # - access_token: an initialized OAuth AccessToken
      # - url: request URL to generate auth string for
      #
      # Returns:
      # - Authentication string
      #
      def generate_oauth_parameters_string(access_token, url)
        consumer = @auth_handler.get_oauth_consumer()
        request = consumer.create_signed_request(:post, url, access_token)
        return request.get_fields('Authorization').first
      end
    end
  end
end
