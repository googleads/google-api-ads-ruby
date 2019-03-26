# Encoding: utf-8
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
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
# Helper methods for loading and managing the available services in the AdWords
# API.

require 'ads_common/api_config'

require 'adwords_api/version'

module AdwordsApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    # Inherit from AdsCommon::ApiConfig
    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v201809
    LATEST_VERSION = :v201809

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201809 => [
          :AccountLabelService,
          :AdCustomizerFeedService,
          :AdGroupAdService,
          :AdGroupBidModifierService,
          :AdGroupCriterionService,
          :AdGroupExtensionSettingService,
          :AdGroupFeedService,
          :AdGroupService,
          :AdParamService,
          :AdService,
          :AdwordsUserListService,
          :AssetService,
          :BatchJobService,
          :BiddingStrategyService,
          :BudgetOrderService,
          :BudgetService,
          :CampaignBidModifierService,
          :CampaignCriterionService,
          :CampaignExtensionSettingService,
          :CampaignFeedService,
          :CampaignGroupService,
          :CampaignGroupPerformanceTargetService,
          :CampaignService,
          :CampaignSharedSetService,
          :ConstantDataService,
          :ConversionTrackerService,
          :CustomAffinityService,
          :CustomerExtensionSettingService,
          :CustomerFeedService,
          :CustomerNegativeCriterionService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :DraftAsyncErrorService,
          :DraftService,
          :FeedItemService,
          :FeedItemTargetService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :OfflineCallConversionFeedService,
          :OfflineConversionAdjustmentFeedService,
          :OfflineConversionFeedService,
          :OfflineDataUploadService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :TrialAsyncErrorService,
          :TrialService
      ]
    }

    # Configure the base URL for each version and scope.
    @@config = {
      :oauth_scope => 'https://www.googleapis.com/auth/adwords',
      :header_ns => 'https://adwords.google.com/api/adwords/cm/',
      :v201809 => 'https://adwords.google.com/api/adwords/'
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v201809
      [:v201809, :AccountLabelService] => 'mcm/',
      [:v201809, :AdCustomizerFeedService] => 'cm/',
      [:v201809, :AdGroupAdService] => 'cm/',
      [:v201809, :AdGroupBidModifierService] => 'cm/',
      [:v201809, :AdGroupCriterionService] => 'cm/',
      [:v201809, :AdGroupExtensionSettingService] => 'cm/',
      [:v201809, :AdGroupFeedService] => 'cm/',
      [:v201809, :AdGroupService] => 'cm/',
      [:v201809, :AdParamService] => 'cm/',
      [:v201809, :AdService] => 'cm/',
      [:v201809, :AdwordsUserListService] => 'rm/',
      [:v201809, :AssetService] => 'cm/',
      [:v201809, :BatchJobService] => 'cm/',
      [:v201809, :BiddingStrategyService] => 'cm/',
      [:v201809, :BudgetOrderService] => 'billing/',
      [:v201809, :BudgetService] => 'cm/',
      [:v201809, :CampaignBidModifierService] => 'cm/',
      [:v201809, :CampaignCriterionService] => 'cm/',
      [:v201809, :CampaignExtensionSettingService] => 'cm/',
      [:v201809, :CampaignFeedService] => 'cm/',
      [:v201809, :CampaignGroupService] => 'cm/',
      [:v201809, :CampaignGroupPerformanceTargetService] => 'cm/',
      [:v201809, :CampaignService] => 'cm/',
      [:v201809, :CampaignSharedSetService] => 'cm/',
      [:v201809, :ConstantDataService] => 'cm/',
      [:v201809, :ConversionTrackerService] => 'cm/',
      [:v201809, :CustomAffinityService] => 'rm/',
      [:v201809, :CustomerExtensionSettingService] => 'cm/',
      [:v201809, :CustomerFeedService] => 'cm/',
      [:v201809, :CustomerNegativeCriterionService] => 'cm/',
      [:v201809, :CustomerService] => 'mcm/',
      [:v201809, :CustomerSyncService] => 'ch/',
      [:v201809, :DraftAsyncErrorService] => 'cm/',
      [:v201809, :DataService] => 'cm/',
      [:v201809, :DraftService] => 'cm/',
      [:v201809, :FeedItemService] => 'cm/',
      [:v201809, :FeedItemTargetService] => 'cm/',
      [:v201809, :FeedMappingService] => 'cm/',
      [:v201809, :FeedService] => 'cm/',
      [:v201809, :LabelService] => 'cm/',
      [:v201809, :LocationCriterionService] => 'cm/',
      [:v201809, :ManagedCustomerService] => 'mcm/',
      [:v201809, :MediaService] => 'cm/',
      [:v201809, :OfflineCallConversionFeedService] => 'cm/',
      [:v201809, :OfflineConversionAdjustmentFeedService] => 'cm/',
      [:v201809, :OfflineConversionFeedService] => 'cm/',
      [:v201809, :OfflineDataUploadService] => 'rm/',
      [:v201809, :ReportDefinitionService] => 'cm/',
      [:v201809, :SharedCriterionService] => 'cm/',
      [:v201809, :SharedSetService] => 'cm/',
      [:v201809, :TargetingIdeaService] => 'o/',
      [:v201809, :TrafficEstimatorService] => 'o/',
      [:v201809, :TrialAsyncErrorService] => 'cm/',
      [:v201809, :TrialService] => 'cm/'
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
      @@subdir_config
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end

    def self.headers_config
      @@headers_config
    end

    # Get the download URL for Ad Hoc reports.
    #
    # Args:
    # - version: the API version (as a symbol)
    #
    # Returns:
    # - The endpoint URL (as a string)
    #
    def self.adhoc_report_download_url(version)
      base = get_wsdl_base(version)
      if base
        base += 'reportdownload/%s' % version.to_s
      end
      return base
    end
  end
end
