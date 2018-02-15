# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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

require 'adwords_api/credential_handler'

module AdwordsApi
  class UtilsReporter
    # Default constructor.
    #
    # Args:
    # - credential_handler: The CredentialHandler being used by the current
    # AdwordsApi instance.
    def initialize(credential_handler)
      @credential_handler = credential_handler
    end

    # A callback method from report utils to indicate that it has been used,
    # and that its usage should be recorded in the next user agent string.
    def report_utils_used()
      @credential_handler.include_in_user_agent("ReportDownloader")
    end

    # A callback method from batch job utils to indicate that it has been used,
    # and that its usage should be recorded in the next user agent string.
    def batch_job_utils_used()
      @credential_handler.include_in_user_agent("BatchJobHelper")
    end

    # A callback method from report query builder to indicate that it has been
    # used, and that its usage should be recorded in the next user agent string.
    def report_query_builder_used()
      @credential_handler.include_in_user_agent("ReportQueryBuilder")
    end

    # A callback method from service query builder to indicate that it has been
    # used, and that its usage should be recorded in the next user agent string.
    def service_query_builder_used()
      @credential_handler.include_in_user_agent("ServiceQueryBuilder")
    end
  end
end
