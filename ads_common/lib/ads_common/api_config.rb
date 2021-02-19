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
# Helper methods for loading and managing services for an API. Defines methods
# to be included as class modules in a service class for a specific API.

require 'ads_common/version.rb'

module AdsCommon
  # Contains helper methods for loading and managing the available services.
  # This module is meant to be imported into API-specific modules.
  module ApiConfig
    # Get the available API versions.
    #
    # Returns:
    # List of versions available
    #
    def versions
      service_config.keys
    end

    # Get the latest API version.
    #
    # Returns:
    # Latest version
    #
    def latest_version
      service_config.keys.select { |service| service.is_a? Integer }.max
    end

    # Does the current config contain the given version?
    #
    # Returns:
    # Boolean indicating whether the current config contains the given version
    #
    def has_version(version)
      return !config(version).nil?
    end

    # Does the given version exist and contain the given service?
    #
    # Returns:
    # Boolean indicating whether the given version exists and contains the
    # given service
    #
    def version_has_service(version, service)
      return service_config.include?(version) &&
          service_config[version].include?(service)
    end

    # Get the default API version.
    #
    # Returns:
    # Default version
    #
    def default_version
      nil
    end

    # Get the list of service names for a given version
    #
    # Args:
    # - version: the API version (as an integer)
    #
    # Returns:
    # List of names of services available for given version
    #
    def services(version)
      service_config[version]
    end

    # Get the API name.
    def api_name
      raise NotImplementedError, 'api_name not overriden.'
    end

    # Get the API path.
    def api_path
      return api_name.to_s.snakecase
    end

    # Get the default filename for the config file.
    def default_config_filename
      raise NotImplementedError, 'default_config_filename not overriden.'
    end

    # Get the endpoint for a service on a given API version.
    #
    # Args:
    # - version: the API version
    # - service: the name of the API service
    #
    # Returns:
    # The endpoint URL
    #
    def endpoint(version, service)
      base = get_wsdl_base(version)
      if !subdir_config().nil?
        base = base.to_s + subdir_config()[[version, service]].to_s
      end
      return base.to_s + version.to_s + '/' + service.to_s
    end

    # Get the subdirectory for a service, for a given API version.
    #
    # Args:
    # - version: the API version
    # - service: the name of the API service
    #
    # Returns:
    # The subdir infix
    #
    def subdir(version, service)
      return nil if subdir_config().nil?
      subdir_config()[[version, service]]
    end

    # Perform the loading of the necessary source files for a version.
    #
    # Args:
    # - version: the API version
    # - service: service name
    #
    # Returns:
    # The filename that was loaded
    #
    def do_require(version, service)
      filename = [api_path, version.to_s, service.to_s.snakecase].join('/')
      require filename
      return filename
    end

    # Returns the full module name for a given service.
    #
    # Args:
    # - version: the API version
    # - service: the service name
    #
    # Returns:
    # The full module name for the given service
    #
    def module_name(version, service)
      return [api_name, version.to_s.upcase, service.to_s].join('::')
    end

    # Returns the full interface class name for a given service.
    #
    # Args:
    # - version: the API version
    # - service: the service name
    #
    # Returns:
    # The full interface class name for the given service
    #
    def interface_name(version, service)
      return [module_name(version, service), service.to_s].join('::')
    end

    # Generates an array of WSDL URLs based on defined Services and version
    # supplied. This method is used by generators to determine what service
    # wrappers to generate.
    #
    # Args:
    #   - version: the API version.
    #
    # Returns
    #   hash of pairs Service => WSDL URL
    #
    def get_wsdls(version)
      res = {}
      wsdl_base = get_wsdl_base(version)
      postfix = wsdl_base.start_with?('http') ? '?wsdl' : '.wsdl'
      services(version).each do |service|
        path = wsdl_base
        if (!subdir_config().nil?)
          subdir_name = subdir(version, service);
          path = path + subdir_name if subdir_name and !subdir_name.empty?
        end
        path = path + version.to_s + '/' + service.to_s + postfix
        res[service.to_s] = path
      end
      return res
    end

    # Returns WSDL base url defined in Service configuration. Allows to override
    # the base URL via environmental variable.
    #
    # Args:
    #   - version: the API version
    #
    # Returns:
    #   String containing base URL
    #
    def get_wsdl_base(version)
      return ENV['ADSAPI_BASE_URL'] || config(version)
    end
  end
end
