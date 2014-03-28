# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
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
    DEFAULT_VERSION = :v201402
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201402

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201309 => [
          :AdGroupAdService,
          :AdGroupBidModifierService,
          :AdGroupCriterionService,
          :AdGroupFeedService,
          :AdGroupService,
          :AdParamService,
          :AdwordsUserListService,
          :AlertService,
          :BiddingStrategyService,
          :BudgetOrderService,
          :BudgetService,
          :CampaignAdExtensionService,
          :CampaignCriterionService,
          :CampaignFeedService,
          :CampaignService,
          :CampaignSharedSetService,
          :ConstantDataService,
          :ConversionTrackerService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :ExperimentService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :GeoLocationService,
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
      :v201402 => [
          :AdGroupAdService,
          :AdGroupBidModifierService,
          :AdGroupCriterionService,
          :AdGroupFeedService,
          :AdGroupService,
          :AdParamService,
          :AdwordsUserListService,
          :AlertService,
          :BiddingStrategyService,
          :BudgetOrderService,
          :BudgetService,
          :CampaignAdExtensionService,
          :CampaignCriterionService,
          :CampaignFeedService,
          :CampaignService,
          :ConstantDataService,
          :ConversionTrackerService,
          :CustomerFeedService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :ExperimentService,
          :FeedItemService,
          :FeedMappingService,
          :FeedService,
          :GeoLocationService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :MutateJobService,
          :OfflineConversionFeedService,
          :ReportDefinitionService,
          :TargetingIdeaService,
          :TrafficEstimatorService
      ]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://adwords.google.com/api/adwords/',
        :header_ns => 'https://adwords.google.com/api/adwords/cm/',
        :v201309 => 'https://adwords.google.com/api/adwords/',
        :v201402 => 'https://adwords.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v201309
      [:v201309, :AdGroupAdService] => 'cm/',
      [:v201309, :AdGroupBidModifierService] => 'cm/',
      [:v201309, :AdGroupCriterionService] => 'cm/',
      [:v201309, :AdGroupFeedService] => 'cm/',
      [:v201309, :AdGroupService] => 'cm/',
      [:v201309, :AdParamService] => 'cm/',
      [:v201309, :AlertService] => 'mcm/',
      [:v201309, :BudgetOrderService] => 'billing/',
      [:v201309, :CampaignAdExtensionService] => 'cm/',
      [:v201309, :CampaignCriterionService] => 'cm/',
      [:v201309, :CampaignFeedService] => 'cm/',
      [:v201309, :CampaignService] => 'cm/',
      [:v201309, :CampaignSharedSetService] => 'cm/',
      [:v201309, :ConstantDataService] => 'cm/',
      [:v201309, :ConversionTrackerService] => 'cm/',
      [:v201309, :CustomerSyncService] => 'ch/',
      [:v201309, :DataService] => 'cm/',
      [:v201309, :ExperimentService] => 'cm/',
      [:v201309, :FeedItemService] => 'cm/',
      [:v201309, :FeedMappingService] => 'cm/',
      [:v201309, :FeedService] => 'cm/',
      [:v201309, :GeoLocationService] => 'cm/',
      [:v201309, :LocationCriterionService] => 'cm/',
      [:v201309, :MediaService] => 'cm/',
      [:v201309, :MutateJobService] => 'cm/',
      [:v201309, :OfflineConversionFeedService] => 'cm/',
      [:v201309, :ReportDefinitionService] => 'cm/',
      [:v201309, :SharedCriterionService] => 'cm/',
      [:v201309, :SharedSetService] => 'cm/',
      [:v201309, :TargetingIdeaService] => 'o/',
      [:v201309, :TrafficEstimatorService] => 'o/',
      [:v201309, :ManagedCustomerService] => 'mcm/',
      [:v201309, :CustomerService] => 'mcm/',
      [:v201309, :BudgetService] => 'cm/',
      [:v201309, :BiddingStrategyService] => 'cm/',
      [:v201309, :AdwordsUserListService] => 'rm/',
      # v201402
      [:v201402, :AdGroupAdService] => 'cm/',
      [:v201402, :AdGroupBidModifierService] => 'cm/',
      [:v201402, :AdGroupCriterionService] => 'cm/',
      [:v201402, :AdGroupFeedService] => 'cm/',
      [:v201402, :AdGroupService] => 'cm/',
      [:v201402, :AdParamService] => 'cm/',
      [:v201402, :AlertService] => 'mcm/',
      [:v201402, :BudgetOrderService] => 'billing/',
      [:v201402, :CampaignAdExtensionService] => 'cm/',
      [:v201402, :CampaignCriterionService] => 'cm/',
      [:v201402, :CampaignFeedService] => 'cm/',
      [:v201402, :CampaignService] => 'cm/',
      [:v201402, :ConstantDataService] => 'cm/',
      [:v201402, :ConversionTrackerService] => 'cm/',
      [:v201402, :CustomerSyncService] => 'ch/',
      [:v201402, :DataService] => 'cm/',
      [:v201402, :ExperimentService] => 'cm/',
      [:v201402, :FeedItemService] => 'cm/',
      [:v201402, :FeedMappingService] => 'cm/',
      [:v201402, :FeedService] => 'cm/',
      [:v201402, :GeoLocationService] => 'cm/',
      [:v201402, :LocationCriterionService] => 'cm/',
      [:v201402, :MediaService] => 'cm/',
      [:v201402, :MutateJobService] => 'cm/',
      [:v201402, :OfflineConversionFeedService] => 'cm/',
      [:v201402, :ReportDefinitionService] => 'cm/',
      [:v201402, :TargetingIdeaService] => 'o/',
      [:v201402, :TrafficEstimatorService] => 'o/',
      [:v201402, :ManagedCustomerService] => 'mcm/',
      [:v201402, :CustomerService] => 'mcm/',
      [:v201402, :CustomerFeedService] => 'cm/',
      [:v201402, :BudgetService] => 'cm/',
      [:v201402, :BiddingStrategyService] => 'cm/',
      [:v201402, :AdwordsUserListService] => 'rm/'
    }

    # Auth constants for ClientLogin method.
    @@client_login_config = {
      :AUTH_SERVER => 'https://www.google.com',
      :LOGIN_SERVICE_NAME => 'adwords'
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

    def self.client_login_config(key)
      return @@client_login_config[key]
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
