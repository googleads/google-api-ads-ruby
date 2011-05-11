#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# Contains extensions to the API, that is, service helper methods provided in
# client-side by the client library.

require 'rexml/document'
require 'csv'
require 'ads_common/http'

module AdwordsApi

  module Extensions

    # Maintains a list of all extension methods, indexed by version and service.
    # Using camelCase to match API method names.
    @@extensions = {
      [:v13, :ReportService] => [:download_xml_report, :download_csv_report],
      [:v201003, :ReportDefinitionService] => [:download_report,
          :download_report_as_file],
      [:v201008, :ReportDefinitionService] => [:download_report,
          :download_report_as_file],
      [:v201101, :ReportDefinitionService] => [:download_report,
          :download_report_as_file, :download_mcc_report,
          :download_mcc_report_as_file]
    }

    # Defines the parameter list for every extension method.
    @@methods = {
      :download_xml_report     => [:job_id],
      :download_csv_report     => [:job_id],
      :download_report         => [:report_definition_id],
      :download_report_as_file => [:report_definition_id, :path],
      :download_mcc_report     => [:report_definition_id, :query_token],
      :download_mcc_report_as_file =>
          [:report_definition_id, :query_token, :path]
    }

    # Return list of all extension methods, indexed by version and service.
    def self.extensions
      return @@extensions
    end

    # Return the parameter list for every extension method.
    def self.methods
      return @@methods
    end

    #########################################################################
    # NOTE: The following extension methods shouldn't be used directly; they
    # should instead be used from the services wrappers they get mapped to.
    # For example, you should use ReportServiceWrapper::downloadXmlReport
    # instead of Extensions::downloadXmlReport.
    #########################################################################

    # <i>Extension method</i> -- Download and return report data in XML format.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - job_id: the job id for the report to be downloaded
    #
    # Returns:
    # The xml for the report (as a string)
    #
    def self.download_xml_report(wrapper, job_id)
      sleep_interval = 30

      status_field = nil
      download_field = nil

      if wrapper.api.config.read('service.use_ruby_names')
        status_field = :get_report_job_status_return
        download_field = :get_report_download_url_return
      else
        status_field = :getReportJobStatusReturn
        download_field = :getReportDownloadUrlReturn
      end

      # Repeatedly check the report status until it is finished.
      # 'Pending' and 'InProgress' statuses indicate the job is still being run.
      status = wrapper.get_report_job_status(job_id)[status_field]
      while status != 'Completed' && status != 'Failed'
        sleep(sleep_interval)
        status = wrapper.get_report_job_status(job_id)[status_field]
      end

      if status == 'Completed'
        report_url = wrapper.get_report_download_url(job_id)[download_field]

        # Download the report and return its contents. The report is an XML
        # document; the actual element names vary depending on the type of
        # report run and columns requested.
        begin
          return AdsCommon::Http.get(report_url, wrapper.api.config)
        rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
          # This exception indicates a connection-level error.
          # In general, it is likely to be transitory.
              [e, e.backtrace.first]
        end
      else
        # Reports that pass validation will normally not fail, but if there is
        # an error in the report generation service it can sometimes happen.
        raise AdwordsApi::Errors::ApiException, 'Report generation failed.'
      end
    end

    # <i>Extension method</i> -- Download and return report data in CSV format.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - job_id: the job id for the report to be downloaded
    # - xml: optional parameter used for testing and debugging
    #
    # Returns:
    # The CSV data for the report (as a string)
    #
    def self.download_csv_report(wrapper, job_id, report_xml=nil)
      # Get XML report data.
      report_xml = download_xml_report(wrapper, job_id) if report_xml.nil?

      begin
        # Construct DOM object.
        doc = REXML::Document.new(report_xml)

        # Get data columns.
        columns = []
        doc.elements.each('report/table/columns/column') do |column_elem|
          name = column_elem.attributes['name']
          columns << name unless name.nil?
        end

        # Get data rows.
        rows = []
        doc.elements.each('report/table/rows/row') do |row_elem|
          rows << row_elem.attributes unless row_elem.attributes.nil?
        end

        # Build CSV
        csv = ''
        CSV::Writer.generate(csv) do |writer|
          writer << columns
          rows.each do |row|
            row_values = []
            columns.each { |column| row_values << row[column] }
            writer << row_values
          end
        end

        return csv
      rescue REXML::ParseException => e
        # Error parsing XML
        raise AdwordsApi::Errors::ApiException,
            "Error parsing report XML: %s\nSource: %s" % [e, e.backtrace.first]
      end
    end

    # <i>Extension method</i> -- Download and return a v20xx report into a file.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - report_definition_id: the id for the report definition
    # - path: the file where the data should be saved
    #
    # Returns:
    # nil
    #
    def self.download_report_as_file(wrapper, report_definition_id, path)
      report_data = download_report(wrapper, report_definition_id)
      save_to_file(report_data, path)
      return nil
    end

    # <i>Extension method</i> -- Download and return a v20xx report.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - report_definition_id: the id for the report definition
    #
    # Returns:
    # The data for the report (as a string)
    #
    def self.download_report(wrapper, report_definition_id)
      url = get_report_url(wrapper, "?__rd=%s" % report_definition_id)
      report_response = get_report_response(wrapper, url)
      return report_response.body
    end

    # <i>Extension method</i> -- Download and return a MCC report.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - report_definition_id: the id for the report definition
    # - query_token: id from previous calls to the method
    #
    # Returns:
    # A hash with HTTP code and report service response
    #
    def self.download_mcc_report(wrapper, report_definition_id, query_token)
      do_download_mcc_report(wrapper, report_definition_id, query_token, nil)
    end

    # <i>Extension method</i> -- Download and save a MCC report to file.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - report_definition_id: the id for the report definition
    # - query_token: id from previous calls to the method
    # - path: filename to save downloaded report to
    #
    # Returns:
    # A hash with HTTP code and report service response
    #
    def self.download_mcc_report_as_file(wrapper, report_definition_id,
        query_token, path)
      do_download_mcc_report(wrapper, report_definition_id, query_token, path)
    end

    private

    # Polls the service once and downloads report into a file or to a hash.
    def self.do_download_mcc_report(wrapper, report_definition_id, query_token,
        path = nil)
      query_token = 'new' if query_token.nil? or query_token.empty?
      url = get_report_url(wrapper,
          "?__rd=%s&qt=%s" % [report_definition_id, query_token])
      report_response = get_report_response(wrapper, url)
      check_old_error(report_response.body)
      mcc_response = report_response_to_hash(report_response)
      result = case report_response.code
        when 200, 500
          mcc_response
        when 301
          return_or_save_mcc_report_data(wrapper, mcc_response, path)
        else
          raise AdwordsApi::Errors::ApiException,
              "Unknown HTTP error code %d message: %s" %
              [report_response.code, report_response.body]
      end
      return result
    end

    # Downloads a report body into a hash or a file.
    def self.return_or_save_mcc_report_data(wrapper, mcc_response, path = nil)
      report_data = get_report_response(wrapper, mcc_response[:location]).body
      if path.nil?
        mcc_response[:report_data] = report_data
      else
        save_to_file(report_data, path)
      end
      return mcc_response
    end

    # Saves raw data to a file.
    def self.save_to_file(data, path)
      open(path, 'w') { |file| file.puts(data) } if path
    end

    # Generates default report URL with given parameters.
    def self.get_report_url(wrapper, parameters)
      return AdwordsApi::ApiConfig.report_download_url(
          wrapper.api.config.read('service.environment'),
          wrapper.version) + parameters
    end

    # Gets a report response for a given parameters.
    def self.get_report_response(wrapper, url)
      headers = get_report_request_headers(wrapper)
      report_response = AdsCommon::Http.get_response(url, wrapper.api.config,
          headers)
      return report_response
    end

    def self.get_report_request_headers(wrapper)
      headers = {}
      credentials = wrapper.api.credential_handler.credentials
      auth_handler = wrapper.api.client_login_handler
      headers['Authorization'] = "GoogleLogin auth=%s" %
          auth_handler.headers(credentials)[:authToken]
      if credentials[:clientEmail]
        headers['clientEmail'] = credentials[:clientEmail]
      elsif credentials[:clientCustomerId]
        headers['clientCustomerId'] = credentials[:clientCustomerId]
      elsif credentials[:email]
        headers['clientEmail'] = credentials[:email]
      end
      return headers
    end

    # Converts report response data into a convenient hash.
    def self.report_response_to_hash(response)
      result = {}
      result[:code] = response.code
      xml = REXML::Document.new(response.body)
      result[:body] = xml_to_hash(xml.root) if xml and xml.root
      if !response.headers.nil? and !response.headers['Location'].nil?
        result[:location] = response.headers['Location']
      end
      # Special case for accounts list in failures.
      if result[:body] and result[:body][:failures]
        result[:body][:failures][:account] =
            arrayize(result[:body][:failures][:account])
      end
      return result
    end

    # Converts xml into a convenient hash.
    def self.xml_to_hash(xml)
      result = {}
      xml.elements.each do |item|
        value = case item.has_elements?
          when true: xml_to_hash(item)
          else item.get_text()
        end
        if result[item.name].nil?
          result[item.name] = value
        else
          result[item.name] = arrayize(result[item.name])
          result[item.name] << value
        end
      end
      return result
    end

    # Makes sure object is an array.
    def self.arrayize(object)
      return Array.new if object.nil?
      return object.is_a?(Array) ? object : [object]
    end

    # Checks for old-style pre-MCC reporting error.
    def self.check_old_error(response_text)
      error_message_regex = '^!!!(-?\d+)\|\|\|(-?\d+)\|\|\|(.*)\?\?\?'
      matches = response_text.match(error_message_regex)
      if matches
        message = (matches[3].nil?) ? response_text : matches[3]
        raise AdwordsApi::Errors::ApiException,
            "Report download error occured: %s" % message
      end
      return nil
    end
  end
end
