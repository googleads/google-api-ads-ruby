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
    DEFAULT_VERSION = :v201509
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201509

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201502 => [
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
          :GeoLocationService,
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
      :v201506 => [
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
          :GeoLocationService,
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
      ]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://www.googleapis.com/auth/adwords',
        :header_ns => 'https://adwords.google.com/api/adwords/cm/',
        :v201502 => 'https://adwords.google.com/api/adwords/',
        :v201506 => 'https://adwords.google.com/api/adwords/',
        :v201509 => 'https://adwords.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v201502
      [:v201502, :AccountLabelService] => 'mcm/',
      [:v201502, :AdCustomizerFeedService] => 'cm/',
      [:v201502, :AdGroupAdService] => 'cm/',
      [:v201502, :AdGroupBidModifierService] => 'cm/',
      [:v201502, :AdGroupCriterionService] => 'cm/',
      [:v201502, :AdGroupExtensionSettingService] => 'cm/',
      [:v201502, :AdGroupFeedService] => 'cm/',
      [:v201502, :AdGroupService] => 'cm/',
      [:v201502, :AdParamService] => 'cm/',
      [:v201502, :BudgetOrderService] => 'billing/',
      [:v201502, :CampaignCriterionService] => 'cm/',
      [:v201502, :CampaignExtensionSettingService] => 'cm/',
      [:v201502, :CampaignFeedService] => 'cm/',
      [:v201502, :CampaignService] => 'cm/',
      [:v201502, :CampaignSharedSetService] => 'cm/',
      [:v201502, :ConstantDataService] => 'cm/',
      [:v201502, :ConversionTrackerService] => 'cm/',
      [:v201502, :CustomerExtensionSettingService] => 'cm/',
      [:v201502, :CustomerSyncService] => 'ch/',
      [:v201502, :DataService] => 'cm/',
      [:v201502, :ExperimentService] => 'cm/',
      [:v201502, :FeedItemService] => 'cm/',
      [:v201502, :FeedMappingService] => 'cm/',
      [:v201502, :FeedService] => 'cm/',
      [:v201502, :GeoLocationService] => 'cm/',
      [:v201502, :LocationCriterionService] => 'cm/',
      [:v201502, :MediaService] => 'cm/',
      [:v201502, :MutateJobService] => 'cm/',
      [:v201502, :OfflineConversionFeedService] => 'cm/',
      [:v201502, :ReportDefinitionService] => 'cm/',
      [:v201502, :SharedCriterionService] => 'cm/',
      [:v201502, :SharedSetService] => 'cm/',
      [:v201502, :TargetingIdeaService] => 'o/',
      [:v201502, :TrafficEstimatorService] => 'o/',
      [:v201502, :ManagedCustomerService] => 'mcm/',
      [:v201502, :CustomerService] => 'mcm/',
      [:v201502, :CustomerFeedService] => 'cm/',
      [:v201502, :BudgetService] => 'cm/',
      [:v201502, :BiddingStrategyService] => 'cm/',
      [:v201502, :AdwordsUserListService] => 'rm/',
      [:v201502, :LabelService] => 'cm/',
      # v201506
      [:v201506, :AccountLabelService] => 'mcm/',
      [:v201506, :AdCustomizerFeedService] => 'cm/',
      [:v201506, :AdGroupAdService] => 'cm/',
      [:v201506, :AdGroupBidModifierService] => 'cm/',
      [:v201506, :AdGroupCriterionService] => 'cm/',
      [:v201506, :AdGroupExtensionSettingService] => 'cm/',
      [:v201506, :AdGroupFeedService] => 'cm/',
      [:v201506, :AdGroupService] => 'cm/',
      [:v201506, :AdParamService] => 'cm/',
      [:v201506, :BudgetOrderService] => 'billing/',
      [:v201506, :CampaignCriterionService] => 'cm/',
      [:v201506, :CampaignExtensionSettingService] => 'cm/',
      [:v201506, :CampaignFeedService] => 'cm/',
      [:v201506, :CampaignService] => 'cm/',
      [:v201506, :CampaignSharedSetService] => 'cm/',
      [:v201506, :ConstantDataService] => 'cm/',
      [:v201506, :ConversionTrackerService] => 'cm/',
      [:v201506, :CustomerExtensionSettingService] => 'cm/',
      [:v201506, :CustomerSyncService] => 'ch/',
      [:v201506, :DataService] => 'cm/',
      [:v201506, :ExperimentService] => 'cm/',
      [:v201506, :FeedItemService] => 'cm/',
      [:v201506, :FeedMappingService] => 'cm/',
      [:v201506, :FeedService] => 'cm/',
      [:v201506, :GeoLocationService] => 'cm/',
      [:v201506, :LocationCriterionService] => 'cm/',
      [:v201506, :MediaService] => 'cm/',
      [:v201506, :MutateJobService] => 'cm/',
      [:v201506, :OfflineConversionFeedService] => 'cm/',
      [:v201506, :ReportDefinitionService] => 'cm/',
      [:v201506, :SharedCriterionService] => 'cm/',
      [:v201506, :SharedSetService] => 'cm/',
      [:v201506, :TargetingIdeaService] => 'o/',
      [:v201506, :TrafficEstimatorService] => 'o/',
      [:v201506, :ManagedCustomerService] => 'mcm/',
      [:v201506, :CustomerService] => 'mcm/',
      [:v201506, :CustomerFeedService] => 'cm/',
      [:v201506, :BudgetService] => 'cm/',
      [:v201506, :BiddingStrategyService] => 'cm/',
      [:v201506, :AdwordsUserListService] => 'rm/',
      [:v201506, :LabelService] => 'cm/',
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
      [:v201509, :LabelService] => 'cm/'
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

