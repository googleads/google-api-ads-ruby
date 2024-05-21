# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.0 on 2024-05-21 12:51:28.

require 'ads_common/savon_service'
require 'ad_manager_api/v202402/cdn_configuration_service_registry'

module AdManagerApi; module V202402; module CdnConfigurationService
  class CdnConfigurationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202402'
      super(config, endpoint, namespace, :v202402)
    end

    def create_cdn_configurations(*args, &block)
      return execute_action('create_cdn_configurations', args, &block)
    end

    def create_cdn_configurations_to_xml(*args)
      return get_soap_xml('create_cdn_configurations', args)
    end

    def get_cdn_configurations_by_statement(*args, &block)
      return execute_action('get_cdn_configurations_by_statement', args, &block)
    end

    def get_cdn_configurations_by_statement_to_xml(*args)
      return get_soap_xml('get_cdn_configurations_by_statement', args)
    end

    def perform_cdn_configuration_action(*args, &block)
      return execute_action('perform_cdn_configuration_action', args, &block)
    end

    def perform_cdn_configuration_action_to_xml(*args)
      return get_soap_xml('perform_cdn_configuration_action', args)
    end

    def update_cdn_configurations(*args, &block)
      return execute_action('update_cdn_configurations', args, &block)
    end

    def update_cdn_configurations_to_xml(*args)
      return get_soap_xml('update_cdn_configurations', args)
    end

    private

    def get_service_registry()
      return CdnConfigurationServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202402::CdnConfigurationService
    end
  end
end; end; end
