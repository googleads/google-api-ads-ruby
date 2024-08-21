# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.1 on 2024-08-14 18:07:03.

require 'ads_common/savon_service'
require 'ad_manager_api/v202311/ad_rule_service_registry'

module AdManagerApi; module V202311; module AdRuleService
  class AdRuleService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202311'
      super(config, endpoint, namespace, :v202311)
    end

    def create_ad_rules(*args, &block)
      return execute_action('create_ad_rules', args, &block)
    end

    def create_ad_rules_to_xml(*args)
      return get_soap_xml('create_ad_rules', args)
    end

    def create_ad_spots(*args, &block)
      return execute_action('create_ad_spots', args, &block)
    end

    def create_ad_spots_to_xml(*args)
      return get_soap_xml('create_ad_spots', args)
    end

    def create_break_templates(*args, &block)
      return execute_action('create_break_templates', args, &block)
    end

    def create_break_templates_to_xml(*args)
      return get_soap_xml('create_break_templates', args)
    end

    def get_ad_rules_by_statement(*args, &block)
      return execute_action('get_ad_rules_by_statement', args, &block)
    end

    def get_ad_rules_by_statement_to_xml(*args)
      return get_soap_xml('get_ad_rules_by_statement', args)
    end

    def get_ad_spots_by_statement(*args, &block)
      return execute_action('get_ad_spots_by_statement', args, &block)
    end

    def get_ad_spots_by_statement_to_xml(*args)
      return get_soap_xml('get_ad_spots_by_statement', args)
    end

    def get_break_templates_by_statement(*args, &block)
      return execute_action('get_break_templates_by_statement', args, &block)
    end

    def get_break_templates_by_statement_to_xml(*args)
      return get_soap_xml('get_break_templates_by_statement', args)
    end

    def perform_ad_rule_action(*args, &block)
      return execute_action('perform_ad_rule_action', args, &block)
    end

    def perform_ad_rule_action_to_xml(*args)
      return get_soap_xml('perform_ad_rule_action', args)
    end

    def update_ad_rules(*args, &block)
      return execute_action('update_ad_rules', args, &block)
    end

    def update_ad_rules_to_xml(*args)
      return get_soap_xml('update_ad_rules', args)
    end

    def update_ad_spots(*args, &block)
      return execute_action('update_ad_spots', args, &block)
    end

    def update_ad_spots_to_xml(*args)
      return get_soap_xml('update_ad_spots', args)
    end

    def update_break_templates(*args, &block)
      return execute_action('update_break_templates', args, &block)
    end

    def update_break_templates_to_xml(*args)
      return get_soap_xml('update_break_templates', args)
    end

    private

    def get_service_registry()
      return AdRuleServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202311::AdRuleService
    end
  end
end; end; end
