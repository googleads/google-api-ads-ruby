# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2023, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2023-11-03 13:25:36.

require 'ads_common/savon_service'
require 'ad_manager_api/v202305/network_service_registry'

module AdManagerApi; module V202305; module NetworkService
  class NetworkService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202305'
      super(config, endpoint, namespace, :v202305)
    end

    def get_all_networks(*args, &block)
      return execute_action('get_all_networks', args, &block)
    end

    def get_all_networks_to_xml(*args)
      return get_soap_xml('get_all_networks', args)
    end

    def get_current_network(*args, &block)
      return execute_action('get_current_network', args, &block)
    end

    def get_current_network_to_xml(*args)
      return get_soap_xml('get_current_network', args)
    end

    def get_default_third_party_data_declaration(*args, &block)
      return execute_action('get_default_third_party_data_declaration', args, &block)
    end

    def get_default_third_party_data_declaration_to_xml(*args)
      return get_soap_xml('get_default_third_party_data_declaration', args)
    end

    def make_test_network(*args, &block)
      return execute_action('make_test_network', args, &block)
    end

    def make_test_network_to_xml(*args)
      return get_soap_xml('make_test_network', args)
    end

    def update_network(*args, &block)
      return execute_action('update_network', args, &block)
    end

    def update_network_to_xml(*args)
      return get_soap_xml('update_network', args)
    end

    private

    def get_service_registry()
      return NetworkServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202305::NetworkService
    end
  end
end; end; end
