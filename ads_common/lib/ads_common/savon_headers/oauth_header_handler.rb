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
# Handles SOAP headers and namespaces definition for OAuth type header.

require 'ads_common/savon_headers/base_header_handler'

module AdsCommon
  module SavonHeaders
    class OAuthHeaderHandler < BaseHeaderHandler

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
        super(request, soap)
        credentials = @credential_handler.credentials
        request.url = soap.endpoint
        request.headers['Authorization'] =
            @auth_handler.auth_string(credentials)
      end
    end
  end
end
