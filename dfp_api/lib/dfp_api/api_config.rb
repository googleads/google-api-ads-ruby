#!/usr/bin/ruby
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Helper methods for loading and managing the available services in the DFP
# API.

require 'savon'

require 'ads_common/api_config'

module DfpApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v201111
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201111

    # Set other constants
    API_NAME = 'DfpApi'
    CLIENT_LIB_VERSION = '0.2.6'
    DEFAULT_CONFIG_FILENAME = 'dfp_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201103 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService],
      :v201104 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService],
      :v201107 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService,
                   :LabelService],
      :v201108 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService,
                   :LabelService, :ThirdPartySlotService],
      :v201111 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService,
                   :LabelService, :ThirdPartySlotService, :ContentService,
                   :SuggestedAdUnitService, :CreativeTemplateService]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://www.google.com/apis/ads/publisher/',
        :v201103 => 'https://www.google.com/apis/ads/publisher/',
        :v201104 => 'https://www.google.com/apis/ads/publisher/',
        :v201107 => 'https://www.google.com/apis/ads/publisher/',
        :v201108 => 'https://www.google.com/apis/ads/publisher/',
        :v201111 => 'https://www.google.com/apis/ads/publisher/'
      },
      :SANDBOX => {
        :oauth_scope => 'https://sandbox.google.com/apis/ads/publisher/',
        :v201103 => 'https://sandbox.google.com/apis/ads/publisher/',
        :v201104 => 'https://sandbox.google.com/apis/ads/publisher/',
        :v201107 => 'https://sandbox.google.com/apis/ads/publisher/',
        :v201108 => 'https://sandbox.google.com/apis/ads/publisher/',
        :v201111 => 'https://sandbox.google.com/apis/ads/publisher/'
      }
    }

    # Configure the auth servers to use for each environment
    @@auth_server_config = {
      :PRODUCTION => 'https://www.google.com',
      :SANDBOX => 'https://www.google.com'
    }

    @@headers_config = {
      :REQUEST_HEADER => 'RequestHeader',
      :HEADER_NAMESPACE_PREAMBLE =>
          'https://www.google.com/apis/ads/publisher/',
      :LOGIN_SERVICE_NAME => 'gam'
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

    def self.environment_config
      @@environment_config
    end

    def self.subdir_config
      nil
    end

    def self.auth_server_config
      @@auth_server_config
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end

    def self.headers_config
      @@headers_config
    end
  end
end
