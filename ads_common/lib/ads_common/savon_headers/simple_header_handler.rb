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
# Handles simple SOAP headers and namespaces definition for Savon SOAP backend.

require 'ads_common/savon_headers/base_header_handler'

module AdsCommon
  module SavonHeaders
    class SimpleHeaderHandler < BaseHeaderHandler
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
      def prepare_request(request, soap, args)
        super(request, soap, args)
        soap.header[prepend_namespace(@element_name)] =
            generate_request_header()
      end

      private

      # Generates SOAP request header with login credentials and namespace
      # definition.
      #
      # Args:
      #  - None
      #
      # Returns:
      #  - Hash containing a header with filled in credentials
      #
      def generate_request_header()
        headers = @auth_handler.headers(
            @credential_handler.credentials(@version))
        return headers[@element_name]
      end
    end
  end
end
