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
    DEFAULT_VERSION = :v201209
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201209

    # Set other constants
    API_NAME = 'AdwordsApi'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
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
      ],
      :v201209 => [
          :AdExtensionOverrideService,
          :AdGroupAdService,
          :AdGroupCriterionService,
          :AdGroupService,
          :AdParamService,
          :AlertService,
          :BudgetOrderService,
          :BudgetService,
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
        :header_ns => 'https://adwords.google.com/api/adwords/cm/',
        :v201206 => 'https://adwords.google.com/api/adwords/',
        :v201209 => 'https://adwords.google.com/api/adwords/'
      },
      :SANDBOX => {
        :oauth_scope => 'https://adwords-sandbox.google.com/api/adwords/',
        :header_ns => 'https://adwords.google.com/api/adwords/cm/',
        :v201206 => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201209 => 'https://adwords-sandbox.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
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
      [:v201206, :CustomerService] => 'mcm/',
      # v201209
      [:v201209, :AdExtensionOverrideService] => 'cm/',
      [:v201209, :AdGroupAdService] => 'cm/',
      [:v201209, :AdGroupCriterionService] => 'cm/',
      [:v201209, :AdGroupService] => 'cm/',
      [:v201209, :AdParamService] => 'cm/',
      [:v201209, :AlertService] => 'mcm/',
      [:v201209, :BudgetOrderService] => 'billing/',
      [:v201209, :CampaignAdExtensionService] => 'cm/',
      [:v201209, :CampaignCriterionService] => 'cm/',
      [:v201209, :CampaignService] => 'cm/',
      [:v201209, :ConstantDataService] => 'cm/',
      [:v201209, :ConversionTrackerService] => 'cm/',
      [:v201209, :CustomerSyncService] => 'ch/',
      [:v201209, :DataService] => 'cm/',
      [:v201209, :ExperimentService] => 'cm/',
      [:v201209, :GeoLocationService] => 'cm/',
      [:v201209, :InfoService] => 'info/',
      [:v201209, :LocationCriterionService] => 'cm/',
      [:v201209, :MediaService] => 'cm/',
      [:v201209, :MutateJobService] => 'cm/',
      [:v201209, :ReportDefinitionService] => 'cm/',
      [:v201209, :TargetingIdeaService] => 'o/',
      [:v201209, :TrafficEstimatorService] => 'o/',
      [:v201209, :UserListService] => 'cm/',
      [:v201209, :ManagedCustomerService] => 'mcm/',
      [:v201209, :CustomerService] => 'mcm/',
      [:v201209, :BudgetService] => 'cm/'
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
