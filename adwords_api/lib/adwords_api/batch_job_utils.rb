# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# Contains utility methods specific to using the BatchJobService.

require 'nokogiri'
require 'nori'

require 'ads_common/http'
require 'ads_common/savon_service'
require 'adwords_api/errors'
require 'adwords_api/incremental_upload_helper'

module AdwordsApi
  class BatchJobUtils
    # Default constructor.
    #
    # Args:
    # - api: AdwordsApi object
    # - version: API version to use
    #
    def initialize(api, version)
      @api, @version = api, version
    end

    # Uploads the given operations for a batch job to the provided URL.
    #
    # Args:
    # - hash_operations: An array of ruby has operations to execute by
    #   posting them to the provided URL
    # - service_name: The name of the AdwordsApi service as a symbol that would
    #   normally make this request
    # - batch_job_url: The UploadURL provided by BatchJobService
    #
    # Raises:
    # - InvalidBatchJobOperationError: If there is a problem converting the
    # given operations to SOAP.
    #
    def upload_operations(operations, batch_job_url)
      helper = start_incremental_upload(batch_job_url)
      helper.upload(operations, true)
    end

    # Provides a helper to manage incremental uploads.
    #
    # Args:
    # - batch_job_url: The UploadURL provided by BatchJobService for new jobs,
    # or the upload_url from IncrementalUploadHelper for continued jobs.
    # - uploaded_bytes: The number of bytes already uploaded for this
    # incremental batch job. Can be retrieved from the IncrementalUploadHelper
    # using uploaded_bytes.
    #
    # Returns:
    # - an IncrementalUploadHelper that will accept operations and put them,
    # keeping track of uploaded bytes automatically.
    #
    def start_incremental_upload(batch_job_url, uploaded_bytes = 0)
      return AdwordsApi::IncrementalUploadHelper.new(
          self, uploaded_bytes, batch_job_url)
    end

    # Initializes an upload URL to get the actual URL to which to upload
    # operations.
    #
    # Args:
    # - batch_job_url: The UploadURL provided by BatchJobService
    #
    # Returns:
    # - The URL that should actually be used to upload operations.
    #
    def initialize_url(batch_job_url)
      headers = DEFAULT_HEADERS
      headers['Content-Length'] = 0
      headers['x-goog-resumable'] = 'start'

      response = AdsCommon::Http.post_response(
          batch_job_url, '', @api.config, headers)

      return response.headers['Location']
    end

    # Puts the provided operations to the provided URL, allowing
    # for incremental followup puts.
    #
    # Args:
    # - soap_operations: An array including SOAP operations provided by
    #   generate_soap_operations
    # - batch_job_url: The UploadURL provided by BatchJobService
    # - total_content_length: The total number of bytes already uploaded
    #   incrementally. Set this to 0 the first time you call the method.
    # - is_last_request: Whether or not this set of uploads will conclude the
    #   full request.
    #
    # Returns:
    # - total content length, including what was just uploaded. Pass this back
    #   into this method on subsequent calls.
    def put_incremental_operations(
        operations, batch_job_url, total_content_length = 0,
        is_last_request = false)
      @api.utils_reporter.batch_job_utils_used()
      headers = DEFAULT_HEADERS
      soap_operations = generate_soap_operations(operations)
      request_body = soap_operations.join
      is_first_request = (total_content_length == 0)

      if is_first_request
        request_body = (UPLOAD_XML_PREFIX % [@version]) + request_body
      end
      if is_last_request
        request_body += UPLOAD_XML_SUFFIX
      end

      request_body = add_padding(request_body)
      content_length = request_body.bytesize

      headers['Content-Length'] = content_length

      lower_bound = total_content_length
      upper_bound = total_content_length + content_length - 1
      total_bytes = is_last_request ? upper_bound + 1 : '*'
      content_range =
          "bytes %d-%d/%s" % [lower_bound, upper_bound, total_bytes]

      headers['Content-Range'] = content_range

      log_request(batch_job_url, headers, request_body)

      # The HTTPI library fails to handle the response when uploading
      # incremental requests. We're not interested in the response, so just
      # ignore the error.
      begin
        AdsCommon::Http.put_response(
            batch_job_url, request_body, @api.config, headers)
      rescue ArgumentError
      end

      total_content_length += content_length
      return total_content_length
    end

    # Downloads the results of a batch job from the specified URL.
    #
    # Args:
    # - batch_job_url: The URL provided by BatchJobService to fetch the results
    #   from
    #
    # Returns:
    # - the results of the batch job, as a ruby hash, or nil if none yet exist
    #
    def get_job_results(batch_job_url)
      @api.utils_reporter.batch_job_utils_used()
      xml_response = AdsCommon::Http.get_response(batch_job_url, @api.config)
      begin
        return sanitize_result(
            get_nori().parse(xml_response.body)[:mutate_response][:rval])
      rescue
        return nil
      end
    end

    private

    # For incremental uploads, the size (in bytes) of the body of the request
    # must be in multiples of 256k.
    REQUIRED_CONTENT_LENGTH_INCREMENT = 256 * 1024

    UPLOAD_XML_PREFIX = '<?xml version="1.0" encoding="UTF-8"?><ns1:mutate ' +
          'xmlns:ns1="https://adwords.google.com/api/adwords/cm/%s">'
    UPLOAD_XML_SUFFIX = '</ns1:mutate>'
    DEFAULT_HEADERS = {"Content-Type" => "application/xml"}

    SERVICES_BY_OPERATION_TYPE = {
      'AdGroupAdOperation' => :AdGroupAdService,
      'AdGroupAdLabelOperation' => :AdGroupAdService,
      'AdGroupBidModifierOperation' => :AdGroupBidModifierService,
      'AdGroupCriterionOperation' => :AdGroupCriterionService,
      'AdGroupCriterionLabelOperation' => :AdGroupCriterionService,
      'AdGroupExtensionSettingOperation' => :AdGroupExtensionSettingService,
      'AdGroupOperation' => :AdGroupService,
      'AdGroupLabelOperation' => :AdGroupService,
      'BudgetOperation' => :BudgetService,
      'CampaignCriterionOperation' => :CampaignCriterionService,
      'CampaignExtensionSettingOperation' => :CampaignExtensionSettingService,
      'CampaignLabelOperation' => :CampaignService,
      'CampaignOperation' => :CampaignService,
      'CampaignSharedSetOperation' => :CampaignSharedSetService,
      'CustomerExtensionSettingOperation' => :CustomerExtensionSettingService,
      'FeedItemOperation' => :FeedItemService,
      'FeedItemTargetOperation' => :FeedItemTargetService,
      'SharedCriterionOperation' => :SharedCriterionService,
      'SharedSetOperation' => :SharedSetService
    }

    METHODS_BY_OPERATION_TYPE = {
      'AdGroupAdOperation' => 'mutate_to_xml',
      'AdGroupAdLabelOperation' => 'mutate_label_to_xml',
      'AdGroupBidModifierOperation' => 'mutate_to_xml',
      'AdGroupCriterionOperation' => 'mutate_to_xml',
      'AdGroupCriterionLabelOperation' => 'mutate_label_to_xml',
      'AdGroupExtensionSettingOperation' => 'mutate_to_xml',
      'AdGroupOperation' => 'mutate_to_xml',
      'AdGroupLabelOperation' => 'mutate_label_to_xml',
      'BudgetOperation' => 'mutate_to_xml',
      'CampaignCriterionOperation' => 'mutate_to_xml',
      'CampaignExtensionSettingOperation' => 'mutate_to_xml',
      'CampaignLabelOperation' => 'mutate_label_to_xml',
      'CampaignOperation' => 'mutate_to_xml',
      'CampaignSharedSetOperation' => 'mutate_to_xml',
      'CustomerExtensionSettingOperation' => 'mutate_to_xml',
      'FeedItemOperation' => 'mutate_to_xml',
      'FeedItemTargetOperation' => 'mutate_to_xml',
      'SharedCriterionOperation' => 'mutate_to_xml',
      'SharedSetOperation' => 'mutate_to_xml'
    }

    def generate_soap_operations(hash_operations)
      unless hash_operations.is_a?(Array)
        raise AdwordsApi::Errors::InvalidBatchJobOperationError,
            'Operations must be in an array.'
      end
      return hash_operations.map do |operation|
        operation_type = operation[:xsi_type]
        if operation_type.nil?
          raise AdwordsApi::Errors::InvalidBatchJobOperationError,
              ':xsi_type for operations must be defined ' +
              'explicitly for batch jobs.'
        end
        service_name = SERVICES_BY_OPERATION_TYPE[operation_type]
        if service_name.nil?
          raise AdwordsApi::Errors::InvalidBatchJobOperationError,
              'Unknown operation type: %s' % operation_type
        end
        method_name = METHODS_BY_OPERATION_TYPE[operation_type]
        service = @api.service(service_name, @version)
        full_soap_xml = service.send(method_name, [operation])
        operation_xml = extract_soap_operations(full_soap_xml)
        operation_xml
      end
    end

    # Given a full SOAP xml string, extract just the operations element
    # from the SOAP body as a string.
    def extract_soap_operations(full_soap_xml)
      doc = Nokogiri::XML(full_soap_xml)
      operations = doc.css('wsdl|operations')
      operations.attr('xmlns:xsi', 'http://www.w3.org/2001/XMLSchema-instance')
      operations.each do |element|
        check_xsi_type(element)
      end
      return operations.to_s
    end

    def check_xsi_type(xml_node)
      xsi_type = xml_node['xsi:type']
      unless xsi_type.nil? or xsi_type.start_with?('ns1:')
        xml_node['xsi:type'] = 'ns1:' + xsi_type
      end
      children = xml_node.children
      unless children.empty?
        children.each do |element|
          check_xsi_type(element)
        end
      end
    end

    # Logs the request on debug level.
    def log_request(url, headers, body)
      logger = @api.logger
      logger.debug("Report request to: '%s'" % url)
      logger.debug('HTTP headers: [%s]' %
          (headers.map { |k, v| [k, v].join(': ') }.join(', ')))
      logger.debug(body)
    end

    # Removes extraneous XML information from return hash.
    def sanitize_result(results)
      if results.is_a?(Array)
        ret = []
        results.each do |result|
          ret << sanitize_result(result)
        end
        return ret
      end

      if results.is_a?(Hash)
        ret = {}
        results.each do |k, v|
          v = sanitize_result(v) if v.is_a?(Hash)
          ret[k] = v unless k.to_s.start_with?('@')
        end
        return ret
      end

      return results
    end

    def add_padding(xml)
      remainder = xml.bytesize % REQUIRED_CONTENT_LENGTH_INCREMENT
      return xml if remainder == 0
      bytes_to_add = REQUIRED_CONTENT_LENGTH_INCREMENT - remainder
      padded_xml = xml + (' ' * bytes_to_add)
      return padded_xml
    end

    def get_nori()
      return @nori if @nori

      nori_options = {
        :strip_namespaces      => true,
        :convert_tags_to       => lambda { |tag| tag.snakecase.to_sym },
        :empty_tag_value       => "",
        :advanced_typecasting  => false
      }

      @nori = Nori.new(nori_options)

      return @nori
    end
  end
end
