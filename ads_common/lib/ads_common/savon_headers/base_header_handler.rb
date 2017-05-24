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
# Base class for handlers of SOAP headers.

require 'ads_savon'

module AdsCommon
  module SavonHeaders
    class BaseHeaderHandler

      # Default namespace alias.
      DEFAULT_NAMESPACE = 'wsdl'
      DEFAULT_ELEMENT_NAME = 'RequestHeader'

      # Initializes a header handler.
      #
      # Args:
      #  - credential_handler: a header with credential data
      #  - auth_handler: a header with auth data
      #  - header_ns: namespace to use for headers
      #  - namespace: default namespace to use
      #  - version: services version
      #
      def initialize(credential_handler, auth_handler, header_ns, namespace,
                     version)
        @credential_handler = credential_handler
        @auth_handler = auth_handler
        @header_ns = header_ns
        @namespace = namespace
        @version = version
      end

      # Enriches soap object with API-specific headers like namespaces, login
      # credentials etc.
      #
      # Needs to be overriden.
      #
      # Args:
      #  - request: a HTTPI Request for extra configuration
      #  - soap: a Savon soap object to fill fields in
      #
      # Returns:
      #  - Modified request and soap structures
      #
      def prepare_request(request, soap)
        soap.namespace = @namespace
        # Sets the default namespace for the body.
        soap.input[2] = {:xmlns => @namespace}
        # Sets User-Agent in the HTTP header.
        request.headers['User-Agent'] =
            @credential_handler.generate_user_agent()
        # Set headers namespace.
        header_name = prepend_namespace(get_header_element_name())
        soap.header[:attributes!] ||= {}
        soap.header[:attributes!][header_name] ||= {}
        soap.header[:attributes!][header_name]['xmlns'] = @header_ns
        # Generate headers.
        generate_headers(request, soap)
      end

      # Returns the account/network identifier based on the current context.
      def identifier()
        return @credential_handler.identifier()
      end

      private

      # Returns element name for SOAP header.
      def get_header_element_name()
        return DEFAULT_ELEMENT_NAME
      end

      # Adds namespace to the given string.
      #
      # Args:
      #  - str: String to prepend with a namespace
      #
      # Returns:
      #  - String with a namespace
      #
      def prepend_namespace(str)
        return "%s:%s" % [DEFAULT_NAMESPACE, str]
      end

      # Generates SOAP headers with the default request header element.
      def generate_headers(request, soap)
        element_name = get_header_element_name()
        soap.header[prepend_namespace(element_name)] = generate_request_header()
      end

      # Generates SOAP default request header with all requested headers.
      def generate_request_header()
        return @credential_handler.credentials[:extra_headers]
      end
    end
  end
end
