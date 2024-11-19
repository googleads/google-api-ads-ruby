# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.1.0 on 2024-11-13 15:21:06.

require 'ads_common/savon_service'
require 'ad_manager_api/v202402/native_style_service_registry'

module AdManagerApi; module V202402; module NativeStyleService
  class NativeStyleService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202402'
      super(config, endpoint, namespace, :v202402)
    end

    def create_native_styles(*args, &block)
      return execute_action('create_native_styles', args, &block)
    end

    def create_native_styles_to_xml(*args)
      return get_soap_xml('create_native_styles', args)
    end

    def get_native_styles_by_statement(*args, &block)
      return execute_action('get_native_styles_by_statement', args, &block)
    end

    def get_native_styles_by_statement_to_xml(*args)
      return get_soap_xml('get_native_styles_by_statement', args)
    end

    def perform_native_style_action(*args, &block)
      return execute_action('perform_native_style_action', args, &block)
    end

    def perform_native_style_action_to_xml(*args)
      return get_soap_xml('perform_native_style_action', args)
    end

    def update_native_styles(*args, &block)
      return execute_action('update_native_styles', args, &block)
    end

    def update_native_styles_to_xml(*args)
      return get_soap_xml('update_native_styles', args)
    end

    private

    def get_service_registry()
      return NativeStyleServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202402::NativeStyleService
    end
  end
end; end; end
