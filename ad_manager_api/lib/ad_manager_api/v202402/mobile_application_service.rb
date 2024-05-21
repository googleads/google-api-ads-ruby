# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.0 on 2024-05-21 12:51:56.

require 'ads_common/savon_service'
require 'ad_manager_api/v202402/mobile_application_service_registry'

module AdManagerApi; module V202402; module MobileApplicationService
  class MobileApplicationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202402'
      super(config, endpoint, namespace, :v202402)
    end

    def create_mobile_applications(*args, &block)
      return execute_action('create_mobile_applications', args, &block)
    end

    def create_mobile_applications_to_xml(*args)
      return get_soap_xml('create_mobile_applications', args)
    end

    def get_mobile_applications_by_statement(*args, &block)
      return execute_action('get_mobile_applications_by_statement', args, &block)
    end

    def get_mobile_applications_by_statement_to_xml(*args)
      return get_soap_xml('get_mobile_applications_by_statement', args)
    end

    def perform_mobile_application_action(*args, &block)
      return execute_action('perform_mobile_application_action', args, &block)
    end

    def perform_mobile_application_action_to_xml(*args)
      return get_soap_xml('perform_mobile_application_action', args)
    end

    def update_mobile_applications(*args, &block)
      return execute_action('update_mobile_applications', args, &block)
    end

    def update_mobile_applications_to_xml(*args)
      return get_soap_xml('update_mobile_applications', args)
    end

    private

    def get_service_registry()
      return MobileApplicationServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202402::MobileApplicationService
    end
  end
end; end; end
