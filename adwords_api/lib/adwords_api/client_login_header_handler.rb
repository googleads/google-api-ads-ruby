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

    private

    # Generates AdWords API specific request header with ClientLogin data.
    def generate_request_header()
      request_header = super()
      credentials = @credential_handler.credentials
      request_header['authToken'] = @auth_handler.get_token(credentials)
      return request_header
    end
  end
end
