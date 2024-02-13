# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2024-02-06 17:10:35.

require 'ads_common/savon_service'
require 'ad_manager_api/v202308/adjustment_service_registry'

module AdManagerApi; module V202308; module AdjustmentService
  class AdjustmentService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202308'
      super(config, endpoint, namespace, :v202308)
    end

    def calculate_daily_ad_opportunity_counts(*args, &block)
      return execute_action('calculate_daily_ad_opportunity_counts', args, &block)
    end

    def calculate_daily_ad_opportunity_counts_to_xml(*args)
      return get_soap_xml('calculate_daily_ad_opportunity_counts', args)
    end

    def create_forecast_adjustments(*args, &block)
      return execute_action('create_forecast_adjustments', args, &block)
    end

    def create_forecast_adjustments_to_xml(*args)
      return get_soap_xml('create_forecast_adjustments', args)
    end

    def create_traffic_forecast_segments(*args, &block)
      return execute_action('create_traffic_forecast_segments', args, &block)
    end

    def create_traffic_forecast_segments_to_xml(*args)
      return get_soap_xml('create_traffic_forecast_segments', args)
    end

    def get_forecast_adjustments_by_statement(*args, &block)
      return execute_action('get_forecast_adjustments_by_statement', args, &block)
    end

    def get_forecast_adjustments_by_statement_to_xml(*args)
      return get_soap_xml('get_forecast_adjustments_by_statement', args)
    end

    def get_traffic_forecast_segments_by_statement(*args, &block)
      return execute_action('get_traffic_forecast_segments_by_statement', args, &block)
    end

    def get_traffic_forecast_segments_by_statement_to_xml(*args)
      return get_soap_xml('get_traffic_forecast_segments_by_statement', args)
    end

    def perform_forecast_adjustment_action(*args, &block)
      return execute_action('perform_forecast_adjustment_action', args, &block)
    end

    def perform_forecast_adjustment_action_to_xml(*args)
      return get_soap_xml('perform_forecast_adjustment_action', args)
    end

    def update_forecast_adjustments(*args, &block)
      return execute_action('update_forecast_adjustments', args, &block)
    end

    def update_forecast_adjustments_to_xml(*args)
      return get_soap_xml('update_forecast_adjustments', args)
    end

    def update_traffic_forecast_segments(*args, &block)
      return execute_action('update_traffic_forecast_segments', args, &block)
    end

    def update_traffic_forecast_segments_to_xml(*args)
      return get_soap_xml('update_traffic_forecast_segments', args)
    end

    private

    def get_service_registry()
      return AdjustmentServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202308::AdjustmentService
    end
  end
end; end; end
