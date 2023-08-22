# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2023, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2023-08-15 13:40:43.

require 'ads_common/savon_service'
require 'ad_manager_api/v202211/contact_service_registry'

module AdManagerApi; module V202211; module ContactService
  class ContactService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202211'
      super(config, endpoint, namespace, :v202211)
    end

    def create_contacts(*args, &block)
      return execute_action('create_contacts', args, &block)
    end

    def create_contacts_to_xml(*args)
      return get_soap_xml('create_contacts', args)
    end

    def get_contacts_by_statement(*args, &block)
      return execute_action('get_contacts_by_statement', args, &block)
    end

    def get_contacts_by_statement_to_xml(*args)
      return get_soap_xml('get_contacts_by_statement', args)
    end

    def update_contacts(*args, &block)
      return execute_action('update_contacts', args, &block)
    end

    def update_contacts_to_xml(*args)
      return get_soap_xml('update_contacts', args)
    end

    private

    def get_service_registry()
      return ContactServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202211::ContactService
    end
  end
end; end; end
