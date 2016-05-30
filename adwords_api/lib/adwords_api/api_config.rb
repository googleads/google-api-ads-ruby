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
    DEFAULT_VERSION = :v201605
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201605

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201509 => [
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
          :ExperimentService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :MutateJobService,
          :OfflineConversionFeedService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService
      ],
      :v201601 => [
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
          :ExperimentService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :LabelService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :MutateJobService,
          :OfflineConversionFeedService,
          :ReportDefinitionService,
          :SharedCriterionService,
          :SharedSetService,
          :TargetingIdeaService,
          :TrafficEstimatorService
      ],
      :v201603 => [
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
      :v201605 => [
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
      ]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://www.googleapis.com/auth/adwords',
        :header_ns => 'https://adwords.google.com/api/adwords/cm/',
        :v201509 => 'https://adwords.google.com/api/adwords/',
        :v201601 => 'https://adwords.google.com/api/adwords/',
        :v201603 => 'https://adwords.google.com/api/adwords/',
        :v201605 => 'https://adwords.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v201509
      [:v201509, :AccountLabelService] => 'mcm/',
      [:v201509, :AdCustomizerFeedService] => 'cm/',
      [:v201509, :AdGroupAdService] => 'cm/',
      [:v201509, :AdGroupBidModifierService] => 'cm/',
      [:v201509, :AdGroupCriterionService] => 'cm/',
      [:v201509, :AdGroupExtensionSettingService] => 'cm/',
      [:v201509, :AdGroupFeedService] => 'cm/',
      [:v201509, :AdGroupService] => 'cm/',
      [:v201509, :AdParamService] => 'cm/',
      [:v201509, :BatchJobService] => 'cm/',
      [:v201509, :BudgetOrderService] => 'billing/',
      [:v201509, :CampaignCriterionService] => 'cm/',
      [:v201509, :CampaignExtensionSettingService] => 'cm/',
      [:v201509, :CampaignFeedService] => 'cm/',
      [:v201509, :CampaignService] => 'cm/',
      [:v201509, :CampaignSharedSetService] => 'cm/',
      [:v201509, :ConstantDataService] => 'cm/',
      [:v201509, :ConversionTrackerService] => 'cm/',
      [:v201509, :CustomerExtensionSettingService] => 'cm/',
      [:v201509, :CustomerSyncService] => 'ch/',
      [:v201509, :DataService] => 'cm/',
      [:v201509, :ExperimentService] => 'cm/',
      [:v201509, :FeedItemService] => 'cm/',
      [:v201509, :FeedMappingService] => 'cm/',
      [:v201509, :FeedService] => 'cm/',
      [:v201509, :LocationCriterionService] => 'cm/',
      [:v201509, :MediaService] => 'cm/',
      [:v201509, :MutateJobService] => 'cm/',
      [:v201509, :OfflineConversionFeedService] => 'cm/',
      [:v201509, :ReportDefinitionService] => 'cm/',
      [:v201509, :SharedCriterionService] => 'cm/',
      [:v201509, :SharedSetService] => 'cm/',
      [:v201509, :TargetingIdeaService] => 'o/',
      [:v201509, :TrafficEstimatorService] => 'o/',
      [:v201509, :ManagedCustomerService] => 'mcm/',
      [:v201509, :CustomerService] => 'mcm/',
      [:v201509, :CustomerFeedService] => 'cm/',
      [:v201509, :BudgetService] => 'cm/',
      [:v201509, :BiddingStrategyService] => 'cm/',
      [:v201509, :AdwordsUserListService] => 'rm/',
      [:v201509, :LabelService] => 'cm/',
      # v201601
      [:v201601, :AccountLabelService] => 'mcm/',
      [:v201601, :AdCustomizerFeedService] => 'cm/',
      [:v201601, :AdGroupAdService] => 'cm/',
      [:v201601, :AdGroupBidModifierService] => 'cm/',
      [:v201601, :AdGroupCriterionService] => 'cm/',
      [:v201601, :AdGroupExtensionSettingService] => 'cm/',
      [:v201601, :AdGroupFeedService] => 'cm/',
      [:v201601, :AdGroupService] => 'cm/',
      [:v201601, :AdParamService] => 'cm/',
      [:v201601, :BatchJobService] => 'cm/',
      [:v201601, :BudgetOrderService] => 'billing/',
      [:v201601, :CampaignCriterionService] => 'cm/',
      [:v201601, :CampaignExtensionSettingService] => 'cm/',
      [:v201601, :CampaignFeedService] => 'cm/',
      [:v201601, :CampaignService] => 'cm/',
      [:v201601, :CampaignSharedSetService] => 'cm/',
      [:v201601, :ConstantDataService] => 'cm/',
      [:v201601, :ConversionTrackerService] => 'cm/',
      [:v201601, :CustomerExtensionSettingService] => 'cm/',
      [:v201601, :CustomerSyncService] => 'ch/',
      [:v201601, :DataService] => 'cm/',
      [:v201601, :ExperimentService] => 'cm/',
      [:v201601, :FeedItemService] => 'cm/',
      [:v201601, :FeedMappingService] => 'cm/',
      [:v201601, :FeedService] => 'cm/',
      [:v201601, :LocationCriterionService] => 'cm/',
      [:v201601, :MediaService] => 'cm/',
      [:v201601, :MutateJobService] => 'cm/',
      [:v201601, :OfflineConversionFeedService] => 'cm/',
      [:v201601, :ReportDefinitionService] => 'cm/',
      [:v201601, :SharedCriterionService] => 'cm/',
      [:v201601, :SharedSetService] => 'cm/',
      [:v201601, :TargetingIdeaService] => 'o/',
      [:v201601, :TrafficEstimatorService] => 'o/',
      [:v201601, :ManagedCustomerService] => 'mcm/',
      [:v201601, :CustomerService] => 'mcm/',
      [:v201601, :CustomerFeedService] => 'cm/',
      [:v201601, :BudgetService] => 'cm/',
      [:v201601, :BiddingStrategyService] => 'cm/',
      [:v201601, :AdwordsUserListService] => 'rm/',
      [:v201601, :LabelService] => 'cm/',
      # v201603
      [:v201603, :AccountLabelService] => 'mcm/',
      [:v201603, :AdCustomizerFeedService] => 'cm/',
      [:v201603, :AdGroupAdService] => 'cm/',
      [:v201603, :AdGroupBidModifierService] => 'cm/',
      [:v201603, :AdGroupCriterionService] => 'cm/',
      [:v201603, :AdGroupExtensionSettingService] => 'cm/',
      [:v201603, :AdGroupFeedService] => 'cm/',
      [:v201603, :AdGroupService] => 'cm/',
      [:v201603, :AdParamService] => 'cm/',
      [:v201603, :BatchJobService] => 'cm/',
      [:v201603, :BudgetOrderService] => 'billing/',
      [:v201603, :CampaignCriterionService] => 'cm/',
      [:v201603, :CampaignExtensionSettingService] => 'cm/',
      [:v201603, :CampaignFeedService] => 'cm/',
      [:v201603, :CampaignService] => 'cm/',
      [:v201603, :CampaignSharedSetService] => 'cm/',
      [:v201603, :ConstantDataService] => 'cm/',
      [:v201603, :ConversionTrackerService] => 'cm/',
      [:v201603, :CustomerExtensionSettingService] => 'cm/',
      [:v201603, :CustomerSyncService] => 'ch/',
      [:v201603, :DataService] => 'cm/',
      [:v201603, :ExperimentService] => 'cm/',
      [:v201603, :FeedItemService] => 'cm/',
      [:v201603, :FeedMappingService] => 'cm/',
      [:v201603, :FeedService] => 'cm/',
      [:v201603, :LocationCriterionService] => 'cm/',
      [:v201603, :MediaService] => 'cm/',
      [:v201603, :OfflineConversionFeedService] => 'cm/',
      [:v201603, :ReportDefinitionService] => 'cm/',
      [:v201603, :SharedCriterionService] => 'cm/',
      [:v201603, :SharedSetService] => 'cm/',
      [:v201603, :TargetingIdeaService] => 'o/',
      [:v201603, :TrafficEstimatorService] => 'o/',
      [:v201603, :ManagedCustomerService] => 'mcm/',
      [:v201603, :CustomerService] => 'mcm/',
      [:v201603, :CustomerFeedService] => 'cm/',
      [:v201603, :BudgetService] => 'cm/',
      [:v201603, :BiddingStrategyService] => 'cm/',
      [:v201603, :AdwordsUserListService] => 'rm/',
      [:v201603, :LabelService] => 'cm/',
      [:v201603, :DraftService] => 'cm/',
      [:v201603, :DraftAsyncErrorService] => 'cm/',
      [:v201603, :TrialService] => 'cm/',
      [:v201603, :TrialAsyncErrorService] => 'cm/',
      # v201605
      [:v201605, :AccountLabelService] => 'mcm/',
      [:v201605, :AdCustomizerFeedService] => 'cm/',
      [:v201605, :AdGroupAdService] => 'cm/',
      [:v201605, :AdGroupBidModifierService] => 'cm/',
      [:v201605, :AdGroupCriterionService] => 'cm/',
      [:v201605, :AdGroupExtensionSettingService] => 'cm/',
      [:v201605, :AdGroupFeedService] => 'cm/',
      [:v201605, :AdGroupService] => 'cm/',
      [:v201605, :AdParamService] => 'cm/',
      [:v201605, :BatchJobService] => 'cm/',
      [:v201605, :BudgetOrderService] => 'billing/',
      [:v201605, :CampaignCriterionService] => 'cm/',
      [:v201605, :CampaignExtensionSettingService] => 'cm/',
      [:v201605, :CampaignFeedService] => 'cm/',
      [:v201605, :CampaignService] => 'cm/',
      [:v201605, :CampaignSharedSetService] => 'cm/',
      [:v201605, :ConstantDataService] => 'cm/',
      [:v201605, :ConversionTrackerService] => 'cm/',
      [:v201605, :CustomerExtensionSettingService] => 'cm/',
      [:v201605, :CustomerSyncService] => 'ch/',
      [:v201605, :DataService] => 'cm/',
      [:v201605, :ExperimentService] => 'cm/',
      [:v201605, :FeedItemService] => 'cm/',
      [:v201605, :FeedMappingService] => 'cm/',
      [:v201605, :FeedService] => 'cm/',
      [:v201605, :LocationCriterionService] => 'cm/',
      [:v201605, :MediaService] => 'cm/',
      [:v201605, :OfflineConversionFeedService] => 'cm/',
      [:v201605, :ReportDefinitionService] => 'cm/',
      [:v201605, :SharedCriterionService] => 'cm/',
      [:v201605, :SharedSetService] => 'cm/',
      [:v201605, :TargetingIdeaService] => 'o/',
      [:v201605, :TrafficEstimatorService] => 'o/',
      [:v201605, :ManagedCustomerService] => 'mcm/',
      [:v201605, :CustomerService] => 'mcm/',
      [:v201605, :CustomerFeedService] => 'cm/',
      [:v201605, :BudgetService] => 'cm/',
      [:v201605, :BiddingStrategyService] => 'cm/',
      [:v201605, :AdwordsUserListService] => 'rm/',
      [:v201605, :LabelService] => 'cm/',
      [:v201605, :DraftService] => 'cm/',
      [:v201605, :DraftAsyncErrorService] => 'cm/',
      [:v201605, :TrialService] => 'cm/',
      [:v201605, :TrialAsyncErrorService] => 'cm/'
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
