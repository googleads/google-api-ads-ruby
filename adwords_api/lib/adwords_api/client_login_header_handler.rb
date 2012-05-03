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
# Handles SOAP headers and namespaces definition for ClientLogin type header.

require 'ads_common/savon_headers/base_header_handler'

module AdwordsApi
  class ClientLoginHeaderHandler < AdsCommon::SavonHeaders::BaseHeaderHandler
    # Initializes a header handler.
    #
    # Args:
    #  - credential_handler: a header with credential data
    #  - auth_handler: a header with auth data
    #  - element_name: an API-specific name of header element
    #  - namespace: default namespace to use
    #  - auth_namespace: namespace to use for auth headers
    #  - version: services version
    #
    def initialize(credential_handler, auth_handler, namespace, auth_namespace,
        version)
      super(credential_handler, auth_handler, namespace, version)
      @auth_namespace = auth_namespace
    end

    # Enriches soap object with API-specific headers like namespaces, login
    # credentials etc. Sets the default namespace for the body to the one
    # specified in initializer.
    #
    # Args:
    #  - request: a HTTPI Request for extra configuration (unused)
    #  - soap: a Savon soap object to fill fields in
    #  - args: request parameters to adjust for namespaces
    #
    # Returns:
    #  - Modified soap structure
    #
    def prepare_request(request, soap)
      super(request, soap)
      soap.header[:attributes!] ||= {}
      header_name = prepend_namespace(get_header_element_name())
      soap.header[:attributes!][header_name] ||= {}
      soap.header[:attributes!][header_name]['xmlns'] = @auth_namespace
    end

    private
    # Skips namespace prefixes for all elements except top level. Use default
    # (inherited) prefixing for the top level key.
    #
    # Args:
    #  - str: String to prepend with a namespace
    #
    # Returns:
    #  - String with a namespace
    #
    def prepend_namespace(str)
      return get_header_element_name().eql?(str) ? super(str) : str
    end

    # Generates AdWords API specific request header with ClientLogin data.
    def generate_request_header()
      request_header = super()
      credentials = @credential_handler.credentials
      request_header['authToken'] = @auth_handler.get_token(credentials)
      return request_header
    end
  end
end
