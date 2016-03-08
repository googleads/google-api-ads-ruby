# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2016-02-19 16:36:08.

require 'ads_common/savon_service'
require 'dfp_api/v201508/inventory_service_registry'

module DfpApi; module V201508; module InventoryService
  class InventoryService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201508'
      super(config, endpoint, namespace, :v201508)
    end

    def create_ad_units(*args, &block)
      return execute_action('create_ad_units', args, &block)
    end

    def create_ad_units_to_xml(*args)
      return get_soap_xml('create_ad_units', args)
    end

    def get_ad_unit_sizes_by_statement(*args, &block)
      return execute_action('get_ad_unit_sizes_by_statement', args, &block)
    end

    def get_ad_unit_sizes_by_statement_to_xml(*args)
      return get_soap_xml('get_ad_unit_sizes_by_statement', args)
    end

    def get_ad_units_by_statement(*args, &block)
      return execute_action('get_ad_units_by_statement', args, &block)
    end

    def get_ad_units_by_statement_to_xml(*args)
      return get_soap_xml('get_ad_units_by_statement', args)
    end

    def perform_ad_unit_action(*args, &block)
      return execute_action('perform_ad_unit_action', args, &block)
    end

    def perform_ad_unit_action_to_xml(*args)
      return get_soap_xml('perform_ad_unit_action', args)
    end

    def update_ad_units(*args, &block)
      return execute_action('update_ad_units', args, &block)
    end

    def update_ad_units_to_xml(*args)
      return get_soap_xml('update_ad_units', args)
    end

    private

    def get_service_registry()
      return InventoryServiceRegistry
    end

    def get_module()
      return DfpApi::V201508::InventoryService
    end
  end
end; end; end
