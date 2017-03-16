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
    DEFAULT_VERSION = :v201702
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201702

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201607 => [
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
          :ExperimentService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :OfflineConversionFeedService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :TrialService,
          :TrialAsyncErrorService
      ],
      :v201609 => [
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
          :OfflineConversionFeedService,
          :OfflineCallConversionFeedService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :TrialService,
          :TrialAsyncErrorService
      ],
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
          :OfflineConversionFeedService,
          :OfflineCallConversionFeedService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :TrialService,
          :TrialAsyncErrorService
      ]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://www.googleapis.com/auth/adwords',
        :header_ns => 'https://adwords.google.com/api/adwords/cm/',
        :v201607 => 'https://adwords.google.com/api/adwords/',
        :v201609 => 'https://adwords.google.com/api/adwords/',
        :v201702 => 'https://adwords.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v201607
      [:v201607, :AccountLabelService] => 'mcm/',
      [:v201607, :AdCustomizerFeedService] => 'cm/',
      [:v201607, :AdGroupAdService] => 'cm/',
      [:v201607, :AdGroupBidModifierService] => 'cm/',
      [:v201607, :AdGroupCriterionService] => 'cm/',
      [:v201607, :AdGroupExtensionSettingService] => 'cm/',
      [:v201607, :AdGroupFeedService] => 'cm/',
      [:v201607, :AdGroupService] => 'cm/',
      [:v201607, :AdParamService] => 'cm/',
      [:v201607, :BatchJobService] => 'cm/',
      [:v201607, :BudgetOrderService] => 'billing/',
      [:v201607, :CampaignCriterionService] => 'cm/',
      [:v201607, :CampaignExtensionSettingService] => 'cm/',
      [:v201607, :CampaignFeedService] => 'cm/',
      [:v201607, :CampaignService] => 'cm/',
      [:v201607, :CampaignSharedSetService] => 'cm/',
      [:v201607, :ConstantDataService] => 'cm/',
      [:v201607, :ConversionTrackerService] => 'cm/',
      [:v201607, :CustomerExtensionSettingService] => 'cm/',
      [:v201607, :CustomerSyncService] => 'ch/',
      [:v201607, :DataService] => 'cm/',
      [:v201607, :ExperimentService] => 'cm/',
      [:v201607, :FeedItemService] => 'cm/',
      [:v201607, :FeedMappingService] => 'cm/',
      [:v201607, :FeedService] => 'cm/',
      [:v201607, :LocationCriterionService] => 'cm/',
      [:v201607, :MediaService] => 'cm/',
      [:v201607, :OfflineConversionFeedService] => 'cm/',
      [:v201607, :ReportDefinitionService] => 'cm/',
      [:v201607, :SharedCriterionService] => 'cm/',
      [:v201607, :SharedSetService] => 'cm/',
      [:v201607, :TargetingIdeaService] => 'o/',
      [:v201607, :TrafficEstimatorService] => 'o/',
      [:v201607, :ManagedCustomerService] => 'mcm/',
      [:v201607, :CustomerService] => 'mcm/',
      [:v201607, :CustomerFeedService] => 'cm/',
      [:v201607, :BudgetService] => 'cm/',
      [:v201607, :BiddingStrategyService] => 'cm/',
      [:v201607, :AdwordsUserListService] => 'rm/',
      [:v201607, :LabelService] => 'cm/',
      [:v201607, :DraftService] => 'cm/',
      [:v201607, :DraftAsyncErrorService] => 'cm/',
      [:v201607, :TrialService] => 'cm/',
      [:v201607, :TrialAsyncErrorService] => 'cm/',
      # v201609
      [:v201609, :AccountLabelService] => 'mcm/',
      [:v201609, :AdCustomizerFeedService] => 'cm/',
      [:v201609, :AdGroupAdService] => 'cm/',
      [:v201609, :AdGroupBidModifierService] => 'cm/',
      [:v201609, :AdGroupCriterionService] => 'cm/',
      [:v201609, :AdGroupExtensionSettingService] => 'cm/',
      [:v201609, :AdGroupFeedService] => 'cm/',
      [:v201609, :AdGroupService] => 'cm/',
      [:v201609, :AdParamService] => 'cm/',
      [:v201609, :BatchJobService] => 'cm/',
      [:v201609, :BudgetOrderService] => 'billing/',
      [:v201609, :CampaignCriterionService] => 'cm/',
      [:v201609, :CampaignExtensionSettingService] => 'cm/',
      [:v201609, :CampaignFeedService] => 'cm/',
      [:v201609, :CampaignService] => 'cm/',
      [:v201609, :CampaignSharedSetService] => 'cm/',
      [:v201609, :ConstantDataService] => 'cm/',
      [:v201609, :ConversionTrackerService] => 'cm/',
      [:v201609, :CustomerExtensionSettingService] => 'cm/',
      [:v201609, :CustomerSyncService] => 'ch/',
      [:v201609, :DataService] => 'cm/',
      [:v201609, :FeedItemService] => 'cm/',
      [:v201609, :FeedMappingService] => 'cm/',
      [:v201609, :FeedService] => 'cm/',
      [:v201609, :LocationCriterionService] => 'cm/',
      [:v201609, :MediaService] => 'cm/',
      [:v201609, :OfflineConversionFeedService] => 'cm/',
      [:v201609, :OfflineCallConversionFeedService] => 'cm/',
      [:v201609, :ReportDefinitionService] => 'cm/',
      [:v201609, :SharedCriterionService] => 'cm/',
      [:v201609, :SharedSetService] => 'cm/',
      [:v201609, :TargetingIdeaService] => 'o/',
      [:v201609, :TrafficEstimatorService] => 'o/',
      [:v201609, :ManagedCustomerService] => 'mcm/',
      [:v201609, :CustomerService] => 'mcm/',
      [:v201609, :CustomerFeedService] => 'cm/',
      [:v201609, :BudgetService] => 'cm/',
      [:v201609, :BiddingStrategyService] => 'cm/',
      [:v201609, :AdwordsUserListService] => 'rm/',
      [:v201609, :LabelService] => 'cm/',
      [:v201609, :DraftService] => 'cm/',
      [:v201609, :DraftAsyncErrorService] => 'cm/',
      [:v201609, :TrialService] => 'cm/',
      [:v201609, :TrialAsyncErrorService] => 'cm/',
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
      [:v201702, :OfflineConversionFeedService] => 'cm/',
      [:v201702, :OfflineCallConversionFeedService] => 'cm/',
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
      [:v201702, :TrialAsyncErrorService] => 'cm/'
    }

    public

    # Getters for constants and module variables.
    def self.default_version
      DEFAULT_VERSION
    end

    def self.default_environment
      DEFAULT_ENVIRONMENT
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

    def self.environment_config(environment, key)
      return @@environment_config.include?(environment) ?
          @@environment_config[environment][key] : nil
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
    # - environment: the service environment to be used
    # - version: the API version (as a symbol)
    #
    # Returns:
    # - The endpoint URL (as a string)
    #
    def self.adhoc_report_download_url(environment, version)
      base = get_wsdl_base(environment, version)
      if base
        base += 'reportdownload/%s' % version.to_s
      end
      return base
    end
  end
end
