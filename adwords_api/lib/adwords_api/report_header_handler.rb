# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# Handles HTTP headers for AdHoc reporting requests.

module AdwordsApi
  class ReportHeaderHandler

    # Initializes a header handler.
    #
    # Args:
    #  - credential_handler: a header with credential data
    #  - auth_handler: a header with auth data
    #  - config: API config
    #
    def initialize(credential_handler, auth_handler, config)
      @credential_handler = credential_handler
      @auth_handler = auth_handler
      @config = config
    end

    # Returns the headers set for the report request.
    #
    # Args:
    #  - url: URL for the report requests
    #  - cid: clientCustomerId to use
    #
    # Returns:
    #  - a Hash with HTTP headers.
    #
    def headers(url, cid)
      override = (cid.nil?) ? nil : {:client_customer_id => cid}
      credentials = @credential_handler.credentials(override)
      headers = {
          'Content-Type' => 'application/x-www-form-urlencoded',
          'Authorization' => @auth_handler.auth_string(credentials),
          'User-Agent' => @credential_handler.generate_user_agent(),
          'clientCustomerId' => credentials[:client_customer_id].to_s,
          'developerToken' => credentials[:developer_token]
      }
      skip_report_header = @config.read('library.skip_report_header')
      unless skip_report_header.nil?
        headers['skipReportHeader'] = skip_report_header
      end
      skip_report_summary = @config.read('library.skip_report_summary')
      unless skip_report_summary.nil?
        headers['skipReportSummary'] = skip_report_summary
      end
      skip_column_header = @config.read('library.skip_column_header')
      unless skip_column_header.nil?
        headers['skipColumnHeader'] = skip_column_header
      end
      include_zero_impressions_header =
          @config.read('library.include_zero_impressions_header')
      unless include_zero_impressions_header.nil?
        headers['includeZeroImpressoins'] = include_zero_impressions_header
      end
      return headers
    end
  end
end
