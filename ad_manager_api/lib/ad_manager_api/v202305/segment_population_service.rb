# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2023, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2023-08-15 13:43:01.

require 'ads_common/savon_service'
require 'ad_manager_api/v202305/segment_population_service_registry'

module AdManagerApi; module V202305; module SegmentPopulationService
  class SegmentPopulationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202305'
      super(config, endpoint, namespace, :v202305)
    end

    def get_segment_population_results_by_ids(*args, &block)
      return execute_action('get_segment_population_results_by_ids', args, &block)
    end

    def get_segment_population_results_by_ids_to_xml(*args)
      return get_soap_xml('get_segment_population_results_by_ids', args)
    end

    def perform_segment_population_action(*args, &block)
      return execute_action('perform_segment_population_action', args, &block)
    end

    def perform_segment_population_action_to_xml(*args)
      return get_soap_xml('perform_segment_population_action', args)
    end

    def update_segment_memberships(*args, &block)
      return execute_action('update_segment_memberships', args, &block)
    end

    def update_segment_memberships_to_xml(*args)
      return get_soap_xml('update_segment_memberships', args)
    end

    private

    def get_service_registry()
      return SegmentPopulationServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202305::SegmentPopulationService
    end
  end
end; end; end
