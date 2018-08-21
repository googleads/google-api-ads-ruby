# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# Contains methods to help configure the user agent string to report on utility
# usage.

require 'ad_manager_api/credential_handler'

module AdManagerApi
  class UtilsReporter
    # Default constructor.
    #
    # Args:
    # - credential_handler: The CredentialHandler being used by the current
    # AdManagerApi instance.
    def initialize(credential_handler)
      @credential_handler = credential_handler
    end

    # A callback method for StatementBuilder to indicate that it has been
    # used, and that its usage should be recorded in the next user agent string.
    def statement_builder_used()
      @credential_handler.include_in_user_agent("StatementBuilder")
    end

    # A callback method for AdManagerDate to indicate that it has been
    # used, and that its usage should be recorded in the next user agent string.
    def ad_manager_date_used()
      @credential_handler.include_in_user_agent("AdManagerDate")
    end

    # A callback method for AdManagerDateTime to indicate that it has been
    # used, and that its usage should be recorded in the next user agent string.
    def ad_manager_date_time_used()
      @credential_handler.include_in_user_agent("AdManagerDateTime")
    end
  end
end
