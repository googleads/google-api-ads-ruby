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
# Base class for handlers of SOAP headers.

require 'savon'

module AdsCommon
  module SavonHeaders
    class BaseHeaderHandler
      # Default namespace alias.
      DEFAULT_NAMESPACE = 'wsdl'

      # Initializes a header handler.
      #
      # Args:
      #  - credential_handler: a header with credential data
      #  - auth_handler: a header with auth data
      #  - element_name: an API-specific name of header element
      #  - namespace: default namespace to use
      #  - version: services version
      #
      def initialize(credential_handler, auth_handler, element_name,
                     namespace, version)
        @credential_handler = credential_handler
        @auth_handler = auth_handler
        @element_name = element_name
        @namespace = namespace
        @version = version
        Savon.configure {|config| config.raise_errors = false}
      end

      # Enriches soap object with API-specific headers like namespaces, login
      # credentials etc.
      #
      # Needs to be overriden.
      #
      # Args:
      #  - request: a HTTPI Request for extra configuration
      #  - soap: a Savon soap object to fill fields in
      #  - args: request parameters to adjust for namespaces
      #
      # Returns:
      #  - Modified request and soap structures
      #
      def prepare_request(request, soap, args)
        soap.namespace = @namespace
        soap.body = args if args
        # Sets the default namespace for the body.
        soap.input[2] = {:xmlns => @namespace}
        # Sets User-Agent in the HTTP header.
        request.headers['User-Agent'] = generate_user_agent_string()
      end

      private

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

      # Generates User-Agent text for HTTP request.
      def generate_user_agent_string()
        credentials = @credential_handler.credentials(@version)
        app_name = credentials[:userAgent] || credentials[:useragent]
        # We don't know the library version here. A breaking change needs to be
        # introduced. This is scheduled for 0.6.0, using Common version for now.
        lib_version = '0.5.5'
        soap_user_agent = "Common-Ruby-%s; %s" % [lib_version, app_name]
        return "Savon/%s (%s)" % [Savon::Version, soap_user_agent]
      end
    end
  end
end
