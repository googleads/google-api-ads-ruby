# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.0 on 2024-05-21 12:50:32.

require 'ads_common/savon_service'
require 'ad_manager_api/v202311/audience_segment_service_registry'

module AdManagerApi; module V202311; module AudienceSegmentService
  class AudienceSegmentService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202311'
      super(config, endpoint, namespace, :v202311)
    end

    def create_audience_segments(*args, &block)
      return execute_action('create_audience_segments', args, &block)
    end

    def create_audience_segments_to_xml(*args)
      return get_soap_xml('create_audience_segments', args)
    end

    def get_audience_segments_by_statement(*args, &block)
      return execute_action('get_audience_segments_by_statement', args, &block)
    end

    def get_audience_segments_by_statement_to_xml(*args)
      return get_soap_xml('get_audience_segments_by_statement', args)
    end

    def perform_audience_segment_action(*args, &block)
      return execute_action('perform_audience_segment_action', args, &block)
    end

    def perform_audience_segment_action_to_xml(*args)
      return get_soap_xml('perform_audience_segment_action', args)
    end

    def update_audience_segments(*args, &block)
      return execute_action('update_audience_segments', args, &block)
    end

    def update_audience_segments_to_xml(*args)
      return get_soap_xml('update_audience_segments', args)
    end

    private

    def get_service_registry()
      return AudienceSegmentServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202311::AudienceSegmentService
    end
  end
end; end; end
