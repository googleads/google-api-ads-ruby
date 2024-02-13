# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2024-02-06 17:09:31.

require 'ads_common/savon_service'
require 'ad_manager_api/v202305/content_service_registry'

module AdManagerApi; module V202305; module ContentService
  class ContentService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202305'
      super(config, endpoint, namespace, :v202305)
    end

    def get_content_by_statement(*args, &block)
      return execute_action('get_content_by_statement', args, &block)
    end

    def get_content_by_statement_to_xml(*args)
      return get_soap_xml('get_content_by_statement', args)
    end

    private

    def get_service_registry()
      return ContentServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202305::ContentService
    end
  end
end; end; end
