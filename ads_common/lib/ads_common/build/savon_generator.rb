#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Generates the wrappers for API services. Only used during the
# 'rake generate' step of library setup.

gem 'savon', '~>0.8.5'
require 'savon'

require 'ads_common/build/savon_service_generator'
require 'ads_common/build/savon_registry'
require 'ads_common/build/savon_registry_generator'
require 'ads_common/errors'

module AdsCommon
  module Build

    # Contains the methods that handle wrapper code generation.
    class SavonGenerator

      # Create a new generator for given WSDL
      #
      # Args:
      #   wsdl_url local or remote URL to pull WSDL data
      #   code_path local path to store generated files
      #   service_name a service name to generate stubs from
      #   module_name a fully-qualified module name
      def initialize(wsdl_url, code_path, service_name, module_name)
        @wsdl_url = wsdl_url
        @code_path = code_path
        @service_name = service_name
        @generator_args = {
            :service_name => service_name,
            :module_name  => module_name,
            :require_path => @code_path.sub(/^lib\//, '')
        }
      end

      #
      # Pull, parse and generate wrapper for WSDL on given URL
      #
      # Args:
      #   none, instance variables are used.
      #
      # Returns:
      #   none
      def process_wsdl()
        client = Savon::Client.new {|wsdl| wsdl.document = @wsdl_url }
        begin
          @generator_args[:namespace] = client.wsdl.namespace
          do_process_wsdl_client(client)
        rescue AdsCommon::Errors::Error => e
          error_msg = "An unrecoverable error occured during code generation"
          error_msg += " for service [%s]: %s" % [@wsdl_url, e]
          # TODO log properly
          raise AdsCommon::Errors::BuildError, error_msg
        end
      end

      private

      # Generate code for given Savon client
      def do_process_wsdl_client(client)
        service_file_name = @service_name.to_s.snakecase

        wsdl = client.wsdl
        check_service(wsdl)

        wrapper_file_name = "%s/%s.rb" % [@code_path, service_file_name]
        write_wrapper(wsdl, wrapper_file_name)

        registry_file_name = "%s/%s_registry.rb" %
            [@code_path, service_file_name]
        write_registry(wsdl, registry_file_name)
      end

      def check_service(wsdl)
        if wsdl.endpoint.nil? || wsdl.namespace.nil?
          raise AdsCommon::Errors::BuildError,
              'WSDL could not be retrieved or parsed.'
        end
      end

      # Generates wrapper file
      def write_wrapper(wsdl, file_name)
        wrapper_file = create_new_file(file_name)
        generator = SavonServiceGenerator.new(@generator_args)
        generator.add_actions(wsdl.soap_actions.dup)
        wrapper_file.write(generator.generate_code())
        wrapper_file.close
      end

      # Generates registry file
      def write_registry(wsdl, file_name)
        registry_file = create_new_file(file_name)
        generator = SavonRegistryGenerator.new(@generator_args)
        registry = SavonRegistry.new(wsdl)
        generator.add_exceptions(registry.soap_exceptions.dup)
        generator.add_methods(registry.soap_methods.dup)
        generator.add_types(registry.soap_types.dup)
        registry_file.write(generator.generate_code())
        registry_file.close
      end

      # Creates a new file on specified path, overwriting existing one if it
      # exists
      def create_new_file(file_name)
        puts "Creating %s..." % [file_name]
        make_dir_for_path(file_name)
        new_file = File.new(file_name, File::WRONLY|File::TRUNC|File::CREAT)
      end

      # Creates a directory for the file path specified if not exists
      def make_dir_for_path(path)
        dir_name = File.dirname(path)
        Dir.mkdir(dir_name) if !File.directory?(dir_name)
      end
    end
  end
end
