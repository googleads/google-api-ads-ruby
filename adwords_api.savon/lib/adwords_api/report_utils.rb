#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Contains utility methods specific to reporting.

require 'gyoku'

require 'adwords_api/errors'

module AdwordsApi
  class ReportUtils
    # Default constructor.
    #
    # Args:
    # - api: AdwordsApi object
    # - version: API version to use
    #
    def initialize(api, version)
      @api, @version = api, version
    end

    # Downloads and returns a report.
    #
    # Args:
    # - report_definition: definition of the report in XML text or hash
    #
    # Returns:
    # - report body
    #
    # Raises:
    # - AdwordsApi::Errors::InvalidReportDefinitionError if the report
    #   definition is invalid
    # - AdwordsApi::Errors::ReportError if server-side error occurred
    #
    def download_report(report_definition)
      return get_report_response(report_definition).body
    end

    # Downloads a report and saves it to a file.
    #
    # Args:
    # - report_definition: definition of the report in XML text or hash
    # - path: path to save report to
    #
    # Returns:
    # - nil
    #
    # Raises:
    # - AdwordsApi::Errors::InvalidReportDefinitionError if the report
    #   definition is invalid
    # - AdwordsApi::Errors::ReportError if server-side error occurred
    #
    def download_report_as_file(report_definition, path)
      report_body = download_report(report_definition)
      save_to_file(report_body, path)
      return nil
    end

    private

    # Minimal set of required fields for report definition.
    REQUIRED_FIELDS = [:selector, :report_name, :report_type, :date_range_type]

    # Definition fields have to be in particular order in the XML. Here is its
    # specification.
    REPORT_DEFINITION_ORDER = {
      :root => [:selector, :report_name, :report_type, :date_range_type,
          :download_format, :include_zero_impressions],
      :selector => [:fields, :predicates, :date_range],
      :predicates => [:field, :operator, :values]
    }

    # Send POST request for a report and returns Response object.
    def get_report_response(report_definition)
      definition_text = get_report_definition_text(report_definition)
      data = {'__rdxml' => definition_text}
      url = @api.api_config.adhoc_report_download_url(
          @api.config.read('service.environment'), @version)
      headers = get_report_request_headers()
      response = AdsCommon::Http.post_response(url, data, @api.config, headers)
      check_for_errors(response)
      return response
    end

    # Converts passed object to XML text. Currently support String (no changes)
    # and Hash (renders XML).
    def get_report_definition_text(report_definition)
      return case report_definition
        when String then report_definition
        when Hash then report_definition_to_xml(report_definition)
        else
          raise AdwordsApi::Errors::InvalidReportDefinitionError,
              "Unknown object for report definition: %s" %
              report_definition.class
      end
    end

    # Prepares headers for report request.
    def get_report_request_headers()
      credentials = @api.credential_handler.credentials
      auth_string = @api.client_login_handler.headers(credentials)[:authToken]
      headers = {
          'Authorization' => "GoogleLogin auth=%s" % auth_string,
          'ClientCustomerId' => credentials[:clientCustomerId],
          'Content-Type' => 'multipart/form-data'
      }
      return headers
    end

    # Saves raw data to a file.
    def save_to_file(data, path)
      open(path, 'wb') { |file| file.puts(data) } if path
    end

    # Checks downloaded data for error signature. Raises ReportError if it
    # detects an error.
    def check_for_errors(response)
      # Check for error in body.
      report_body = response.body
      if report_body
        error_message_regex = '^!!!(-?\d+)\|\|\|(-?\d+)\|\|\|(.*)\?\?\?'
        data = report_body.slice(0, 1024)
        matches = data.match(error_message_regex)
        if matches
          message = (matches[3].nil?) ? data : matches[3]
          raise AdwordsApi::Errors::ReportError.new(response.code,
              "Report download error occured: %s" % message)
        end
      end
      # Check for error code.
      unless response.code == 200
        raise AdwordsApi::Errors::ReportError.new(response.code,
            "Report download error occured, http code: %d, body: %s" %
            [response.code, response.body])
      end
      return nil
    end

    # Renders a report definition hash into XML text.
    def report_definition_to_xml(report_definition)
      check_report_definition_hash(report_definition)
      add_report_definition_hash_order(report_definition)
      return Gyoku.xml({:report_definition => report_definition})
    end

    # Checks if the report definition looks correct.
    def check_report_definition_hash(report_definition)
      # Minimal set of fields required.
      REQUIRED_FIELDS.each do |field|
        unless report_definition.include?(field)
          raise AdwordsApi::Errors::InvalidReportDefinitionError,
              "Required field '%s' is missing in the definition" % field
        end
      end
      # Fields list is also required.
      unless report_definition[:selector].include?(:fields)
        raise AdwordsApi::Errors::InvalidReportDefinitionError,
            'Fields list is required'
      end
      # 'Fields' must be an Array.
      unless report_definition[:selector][:fields].kind_of?(Array)
        raise AdwordsApi::Errors::InvalidReportDefinitionError,
            'Fields list must be an array'
      end
      # We should request at least one field.
      if report_definition[:selector][:fields].empty?
        raise AdwordsApi::Errors::InvalidReportDefinitionError,
            'At least one field needs to be requested'
      end
    end

    # Adds fields order hint to generator based on specification.
    def add_report_definition_hash_order(node, name = :root)
      def_order = REPORT_DEFINITION_ORDER[name]
      var_order = def_order.reject {|field| !node.include?(field)}
      node.keys.each do |key|
        if node[key].is_a?(Hash) and REPORT_DEFINITION_ORDER.include?(key)
          add_report_definition_hash_order(node[key], key)
        end
      end
      node[:order!] = var_order
      return nil
    end
  end
end
