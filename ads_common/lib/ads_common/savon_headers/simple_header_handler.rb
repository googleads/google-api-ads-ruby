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
# Handles SOAP headers and namespaces definition for Savon SOAP backend.

module AdsCommon
  module SavonHeaders
    class SimpleHeaderHandler

      # Default namespace alias
      DEFAULT_NAMESPACE = 'wsdl'

      # Initializes a header handler.
      #
      # Args:
      #  - credential_handler: a header with credential data.
      #  - auth_handler: a header with auth data.
      #  - element_name: an API-specific name of header element.
      #  - namespace: default namespace to use.
      #  - version: services version.
      def initialize(credential_handler, auth_handler, element_name,
                     namespace, version)
        @credential_handler = credential_handler
        @auth_handler = auth_handler
        @element_name = element_name
        @namespace = namespace
        @version = version
        Savon.configure {|config| config.raise_errors = false}
      end

      # Enriches soap object with API-specific headers like namespaces, login
      # credentials etc.
      #
      # Args:
      #  - soap: a Savon soap object to fill fields in.
      #  - args: request parameters to adjust for namespaces.
      #
      # Returns:
      #  - Modified soap structure.
      def prepare_soap(soap, args)
        soap.header[prepend_namespace(@element_name)] =
            generate_request_header()
        soap.namespace = @namespace
        if (!args.nil?)
          soap.body = prepare_args(args)
        end
      end

      private

      # Generates SOAP request header with login credentials and namespace
      # definition.
      #
      # Args:
      #  - None.
      #
      # Returns:
      #  - Hash containing a header with filled in credentials.
      def generate_request_header()
        request_header = {}
        credentials = @credential_handler.credentials(@version)
        headers = @auth_handler.headers(credentials)
        headers.each do |header, value|
          request_header[prepend_namespace(header)] = value
        end
        return request_header
      end

      # Modifies request parameters to include namespace reference. For Hash
      # and Array data types dives deeper into structure.
      #
      # Args:
      #  - args: subtree of request parameters.
      #
      # Returns:
      #  - subtree with modified parameters including namespaces.
      def prepare_args(args)
        res = case args
            when Hash
              prepare_hash_args(args)
            when Array
              prepare_array_args(args)
            else
              args
            end
        return res
      end

      # Crawls hash for all the request parameters and adds namespace
      # reference for the keys.
      #
      # Args:
      #  - args: Hash element of subtree of request parameters.
      #
      # Returns:
      #  - Modified Hash with all keys updated and all values crawled.
      def prepare_hash_args(args)
        res = {}
        args.each do |key, value|
          res[prepend_namespace(key)] = prepare_args(value)
        end
        return res
      end

      # Crawls array and process each of its elements to include namespace.
      #
      # Args:
      #  - args: Array element of subtree of request parameters.
      #
      # Returns:
      #  - Modified Array with every element crawled.
      def prepare_array_args(args)
        res = []
        args.each do |item|
          res << prepare_args(item)
        end
        return res
      end

      # Adds namespace to the request parameter name.
      #
      # Args:
      #  - str: String to prepend with a namespace
      #
      # Returns:
      #  - String with a namespace.
      def prepend_namespace(str)
        return "%s:%s" % [DEFAULT_NAMESPACE, str.to_s]
      end
    end
  end
end
