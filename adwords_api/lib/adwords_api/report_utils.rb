# Encoding: utf-8
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

require 'cgi'
require 'gyoku'
require 'nori'

require 'ads_common/http'
require 'adwords_api/errors'
require 'adwords_api/report_header_handler'

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
    # - cid: optional customer ID to run against
    #
    # Returns:
    # - report body
    #
    # Raises:
    # - AdwordsApi::Errors::InvalidReportDefinitionError if the report
    #   definition is invalid
    # - AdwordsApi::Errors::ReportError if server-side error occurred
    #
    def download_report(report_definition, cid = nil)
      return get_report_response(report_definition, cid).body
    end

    # Downloads a report and saves it to a file.
    #
    # Args:
    # - report_definition: definition of the report in XML text or hash
    # - path: path to save report to
    # - cid: optional customer ID to run against
    #
    # Returns:
    # - nil
    #
    # Raises:
    # - AdwordsApi::Errors::InvalidReportDefinitionError if the report
    #   definition is invalid
    # - AdwordsApi::Errors::ReportError if server-side error occurred
    #
    def download_report_as_file(report_definition, path, cid = nil)
      report_body = download_report(report_definition, cid)
      save_to_file(report_body, path)
      return nil
    end

    # Downloads and returns a report with AWQL.
    #
    # Args:
    # - report_query: query for the report as string
    # - format: format for the report as string
    # - cid: optional customer ID to run report against
    #
    # Returns:
    # - report body
    #
    # Raises:
    # - AdwordsApi::Errors::ReportError if a server-side error has occurred
    #
    def download_report_with_awql(report_query, format, cid = nil)
      return get_report_response_with_awql(report_query, format, cid).body
    end

    # Downloads a report with AWQL and saves it to a file.
    #
    # Args:
    # - report_query: query for the report as string
    # - format: format for the report as string
    # - path: path to save report to
    # - cid: optional customer ID to run report against
    #
    # Returns:
    # - nil
    #
    # Raises:
    # - AdwordsApi::Errors::ReportError if server-side error occurred
    #
    def download_report_as_file_with_awql(report_query, format, path, cid = nil)
      report_body = download_report_with_awql(report_query, format, cid)
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
      :selector => [:fields, :predicates, :date_range, :ordering, :paging],
      :predicates => [:field, :operator, :values],
      :ordering => [:field, :sort_order],
      :paging => [:start_index, :number_results],
      :date_range => [:min, :max]
    }

    # Send POST request for a report and returns Response object.
    def get_report_response(report_definition, cid)
      definition_text = get_report_definition_text(report_definition)
      data = '__rdxml=%s' % CGI.escape(definition_text)
      return make_adhoc_request(data, cid)
    end

    # Send POST request for a report with AWQL and returns Response object.
    def get_report_response_with_awql(report_query, format, cid)
      data = '__rdquery=%s&__fmt=%s' %
          [CGI.escape(report_query), CGI.escape(format)]
      return make_adhoc_request(data, cid)
    end

    # Makes request and AdHoc service and returns response.
    def make_adhoc_request(data, cid)
      url = @api.api_config.adhoc_report_download_url(
          @api.config.read('service.environment'), @version)
      headers = get_report_request_headers(url, cid)
      log_request(url, headers, data)
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
              'Unknown object for report definition: %s' %
              report_definition.class
      end
    end

    # Prepares headers for report request.
    def get_report_request_headers(url, cid)
      @header_handler ||= AdwordsApi::ReportHeaderHandler.new(
          @api.credential_handler, @api.get_auth_handler(), @api.config)
      return @header_handler.headers(url, cid)
    end

    # Saves raw data to a file.
    def save_to_file(data, path)
      open(path, 'wb') { |file| file.write(data) } if path
    end

    # Logs the request on debug level.
    def log_request(url, headers, body)
      logger = @api.logger
      logger.debug("Report request to: '%s'" % url)
      logger.debug('HTTP headers: [%s]' %
          (headers.map { |k, v| [k, v].join(': ') }.join(', ')))
      logger.debug(body)
    end

    # Checks downloaded data for error signature. Raises ReportError if it
    # detects an error.
    def check_for_errors(response)
      # Check for error code.
      if response.code != 200
        # Check for error in body.
        report_body = response.body
        check_for_xml_error(report_body, response.code)
        # No XML error found nor raised, falling back to a default message.
        raise AdwordsApi::Errors::ReportError.new(response.code,
            'HTTP code: %d, body: %s' % [response.code, response.body])
      end
      return nil
    end

    # Checks for an XML error in the response body and raises an exception if
    # it was found.
    def check_for_xml_error(report_body, response_code)
      error_response = Nori.parse(report_body)
      if error_response.include?(:report_download_error) and
          error_response[:report_download_error].include?(:api_error)
        api_error = error_response[:report_download_error][:api_error]
        raise AdwordsApi::Errors::ReportXmlError.new(response_code,
            api_error[:type], api_error[:trigger], api_error[:field_path])
      end
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
      var_order = def_order.reject { |field| !node.include?(field) }
      node.keys.each do |key|
        if REPORT_DEFINITION_ORDER.include?(key)
          case node[key]
            when Hash
              add_report_definition_hash_order(node[key], key)
            when Array
              node[key].each do |item|
                add_report_definition_hash_order(item, key)
              end
          end
        end
      end
      node[:order!] = var_order
      return nil
    end
  end
end
