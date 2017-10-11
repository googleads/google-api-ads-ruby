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
    DEFAULT_VERSION = :v201710
    LATEST_VERSION = :v201710

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201702 => [
          :AccountLabelService,
          :AdCustomizerFeedService,
          :AdGroupAdService,
          :AdGroupBidModifierService,
          :AdGroupCriterionService,
          :AdGroupExtensionSettingService,
          :AdGroupFeedService,
          :AdGroupService,
          :AdParamService,
          :AdwordsUserListService,
          :BatchJobService,
          :BiddingStrategyService,
          :BudgetOrderService,
          :BudgetService,
          :CampaignCriterionService,
          :CampaignExtensionSettingService,
          :CampaignFeedService,
          :CampaignService,
          :CampaignSharedSetService,
          :ConstantDataService,
          :ConversionTrackerService,
          :CustomerExtensionSettingService,
          :CustomerFeedService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :DraftService,
          :DraftAsyncErrorService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :OfflineCallConversionFeedService,
          :OfflineConversionFeedService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :TrialService,
          :TrialAsyncErrorService
      ],
      :v201705 => [
          :AccountLabelService,
          :AdCustomizerFeedService,
          :AdGroupAdService,
          :AdGroupBidModifierService,
          :AdGroupCriterionService,
          :AdGroupExtensionSettingService,
          :AdGroupFeedService,
          :AdGroupService,
          :AdParamService,
          :AdwordsUserListService,
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
          :CustomerExtensionSettingService,
          :CustomerFeedService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :DraftAsyncErrorService,
          :DraftService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :OfflineCallConversionFeedService,
          :OfflineConversionFeedService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :TrialAsyncErrorService,
          :TrialService
      ],
      :v201708 => [
          :AccountLabelService,
          :AdCustomizerFeedService,
          :AdGroupAdService,
          :AdGroupBidModifierService,
          :AdGroupCriterionService,
          :AdGroupExtensionSettingService,
          :AdGroupFeedService,
          :AdGroupService,
          :AdParamService,
          :AdwordsUserListService,
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
          :CustomerExtensionSettingService,
          :CustomerFeedService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :DraftAsyncErrorService,
          :DraftService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :OfflineCallConversionFeedService,
          :OfflineConversionFeedService,
          :OfflineDataUploadService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :TrialAsyncErrorService,
          :TrialService
      ],
      :v201710 => [
          :AccountLabelService,
          :AdCustomizerFeedService,
          :AdGroupAdService,
          :AdGroupBidModifierService,
          :AdGroupCriterionService,
          :AdGroupExtensionSettingService,
          :AdGroupFeedService,
          :AdGroupService,
          :AdParamService,
          :AdwordsUserListService,
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
          :CustomerExtensionSettingService,
          :CustomerFeedService,
          :CustomerNegativeCriterionService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :DraftAsyncErrorService,
          :DraftService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :OfflineCallConversionFeedService,
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
      :v201702 => 'https://adwords.google.com/api/adwords/',
      :v201705 => 'https://adwords.google.com/api/adwords/',
      :v201708 => 'https://adwords.google.com/api/adwords/',
      :v201710 => 'https://adwords.google.com/api/adwords/'
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v201702
      [:v201702, :AccountLabelService] => 'mcm/',
      [:v201702, :AdCustomizerFeedService] => 'cm/',
      [:v201702, :AdGroupAdService] => 'cm/',
      [:v201702, :AdGroupBidModifierService] => 'cm/',
      [:v201702, :AdGroupCriterionService] => 'cm/',
      [:v201702, :AdGroupExtensionSettingService] => 'cm/',
      [:v201702, :AdGroupFeedService] => 'cm/',
      [:v201702, :AdGroupService] => 'cm/',
      [:v201702, :AdParamService] => 'cm/',
      [:v201702, :BatchJobService] => 'cm/',
      [:v201702, :BudgetOrderService] => 'billing/',
      [:v201702, :CampaignCriterionService] => 'cm/',
      [:v201702, :CampaignExtensionSettingService] => 'cm/',
      [:v201702, :CampaignFeedService] => 'cm/',
      [:v201702, :CampaignService] => 'cm/',
      [:v201702, :CampaignSharedSetService] => 'cm/',
      [:v201702, :ConstantDataService] => 'cm/',
      [:v201702, :ConversionTrackerService] => 'cm/',
      [:v201702, :CustomerExtensionSettingService] => 'cm/',
      [:v201702, :CustomerSyncService] => 'ch/',
      [:v201702, :DataService] => 'cm/',
      [:v201702, :FeedItemService] => 'cm/',
      [:v201702, :FeedMappingService] => 'cm/',
      [:v201702, :FeedService] => 'cm/',
      [:v201702, :LocationCriterionService] => 'cm/',
      [:v201702, :MediaService] => 'cm/',
      [:v201702, :OfflineCallConversionFeedService] => 'cm/',
      [:v201702, :OfflineConversionFeedService] => 'cm/',
      [:v201702, :ReportDefinitionService] => 'cm/',
      [:v201702, :SharedCriterionService] => 'cm/',
      [:v201702, :SharedSetService] => 'cm/',
      [:v201702, :TargetingIdeaService] => 'o/',
      [:v201702, :TrafficEstimatorService] => 'o/',
      [:v201702, :ManagedCustomerService] => 'mcm/',
      [:v201702, :CustomerService] => 'mcm/',
      [:v201702, :CustomerFeedService] => 'cm/',
      [:v201702, :BudgetService] => 'cm/',
      [:v201702, :BiddingStrategyService] => 'cm/',
      [:v201702, :AdwordsUserListService] => 'rm/',
      [:v201702, :LabelService] => 'cm/',
      [:v201702, :DraftService] => 'cm/',
      [:v201702, :DraftAsyncErrorService] => 'cm/',
      [:v201702, :TrialService] => 'cm/',
      [:v201702, :TrialAsyncErrorService] => 'cm/',
      # v201705
      [:v201705, :AccountLabelService] => 'mcm/',
      [:v201705, :AdCustomizerFeedService] => 'cm/',
      [:v201705, :AdGroupAdService] => 'cm/',
      [:v201705, :AdGroupBidModifierService] => 'cm/',
      [:v201705, :AdGroupCriterionService] => 'cm/',
      [:v201705, :AdGroupExtensionSettingService] => 'cm/',
      [:v201705, :AdGroupFeedService] => 'cm/',
      [:v201705, :AdGroupService] => 'cm/',
      [:v201705, :AdParamService] => 'cm/',
      [:v201705, :AdwordsUserListService] => 'rm/',
      [:v201705, :BatchJobService] => 'cm/',
      [:v201705, :BiddingStrategyService] => 'cm/',
      [:v201705, :BudgetOrderService] => 'billing/',
      [:v201705, :BudgetService] => 'cm/',
      [:v201705, :CampaignBidModifierService] => 'cm/',
      [:v201705, :CampaignCriterionService] => 'cm/',
      [:v201705, :CampaignExtensionSettingService] => 'cm/',
      [:v201705, :CampaignFeedService] => 'cm/',
      [:v201705, :CampaignGroupService] => 'cm/',
      [:v201705, :CampaignGroupPerformanceTargetService] => 'cm/',
      [:v201705, :CampaignService] => 'cm/',
      [:v201705, :CampaignSharedSetService] => 'cm/',
      [:v201705, :ConstantDataService] => 'cm/',
      [:v201705, :ConversionTrackerService] => 'cm/',
      [:v201705, :CustomerExtensionSettingService] => 'cm/',
      [:v201705, :CustomerFeedService] => 'cm/',
      [:v201705, :CustomerService] => 'mcm/',
      [:v201705, :CustomerSyncService] => 'ch/',
      [:v201705, :DraftAsyncErrorService] => 'cm/',
      [:v201705, :DataService] => 'cm/',
      [:v201705, :DraftService] => 'cm/',
      [:v201705, :FeedItemService] => 'cm/',
      [:v201705, :FeedMappingService] => 'cm/',
      [:v201705, :FeedService] => 'cm/',
      [:v201705, :LabelService] => 'cm/',
      [:v201705, :LocationCriterionService] => 'cm/',
      [:v201705, :ManagedCustomerService] => 'mcm/',
      [:v201705, :MediaService] => 'cm/',
      [:v201705, :OfflineCallConversionFeedService] => 'cm/',
      [:v201705, :OfflineConversionFeedService] => 'cm/',
      [:v201705, :ReportDefinitionService] => 'cm/',
      [:v201705, :SharedCriterionService] => 'cm/',
      [:v201705, :SharedSetService] => 'cm/',
      [:v201705, :TargetingIdeaService] => 'o/',
      [:v201705, :TrafficEstimatorService] => 'o/',
      [:v201705, :TrialAsyncErrorService] => 'cm/',
      [:v201705, :TrialService] => 'cm/',
      # v201708
      [:v201708, :AccountLabelService] => 'mcm/',
      [:v201708, :AdCustomizerFeedService] => 'cm/',
      [:v201708, :AdGroupAdService] => 'cm/',
      [:v201708, :AdGroupBidModifierService] => 'cm/',
      [:v201708, :AdGroupCriterionService] => 'cm/',
      [:v201708, :AdGroupExtensionSettingService] => 'cm/',
      [:v201708, :AdGroupFeedService] => 'cm/',
      [:v201708, :AdGroupService] => 'cm/',
      [:v201708, :AdParamService] => 'cm/',
      [:v201708, :AdwordsUserListService] => 'rm/',
      [:v201708, :BatchJobService] => 'cm/',
      [:v201708, :BiddingStrategyService] => 'cm/',
      [:v201708, :BudgetOrderService] => 'billing/',
      [:v201708, :BudgetService] => 'cm/',
      [:v201708, :CampaignBidModifierService] => 'cm/',
      [:v201708, :CampaignCriterionService] => 'cm/',
      [:v201708, :CampaignExtensionSettingService] => 'cm/',
      [:v201708, :CampaignFeedService] => 'cm/',
      [:v201708, :CampaignGroupService] => 'cm/',
      [:v201708, :CampaignGroupPerformanceTargetService] => 'cm/',
      [:v201708, :CampaignService] => 'cm/',
      [:v201708, :CampaignSharedSetService] => 'cm/',
      [:v201708, :ConstantDataService] => 'cm/',
      [:v201708, :ConversionTrackerService] => 'cm/',
      [:v201708, :CustomerExtensionSettingService] => 'cm/',
      [:v201708, :CustomerFeedService] => 'cm/',
      [:v201708, :CustomerService] => 'mcm/',
      [:v201708, :CustomerSyncService] => 'ch/',
      [:v201708, :DraftAsyncErrorService] => 'cm/',
      [:v201708, :DataService] => 'cm/',
      [:v201708, :DraftService] => 'cm/',
      [:v201708, :FeedItemService] => 'cm/',
      [:v201708, :FeedMappingService] => 'cm/',
      [:v201708, :FeedService] => 'cm/',
      [:v201708, :LabelService] => 'cm/',
      [:v201708, :LocationCriterionService] => 'cm/',
      [:v201708, :ManagedCustomerService] => 'mcm/',
      [:v201708, :MediaService] => 'cm/',
      [:v201708, :OfflineCallConversionFeedService] => 'cm/',
      [:v201708, :OfflineConversionFeedService] => 'cm/',
      [:v201708, :OfflineDataUploadService] => 'rm/',
      [:v201708, :ReportDefinitionService] => 'cm/',
      [:v201708, :SharedCriterionService] => 'cm/',
      [:v201708, :SharedSetService] => 'cm/',
      [:v201708, :TargetingIdeaService] => 'o/',
      [:v201708, :TrafficEstimatorService] => 'o/',
      [:v201708, :TrialAsyncErrorService] => 'cm/',
      [:v201708, :TrialService] => 'cm/',
      # v201710
      [:v201710, :AccountLabelService] => 'mcm/',
      [:v201710, :AdCustomizerFeedService] => 'cm/',
      [:v201710, :AdGroupAdService] => 'cm/',
      [:v201710, :AdGroupBidModifierService] => 'cm/',
      [:v201710, :AdGroupCriterionService] => 'cm/',
      [:v201710, :AdGroupExtensionSettingService] => 'cm/',
      [:v201710, :AdGroupFeedService] => 'cm/',
      [:v201710, :AdGroupService] => 'cm/',
      [:v201710, :AdParamService] => 'cm/',
      [:v201710, :AdwordsUserListService] => 'rm/',
      [:v201710, :BatchJobService] => 'cm/',
      [:v201710, :BiddingStrategyService] => 'cm/',
      [:v201710, :BudgetOrderService] => 'billing/',
      [:v201710, :BudgetService] => 'cm/',
      [:v201710, :CampaignBidModifierService] => 'cm/',
      [:v201710, :CampaignCriterionService] => 'cm/',
      [:v201710, :CampaignExtensionSettingService] => 'cm/',
      [:v201710, :CampaignFeedService] => 'cm/',
      [:v201710, :CampaignGroupService] => 'cm/',
      [:v201710, :CampaignGroupPerformanceTargetService] => 'cm/',
      [:v201710, :CampaignService] => 'cm/',
      [:v201710, :CampaignSharedSetService] => 'cm/',
      [:v201710, :ConstantDataService] => 'cm/',
      [:v201710, :ConversionTrackerService] => 'cm/',
      [:v201710, :CustomerExtensionSettingService] => 'cm/',
      [:v201710, :CustomerFeedService] => 'cm/',
      [:v201710, :CustomerNegativeCriterionService] => 'cm/',
      [:v201710, :CustomerService] => 'mcm/',
      [:v201710, :CustomerSyncService] => 'ch/',
      [:v201710, :DraftAsyncErrorService] => 'cm/',
      [:v201710, :DataService] => 'cm/',
      [:v201710, :DraftService] => 'cm/',
      [:v201710, :FeedItemService] => 'cm/',
      [:v201710, :FeedMappingService] => 'cm/',
      [:v201710, :FeedService] => 'cm/',
      [:v201710, :LabelService] => 'cm/',
      [:v201710, :LocationCriterionService] => 'cm/',
      [:v201710, :ManagedCustomerService] => 'mcm/',
      [:v201710, :MediaService] => 'cm/',
      [:v201710, :OfflineCallConversionFeedService] => 'cm/',
      [:v201710, :OfflineConversionFeedService] => 'cm/',
      [:v201710, :OfflineDataUploadService] => 'rm/',
      [:v201710, :ReportDefinitionService] => 'cm/',
      [:v201710, :SharedCriterionService] => 'cm/',
      [:v201710, :SharedSetService] => 'cm/',
      [:v201710, :TargetingIdeaService] => 'o/',
      [:v201710, :TrafficEstimatorService] => 'o/',
      [:v201710, :TrialAsyncErrorService] => 'cm/',
      [:v201710, :TrialService] => 'cm/'
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
