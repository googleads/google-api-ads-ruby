# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.1.0 on 2024-11-13 15:22:51.

require 'ads_common/savon_service'
require 'ad_manager_api/v202408/user_team_association_service_registry'

module AdManagerApi; module V202408; module UserTeamAssociationService
  class UserTeamAssociationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202408'
      super(config, endpoint, namespace, :v202408)
    end

    def create_user_team_associations(*args, &block)
      return execute_action('create_user_team_associations', args, &block)
    end

    def create_user_team_associations_to_xml(*args)
      return get_soap_xml('create_user_team_associations', args)
    end

    def get_user_team_associations_by_statement(*args, &block)
      return execute_action('get_user_team_associations_by_statement', args, &block)
    end

    def get_user_team_associations_by_statement_to_xml(*args)
      return get_soap_xml('get_user_team_associations_by_statement', args)
    end

    def perform_user_team_association_action(*args, &block)
      return execute_action('perform_user_team_association_action', args, &block)
    end

    def perform_user_team_association_action_to_xml(*args)
      return get_soap_xml('perform_user_team_association_action', args)
    end

    def update_user_team_associations(*args, &block)
      return execute_action('update_user_team_associations', args, &block)
    end

    def update_user_team_associations_to_xml(*args)
      return get_soap_xml('update_user_team_associations', args)
    end

    private

    def get_service_registry()
      return UserTeamAssociationServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202408::UserTeamAssociationService
    end
  end
end; end; end
