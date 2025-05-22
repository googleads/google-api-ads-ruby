# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# Helper methods for loading and managing the available services in the DFP API.

require 'ads_common/api_config'

require 'ad_manager_api/version'

module AdManagerApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v202505
    LATEST_VERSION = :v202505

    # Set other constants
    API_NAME = 'AdManagerApi'
    DEFAULT_CONFIG_FILENAME = 'ad_manager_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v202408 => [:AdjustmentService, :AdRuleService, :AdsTxtService,
                   :AudienceSegmentService, :CompanyService, :CdnConfigurationService,
                   :CmsMetadataService, :ContactService, :ContentBundleService,
                   :ContentService, :CreativeService,
                   :CreativeSetService, :CreativeTemplateService,
                   :CreativeWrapperService, :CustomFieldService,
                   :CustomTargetingService, :DaiAuthenticationKeyService,
                   :DaiEncodingProfileService, :ForecastService,
                   :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PlacementService,
                   :ProposalLineItemService, :ProposalService,
                   :PublisherQueryLanguageService, :ReportService,
                   :SegmentPopulationService, :SiteService,
                   :StreamActivityMonitorService, :SuggestedAdUnitService,
                   :TargetingPresetService, :TeamService, :UserService,
                   :UserTeamAssociationService, :YieldGroupService],
      :v202411 => [:AdjustmentService, :AdRuleService, :AdsTxtService,
                   :AudienceSegmentService, :CompanyService, :CdnConfigurationService,
                   :CmsMetadataService, :ContactService, :ContentBundleService,
                   :ContentService, :CreativeService,
                   :CreativeSetService, :CreativeTemplateService,
                   :CreativeWrapperService, :CustomFieldService,
                   :CustomTargetingService, :DaiAuthenticationKeyService,
                   :DaiEncodingProfileService, :ForecastService,
                   :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PlacementService,
                   :ProposalLineItemService, :ProposalService,
                   :PublisherQueryLanguageService, :ReportService,
                   :SegmentPopulationService, :SiteService,
                   :StreamActivityMonitorService, :SuggestedAdUnitService,
                   :TargetingPresetService, :TeamService, :UserService,
                   :UserTeamAssociationService, :YieldGroupService],
      :v202502 => [:AdjustmentService, :AdRuleService, :AdsTxtService,
                   :AudienceSegmentService, :CompanyService, :CdnConfigurationService,
                   :CmsMetadataService, :ContactService, :ContentBundleService,
                   :ContentService, :CreativeService,
                   :CreativeSetService, :CreativeTemplateService,
                   :CreativeWrapperService, :CustomFieldService,
                   :CustomTargetingService, :DaiAuthenticationKeyService,
                   :DaiEncodingProfileService, :ForecastService,
                   :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PlacementService,
                   :ProposalLineItemService, :ProposalService,
                   :PublisherQueryLanguageService, :ReportService,
                   :SegmentPopulationService, :SiteService,
                   :StreamActivityMonitorService, :SuggestedAdUnitService,
                   :TargetingPresetService, :TeamService, :UserService,
                   :UserTeamAssociationService, :YieldGroupService],
      :v202505 => [:AdjustmentService, :AdRuleService, :AdsTxtService,
                   :AudienceSegmentService, :CompanyService, :CdnConfigurationService,
                   :CmsMetadataService, :ContactService, :ContentBundleService,
                   :ContentService, :CreativeService,
                   :CreativeSetService, :CreativeTemplateService,
                   :CreativeWrapperService, :CustomFieldService,
                   :CustomTargetingService, :DaiAuthenticationKeyService,
                   :DaiEncodingProfileService, :ForecastService,
                   :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PlacementService,
                   :ProposalLineItemService, :ProposalService,
                   :PublisherQueryLanguageService, :ReportService,
                   :SegmentPopulationService, :SiteService,
                   :StreamActivityMonitorService, :SuggestedAdUnitService,
                   :TargetingPresetService, :TeamService, :UserService,
                   :UserTeamAssociationService, :YieldGroupService]
    }

    # Configure the base URL for each version and scope.
    @@config = {
      :oauth_scope => 'https://www.googleapis.com/auth/dfp',
      :header_ns => 'https://www.google.com/apis/ads/publisher/',
      :v202408 => 'https://ads.google.com/apis/ads/publisher/',
      :v202411 => 'https://ads.google.com/apis/ads/publisher/',
      :v202502 => 'https://ads.google.com/apis/ads/publisher/',
      :v202505 => 'https://ads.google.com/apis/ads/publisher/'
    }

    public

    # Getters for constants and module variables.
    def self.default_version
      DEFAULT_VERSION
    end

    def self.latest_version
      LATEST_VERSION
    end

    def self.api_name
      API_NAME
    end

    def self.service_config
      @@service_config
    end

    def self.config(key)
      @@config[key]
    end

    def self.subdir_config
      nil
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end
  end
end
