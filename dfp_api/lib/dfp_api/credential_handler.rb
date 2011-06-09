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
# DFP-specific credential handler.

require 'ads_common/credential_handler'
require 'dfp_api/api_config'

module DfpApi
  class CredentialHandler < AdsCommon::CredentialHandler
    # Create the list of credentials to be used by the auth handler for header
    # generation.
    def credentials(version = nil)
      validate_headers_for_server()
      client_lib = "Ruby-DfpApi-%s" % DfpApi::ApiConfig::CLIENT_LIB_VERSION
      application_name = @credentials[:application_name] || $0
      result = {
          :email => @credentials[:email],
          :password => @credentials[:password],
          :applicationName => "%s|%s" % [client_lib, application_name]
      }
      network_code = @credentials[:network_code]
      result[:networkCode] = network_code if !network_code.nil?
      return result
    end

    private

    # Validates that the right credentials are being used for the chosen
    # environment.
    def validate_headers_for_server()
      if @credentials[:email].nil?
        raise AdsCommon::Errors::AuthError, "Login email is not specified"
      end
      if @credentials[:password].nil?
        raise AdsCommon::Errors::AuthError, "Password is not specified"
      end
      if @credentials[:application_name].nil?
        raise AdsCommon::Errors::AuthError, "Application name is not specified"
      end
      return nil
    end
  end
end
