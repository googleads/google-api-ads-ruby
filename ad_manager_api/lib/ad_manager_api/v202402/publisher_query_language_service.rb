# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.1.0 on 2024-11-13 15:21:15.

require 'ads_common/savon_service'
require 'ad_manager_api/v202402/publisher_query_language_service_registry'

module AdManagerApi; module V202402; module PublisherQueryLanguageService
  class PublisherQueryLanguageService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202402'
      super(config, endpoint, namespace, :v202402)
    end

    def select(*args, &block)
      return execute_action('select', args, &block)
    end

    def select_to_xml(*args)
      return get_soap_xml('select', args)
    end

    private

    def get_service_registry()
      return PublisherQueryLanguageServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202402::PublisherQueryLanguageService
    end
  end
end; end; end
