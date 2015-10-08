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

    # Generates SOAP operations from a ruby hash. The hash uses the same format
    # as a normal request.
    #
    # Args:
    # - hash_operations: An array of ruby hash of operations to convert to SOAP
    # - service_name: The name of the AdwordsApi service as a symbol that would
    #   normally make this request
    #
    # Returns:
    # - operations elements of SOAP body as an array of strings
    #
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

    # Posts the provided SOAP operations to the provided URL.
    #
    # Args:
    # - soap_operations: An array including SOAP operations provided by
    #   generate_soap_operations
    # - batch_job_url: The URL provided by BatchJobService to post the provided
    #   operations to
    #
    def post_soap_operations(soap_operations, batch_job_url)
      headers = DEFAULT_HEADERS
      request_body = UPLOAD_XML_SKELETON % [@version, soap_operations.join]
      log_request(batch_job_url, headers, request_body)
      response = AdsCommon::Http.post_response(
          batch_job_url, request_body, @api.config, headers)
    end

    # A convenience method that will generate SOAP operations and immediately
    # execute them. This is useful if your operations all would be
    # processed by a single service.
    #
    # Args:
    # - hash_operations: An array of ruby has operations to execute by
    #   posting them to the provided URL
    # - service_name: The name of the AdwordsApi service as a symbol that would
    #   normally make this request
    # - batch_job_url: The URL provided by BatchjobService to post the provided
    #   operations to
    #
    def execute_hash_operations(hash_operations, batch_job_url)
      soap_operations = generate_soap_operations(hash_operations)
      post_soap_operations(soap_operations, batch_job_url)
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
      xml_response = AdsCommon::Http.get_response(batch_job_url, @api.config)
      begin
        return sanitize_result(
            get_nori().parse(xml_response.body)[:mutate_response][:rval])
      rescue
        return nil
      end
    end

    private

    UPLOAD_XML_SKELETON = '<?xml version="1.0" encoding="UTF-8"?><ns1:mutate ' +
          'xmlns:ns1="https://adwords.google.com/api/adwords/cm/%s">%s' +
          '</ns1:mutate>'
    DEFAULT_HEADERS = {"Content-Type" => "application/xml"}

    SERVICES_BY_OPERATION_TYPE = {
      'AdGroupAdOperation' => :AdGroupAdService,
      'AdGroupAdLabelOperation' => :AdGroupAdService,
      'AdGroupBidModifierOperation' => :AdGroupBidModifierService,
      'AdGroupCriterionOperation' => :AdGroupCriterionService,
      'AdGroupCriterionLabelOperation' => :AdGroupCriterionService,
      'AdGroupOperation' => :AdGroupService,
      'AdGroupLabelOperation' => :AdGroupService,
      'BudgetOperation' => :BudgetService,
      'CampaignCriterionOperation' => :CampaignCriterionService,
      'CampaignOperation' => :CampaignService,
      'CampaignLabelOperation' => :CampaignService,
      'FeedItemOperation' => :FeedItemService
    }

    METHODS_BY_OPERATION_TYPE = {
      'AdGroupAdOperation' => 'mutate_to_xml',
      'AdGroupAdLabelOperation' => 'mutate_label_to_xml',
      'AdGroupBidModifierOperation' => 'mutate_to_xml',
      'AdGroupCriterionOperation' => 'mutate_to_xml',
      'AdGroupCriterionLabelOperation' => 'mutate_label_to_xml',
      'AdGroupOperation' => 'mutate_to_xml',
      'AdGroupLabelOperation' => 'mutate_label_to_xml',
      'BudgetOperation' => 'mutate_to_xml',
      'CampaignCriterionOperation' => 'mutate_to_xml',
      'CampaignOperation' => 'mutate_to_xml',
      'CampaignLabelOperation' => 'mutate_label_to_xml',
      'FeedItemOperation' => 'mutate_to_xml'
    }

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

    def get_nori()
      return @nori if @nori

      nori_options = {
        :strip_namespaces      => true,
        :convert_tags_to       => lambda { |tag| tag.snakecase.to_sym },
        :advanced_typecasting  => false
      }

      @nori = Nori.new(nori_options)

      return @nori
    end
  end
end
