# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.0 on 2024-05-21 12:49:54.

require 'ads_common/savon_service'
require 'ad_manager_api/v202308/dai_encoding_profile_service_registry'

module AdManagerApi; module V202308; module DaiEncodingProfileService
  class DaiEncodingProfileService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202308'
      super(config, endpoint, namespace, :v202308)
    end

    def create_dai_encoding_profiles(*args, &block)
      return execute_action('create_dai_encoding_profiles', args, &block)
    end

    def create_dai_encoding_profiles_to_xml(*args)
      return get_soap_xml('create_dai_encoding_profiles', args)
    end

    def get_dai_encoding_profiles_by_statement(*args, &block)
      return execute_action('get_dai_encoding_profiles_by_statement', args, &block)
    end

    def get_dai_encoding_profiles_by_statement_to_xml(*args)
      return get_soap_xml('get_dai_encoding_profiles_by_statement', args)
    end

    def perform_dai_encoding_profile_action(*args, &block)
      return execute_action('perform_dai_encoding_profile_action', args, &block)
    end

    def perform_dai_encoding_profile_action_to_xml(*args)
      return get_soap_xml('perform_dai_encoding_profile_action', args)
    end

    def update_dai_encoding_profiles(*args, &block)
      return execute_action('update_dai_encoding_profiles', args, &block)
    end

    def update_dai_encoding_profiles_to_xml(*args)
      return get_soap_xml('update_dai_encoding_profiles', args)
    end

    private

    def get_service_registry()
      return DaiEncodingProfileServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202308::DaiEncodingProfileService
    end
  end
end; end; end
