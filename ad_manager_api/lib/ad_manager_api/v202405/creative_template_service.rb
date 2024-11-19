# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.1.0 on 2024-11-13 15:21:35.

require 'ads_common/savon_service'
require 'ad_manager_api/v202405/creative_template_service_registry'

module AdManagerApi; module V202405; module CreativeTemplateService
  class CreativeTemplateService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202405'
      super(config, endpoint, namespace, :v202405)
    end

    def get_creative_templates_by_statement(*args, &block)
      return execute_action('get_creative_templates_by_statement', args, &block)
    end

    def get_creative_templates_by_statement_to_xml(*args)
      return get_soap_xml('get_creative_templates_by_statement', args)
    end

    private

    def get_service_registry()
      return CreativeTemplateServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202405::CreativeTemplateService
    end
  end
end; end; end
