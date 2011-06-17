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

require 'ads_common/api_config'
require 'savon'

module DfpApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v201104
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201104

    # Set other constants
    API_NAME = 'DfpApi'
    API_PATH = 'dfp_api'
    CLIENT_LIB_VERSION = '0.2.1'
    DEFAULT_CONFIG_FILENAME = 'dfp_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201101 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService],
      :v201103 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService],
      :v201104 => [:CompanyService, :CreativeService, :ForecastService,
                   :InventoryService, :LineItemCreativeAssociationService,
                   :LineItemService, :NetworkService, :OrderService,
                   :PlacementService, :ReportService, :UserService,
                   :CustomTargetingService, :PublisherQueryLanguageService]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :v201101 => 'https://www.google.com/apis/ads/publisher/',
        :v201103 => 'https://www.google.com/apis/ads/publisher/',
        :v201104 => 'https://www.google.com/apis/ads/publisher/'
      },
      :SANDBOX => {
        :v201101 => 'https://sandbox.google.com/apis/ads/publisher/',
        :v201103 => 'https://sandbox.google.com/apis/ads/publisher/',
        :v201104 => 'https://sandbox.google.com/apis/ads/publisher/'
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

    def self.do_require(version, service)
      service_name = service.to_s.snakecase()
      filename = "%s/%s/%s" % [api_path, version, service_name]
      require filename
    end

    def self.interface_name(version, service)
      version = version.to_sym
      service = service.to_sym
      return module_name(version, service) + "::" + service.to_s
    end

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

    def self.api_path
      API_PATH
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
