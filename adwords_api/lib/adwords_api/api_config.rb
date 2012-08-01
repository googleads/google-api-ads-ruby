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
    DEFAULT_VERSION = :v201206
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201206

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201109 => [
          :AdExtensionOverrideService,
          :AdGroupAdService,
          :AdGroupCriterionService,
          :AdGroupService,
          :AdParamService,
          :AlertService,
          :BudgetOrderService,
          :BulkMutateJobService,
          :CampaignAdExtensionService,
          :CampaignCriterionService,
          :CampaignService,
          :CampaignTargetService,
          :ConstantDataService,
          :ConversionTrackerService,
          :CreateAccountService,
          :CustomerSyncService,
          :DataService,
          :ExperimentService,
          :GeoLocationService,
          :InfoService,
          :LocationCriterionService,
          :MediaService,
          :MutateJobService,
          :ReportDefinitionService,
          :ServicedAccountService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :UserListService
      ],
      :v201109_1 => [
          :AdExtensionOverrideService,
          :AdGroupAdService,
          :AdGroupCriterionService,
          :AdGroupService,
          :AdParamService,
          :AlertService,
          :BudgetOrderService,
          :BulkMutateJobService,
          :CampaignAdExtensionService,
          :CampaignCriterionService,
          :CampaignService,
          :CampaignTargetService,
          :ConstantDataService,
          :ConversionTrackerService,
          :CreateAccountService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :ExperimentService,
          :GeoLocationService,
          :InfoService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :MutateJobService,
          :ReportDefinitionService,
          :ServicedAccountService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :UserListService
      ],
      :v201206 => [
          :AdExtensionOverrideService,
          :AdGroupAdService,
          :AdGroupCriterionService,
          :AdGroupService,
          :AdParamService,
          :AlertService,
          :BudgetOrderService,
          :BulkMutateJobService,
          :CampaignAdExtensionService,
          :CampaignCriterionService,
          :CampaignService,
          :ConstantDataService,
          :ConversionTrackerService,
          :CustomerService,
          :CustomerSyncService,
          :DataService,
          :ExperimentService,
          :GeoLocationService,
          :InfoService,
          :LocationCriterionService,
          :ManagedCustomerService,
          :MediaService,
          :MutateJobService,
          :ReportDefinitionService,
          :TargetingIdeaService,
          :TrafficEstimatorService,
          :UserListService
      ]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://adwords.google.com/api/adwords/',
        :v201109 => 'https://adwords.google.com/api/adwords/',
        :v201109_1 => 'https://adwords.google.com/api/adwords/',
        :v201206 => 'https://adwords.google.com/api/adwords/'
      },
      :SANDBOX => {
        :oauth_scope => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201109 => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201109_1 => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201206 => 'https://adwords-sandbox.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v201109
      [:v201109, :AdExtensionOverrideService] => 'cm/',
      [:v201109, :AdGroupAdService] => 'cm/',
      [:v201109, :AdGroupCriterionService] => 'cm/',
      [:v201109, :AdGroupService] => 'cm/',
      [:v201109, :AdParamService] => 'cm/',
      [:v201109, :AlertService] => 'mcm/',
      [:v201109, :BudgetOrderService] => 'billing/',
      [:v201109, :BulkMutateJobService] => 'job/',
      [:v201109, :CampaignAdExtensionService] => 'cm/',
      [:v201109, :CampaignCriterionService] => 'cm/',
      [:v201109, :CampaignService] => 'cm/',
      [:v201109, :CampaignTargetService] => 'cm/',
      [:v201109, :ConstantDataService] => 'cm/',
      [:v201109, :ConversionTrackerService] => 'cm/',
      [:v201109, :CreateAccountService] => 'mcm/',
      [:v201109, :CustomerSyncService] => 'ch/',
      [:v201109, :DataService] => 'cm/',
      [:v201109, :ExperimentService] => 'cm/',
      [:v201109, :GeoLocationService] => 'cm/',
      [:v201109, :InfoService] => 'info/',
      [:v201109, :LocationCriterionService] => 'cm/',
      [:v201109, :MediaService] => 'cm/',
      [:v201109, :MutateJobService] => 'cm/',
      [:v201109, :ReportDefinitionService] => 'cm/',
      [:v201109, :ServicedAccountService] => 'mcm/',
      [:v201109, :TargetingIdeaService] => 'o/',
      [:v201109, :TrafficEstimatorService] => 'o/',
      [:v201109, :UserListService] => 'cm/',
      # v201109_1
      [:v201109_1, :AdExtensionOverrideService] => 'cm/',
      [:v201109_1, :AdGroupAdService] => 'cm/',
      [:v201109_1, :AdGroupCriterionService] => 'cm/',
      [:v201109_1, :AdGroupService] => 'cm/',
      [:v201109_1, :AdParamService] => 'cm/',
      [:v201109_1, :AlertService] => 'mcm/',
      [:v201109_1, :BudgetOrderService] => 'billing/',
      [:v201109_1, :BulkMutateJobService] => 'job/',
      [:v201109_1, :CampaignAdExtensionService] => 'cm/',
      [:v201109_1, :CampaignCriterionService] => 'cm/',
      [:v201109_1, :CampaignService] => 'cm/',
      [:v201109_1, :CampaignTargetService] => 'cm/',
      [:v201109_1, :ConstantDataService] => 'cm/',
      [:v201109_1, :ConversionTrackerService] => 'cm/',
      [:v201109_1, :CreateAccountService] => 'mcm/',
      [:v201109_1, :CustomerSyncService] => 'ch/',
      [:v201109_1, :DataService] => 'cm/',
      [:v201109_1, :ExperimentService] => 'cm/',
      [:v201109_1, :GeoLocationService] => 'cm/',
      [:v201109_1, :InfoService] => 'info/',
      [:v201109_1, :LocationCriterionService] => 'cm/',
      [:v201109_1, :MediaService] => 'cm/',
      [:v201109_1, :MutateJobService] => 'cm/',
      [:v201109_1, :ReportDefinitionService] => 'cm/',
      [:v201109_1, :ServicedAccountService] => 'mcm/',
      [:v201109_1, :TargetingIdeaService] => 'o/',
      [:v201109_1, :TrafficEstimatorService] => 'o/',
      [:v201109_1, :UserListService] => 'cm/',
      [:v201109_1, :ManagedCustomerService] => 'mcm/',
      [:v201109_1, :CustomerService] => 'mcm/',
      # v201206
      [:v201206, :AdExtensionOverrideService] => 'cm/',
      [:v201206, :AdGroupAdService] => 'cm/',
      [:v201206, :AdGroupCriterionService] => 'cm/',
      [:v201206, :AdGroupService] => 'cm/',
      [:v201206, :AdParamService] => 'cm/',
      [:v201206, :AlertService] => 'mcm/',
      [:v201206, :BudgetOrderService] => 'billing/',
      [:v201206, :BulkMutateJobService] => 'job/',
      [:v201206, :CampaignAdExtensionService] => 'cm/',
      [:v201206, :CampaignCriterionService] => 'cm/',
      [:v201206, :CampaignService] => 'cm/',
      [:v201206, :ConstantDataService] => 'cm/',
      [:v201206, :ConversionTrackerService] => 'cm/',
      [:v201206, :CustomerSyncService] => 'ch/',
      [:v201206, :DataService] => 'cm/',
      [:v201206, :ExperimentService] => 'cm/',
      [:v201206, :GeoLocationService] => 'cm/',
      [:v201206, :InfoService] => 'info/',
      [:v201206, :LocationCriterionService] => 'cm/',
      [:v201206, :MediaService] => 'cm/',
      [:v201206, :MutateJobService] => 'cm/',
      [:v201206, :ReportDefinitionService] => 'cm/',
      [:v201206, :TargetingIdeaService] => 'o/',
      [:v201206, :TrafficEstimatorService] => 'o/',
      [:v201206, :UserListService] => 'cm/',
      [:v201206, :ManagedCustomerService] => 'mcm/',
      [:v201206, :CustomerService] => 'mcm/'
    }

    # Auth constants for ClientLogin method.
    @@client_login_config = {
      :AUTH_SERVER => 'https://www.google.com',
      :AUTH_NAMESPACE_PREAMBLE =>
          'https://adwords.google.com/api/adwords/cm/',
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
