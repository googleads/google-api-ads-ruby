# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2025, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 3.0.0 on 2025-02-19 19:20:45.

require 'ads_common/savon_service'
require 'ad_manager_api/v202405/targeting_preset_service_registry'

module AdManagerApi; module V202405; module TargetingPresetService
  class TargetingPresetService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202405'
      super(config, endpoint, namespace, :v202405)
    end

    def create_targeting_presets(*args, &block)
      return execute_action('create_targeting_presets', args, &block)
    end

    def create_targeting_presets_to_xml(*args)
      return get_soap_xml('create_targeting_presets', args)
    end

    def get_targeting_presets_by_statement(*args, &block)
      return execute_action('get_targeting_presets_by_statement', args, &block)
    end

    def get_targeting_presets_by_statement_to_xml(*args)
      return get_soap_xml('get_targeting_presets_by_statement', args)
    end

    def update_targeting_presets(*args, &block)
      return execute_action('update_targeting_presets', args, &block)
    end

    def update_targeting_presets_to_xml(*args)
      return get_soap_xml('update_targeting_presets', args)
    end

    private

    def get_service_registry()
      return TargetingPresetServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202405::TargetingPresetService
    end
  end
end; end; end
