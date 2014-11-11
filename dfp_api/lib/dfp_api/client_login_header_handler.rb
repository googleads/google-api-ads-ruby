#!/usr/bin/env ruby
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

module DfpApi
  class ClientLoginHeaderHandler < AdsCommon::SavonHeaders::BaseHeaderHandler
    private

    # Generates DFP API specific request header with ClientLogin data in
    # required namespace.
    #
    # Args:
    #  - None
    #
    # Returns:
    #  - Hash containing a header with filled in credentials
    #
    def generate_request_header()
      request_header = super()
      auth_header = prepend_namespace('authentication')
      credentials = @credential_handler.credentials
      request_header[auth_header] = {
          prepend_namespace('token') => @auth_handler.get_token(credentials)
      }
      request_header[:attributes!] ||= {}
      request_header[:attributes!][auth_header] = {
          'xsi:type' => prepend_namespace('ClientLogin'),
      }
      return request_header
    end
  end
end
