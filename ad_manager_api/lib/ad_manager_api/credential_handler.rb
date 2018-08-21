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
# Ad-Manager-specific credential handler.

require 'ads_common/credential_handler'
require 'ad_manager_api/api_config'
require 'ad_manager_api/utils'

module AdManagerApi

  LEGACY_DEFAULT_APPLICATION_NAME = 'dfp_ruby_examples'
  DEFAULT_APPLICATION_NAME = 'INSERT_APPLICATION_NAME_HERE'

  class CredentialHandler < AdsCommon::CredentialHandler
    # Create the list of credentials to be used by the auth handler for header
    # generation.
    def credentials(credentials_override = nil)
      result = super(credentials_override)
      validate_headers_for_server(result)
      include_utils = @config.read('library.include_utilities_in_user_agent',
          true)
      result[:extra_headers] = {
          'applicationName' => generate_user_agent([], include_utils),
          'networkCode' => result[:network_code]
      }
      return result
    end

    # Generates string to use as user agent in headers.
    def generate_user_agent(extra_ids = [], include_utilities = true)
      agent_app = @config.read('authentication.application_name')
      extra_ids << ["AdManagerApi-Ruby/%s" %
          AdManagerApi::ApiConfig::CLIENT_LIB_VERSION]
      utility_registry = AdManagerApi::Utils::UtilityRegistry.instance
      extra_ids += utility_registry.extract!.to_a if include_utilities
      super(extra_ids, agent_app)
    end

    # Returns the network code specified in the current credentials.
    def identifier()
      return credentials[:extra_headers]['networkCode']
    end

    private

    # Validates that the right credentials are being used for the chosen
    # environment.
    def validate_headers_for_server(credentials)
      application_name = credentials[:application_name]
      if (application_name.nil? or application_name.empty? or
          application_name.include?(DEFAULT_APPLICATION_NAME) or
          application_name.include?(LEGACY_DEFAULT_APPLICATION_NAME))
        raise AdsCommon::Errors::AuthError, (
            'Application name must be specified and cannot be the default')
      end
      return nil
    end
  end
end
