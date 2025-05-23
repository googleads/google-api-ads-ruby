# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2025, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 3.0.0 on 2025-05-13 20:47:26.

require 'ads_common/savon_service'
require 'ad_manager_api/v202408/line_item_creative_association_service_registry'

module AdManagerApi; module V202408; module LineItemCreativeAssociationService
  class LineItemCreativeAssociationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202408'
      super(config, endpoint, namespace, :v202408)
    end

    def create_line_item_creative_associations(*args, &block)
      return execute_action('create_line_item_creative_associations', args, &block)
    end

    def create_line_item_creative_associations_to_xml(*args)
      return get_soap_xml('create_line_item_creative_associations', args)
    end

    def get_line_item_creative_associations_by_statement(*args, &block)
      return execute_action('get_line_item_creative_associations_by_statement', args, &block)
    end

    def get_line_item_creative_associations_by_statement_to_xml(*args)
      return get_soap_xml('get_line_item_creative_associations_by_statement', args)
    end

    def get_preview_url(*args, &block)
      return execute_action('get_preview_url', args, &block)
    end

    def get_preview_url_to_xml(*args)
      return get_soap_xml('get_preview_url', args)
    end

    def get_preview_urls_for_native_styles(*args, &block)
      return execute_action('get_preview_urls_for_native_styles', args, &block)
    end

    def get_preview_urls_for_native_styles_to_xml(*args)
      return get_soap_xml('get_preview_urls_for_native_styles', args)
    end

    def perform_line_item_creative_association_action(*args, &block)
      return execute_action('perform_line_item_creative_association_action', args, &block)
    end

    def perform_line_item_creative_association_action_to_xml(*args)
      return get_soap_xml('perform_line_item_creative_association_action', args)
    end

    def push_creative_to_devices(*args, &block)
      return execute_action('push_creative_to_devices', args, &block)
    end

    def push_creative_to_devices_to_xml(*args)
      return get_soap_xml('push_creative_to_devices', args)
    end

    def update_line_item_creative_associations(*args, &block)
      return execute_action('update_line_item_creative_associations', args, &block)
    end

    def update_line_item_creative_associations_to_xml(*args)
      return get_soap_xml('update_line_item_creative_associations', args)
    end

    private

    def get_service_registry()
      return LineItemCreativeAssociationServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202408::LineItemCreativeAssociationService
    end
  end
end; end; end
