#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
#           api.dklimkin@gmail.com (Danial Klimkin)
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
# Helper methods for loading and managing services for an API. Defines methods
# to be included as class modules in a service class for a specific API.

module AdsCommon

  # Contains helper methods for loading and managing the available services.
  # This module is meant to be imported into API-specific modules.
  module ApiConfig
    ADS_COMMON_VERSION = '0.2.0'

    # Get the available API versions.
    #
    # Returns:
    # List of versions available (as integers)
    #
    def versions
      service_config.keys
    end

    # Get the latest API version.
    #
    # Returns:
    # Latest version (as an integer)
    #
    def latest_version
      service_config.keys.select { |service| service.is_a? Integer }.max
    end

    # Does the given environment exist and contain the given version?
    #
    # Returns:
    # Boolean indicating whether the given environment exists and contains the
    # given version
    #
    def environment_has_version(environment, version)
      environment = environment.upcase.to_sym
      version = version.to_sym
      !environment_config[environment].nil? and
          !environment_config[environment][version].nil?
    end

    # Does the given version exist and contain the given service?
    #
    # Returns:
    # Boolean indicating whether the given version exists and contains the
    # given service
    #
    def version_has_service(version, service)
      version = version.to_sym
      service = service.to_sym
      (!service_config[version].nil? and
          service_config[version].include?(service))
    end

    # Get the default API version.
    #
    # Returns:
    # Default version (as an integer)
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
    # List of names of services (as strings) available for given version
    #
    def services(version)
      service_config[version]
    end

    # Get the available environments.
    #
    # Returns:
    # List of available environments (as strings)
    #
    def environments
      environment_config.keys
    end

    # Get the default environment.
    #
    # Returns:
    # Default environment (as a string)
    #
    def default_environment
      nil
    end

    # Get the endpoint for a service on a given environment and API version.
    #
    # Args:
    # - environment: the service environment to be used (as a string)
    # - version: the API version (as an integer)
    # - service: the name of the API service (as a string)
    #
    # Returns:
    # The endpoint URL (as a string)
    #
    def endpoint(environment, version, service)
      environment = environment.upcase.to_sym
      version = version.to_sym
      service = service.to_sym
      base = get_wsdl_base(environment, version)
      if !subdir_config().nil?
        base = base.to_s + subdir_config()[[version, service]].to_s
      end
      return base.to_s + version.to_s + '/'
    end

    # Get the subdirectory for a service, for a given API version.
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the name of the API service (as a string)
    #
    # Returns:
    # The endpoint URL (as a string)
    #
    def subdir(version, service)
      return nil if subdir_config().nil?
      version = version.to_sym
      service = service.to_sym
      subdir_config()[[version, service]]
    end

    # Get the authentication server details for an environment. Allows to
    # override the auth URL via environmental variable.
    #
    # Args:
    # - environment: the service environment to be used (as a string)
    #
    # Returns:
    # The full URL for the auth server.
    #
    def auth_server(environment)
      auth_server_url = ENV['ADSAPI_AUTH_URL']
      if auth_server_url.nil?
        environment = environment.upcase.to_sym
        auth_server_url = auth_server_config[environment]
      end
      if auth_server_url.nil?
        # If we don't have an entry for this environment, we just return the
        # default server (the same one being used for the default environment)
        auth_server_url = auth_server_config[default_environment()]
      end
      return auth_server_url
    end

    # Add a new environment to the list.
    #
    # Args:
    # - name: the name for the new environment
    # - endpoint_hash: a hash of base endpoint URLs, indexed by version number,
    #   e.g.:
    #    { :v13 => 'URL_FOR_v13', :v200906 => 'URL_FOR_v200906' }
    #
    def add_environment(name, endpoint_hash)
      name = name.upcase.to_sym
      environment_config[name] = endpoint_hash
    end

    # Perform the loading of the necessary source files for a version
    #
    # Args:
    # - version: the API version (as an integer)
    #
    def do_require(version, service)
      version = version.to_sym
      eval("require '#{api_path}/#{version}/#{service}Wrapper.rb'")
    end

    # Returns the full module name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full module name for the given service (as a string)
    #
    def module_name(version, service)
      version = version.to_sym
      service = service.to_sym
      return "#{api_name}::#{version.to_s.upcase}::#{service}"
    end

    # Returns the full interface class name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full interface class name for the given service (as a string)
    #
    def interface_name(version, service)
      version = version.to_sym
      service = service.to_sym
      return module_name(version, service) + "::#{service}Interface"
    end

    # Returns the full wrapper class name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full wrapper class name for the given service (as a string)
    #
    def wrapper_name(version, service)
      version = version.to_sym
      service = service.to_sym
      return module_name(version, service) + "::#{service}Wrapper"
    end

    # Generates an array of WSDL URLs based on defined Services and version
    # supplied. This method is used by generators to determine what service
    # wrappers to generate.
    #
    # Args:
    #   - version: the API version.
    #
    # Returns
    #   hash of pairs Service => WSDL URL.
    #
    def get_wsdls(version)
      res = {}
      wsdl_base = get_wsdl_base(default_environment(), version)
      services(version).each do |service|
        path = wsdl_base
        if (!subdir_config().nil?)
          subdir_name = subdir(version, service);
          path = path + subdir_name if subdir_name and !subdir_name.empty?
        end
        path = path + version.to_s + '/' + service.to_s + '?wsdl'
        res[service.to_s] = path
      end
      return res
    end

    # Returns WSDL base url defined in Service configuration. Allows to override
    # the base URL via environmental variable.
    #
    # Args:
    #   - environment: environment to use like SANDBOX or PRODUCTION
    #   - version: the API version.
    #
    # Returns:
    #   String containing base URL.
    def get_wsdl_base(environment, version)
      wsdl_base = ENV['ADSAPI_BASE_URL']
      if wsdl_base.nil?
        wsdl_base = environment_config[environment][version]
      end
      return wsdl_base
    end
  end
end
