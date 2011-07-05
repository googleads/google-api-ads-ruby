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
# Handles SOAP headers and namespaces definition for ClientLogin type header.

require 'ads_common/savon_headers/simple_header_handler'

module AdsCommon
  module SavonHeaders
    class ClientLoginHeaderHandler < SimpleHeaderHandler
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
        headers = @auth_handler.headers(@credential_handler.credentials)
        return headers.inject({}) do |request_header, (header, value)|
          if header == :authToken
            auth_header = prepend_namespace('authentication')
            request_header[auth_header] = {
                prepend_namespace('token') => value
            }
            request_header[:attributes!] ||= {}
            request_header[:attributes!][auth_header] = {
                'xsi:type' => prepend_namespace('ClientLogin'),
            }
          else
            request_header[prepend_namespace(header)] = value
          end
          request_header
        end
      end
    end
  end
end
