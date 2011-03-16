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
# Code template for wrappers generation for Savon backend

require 'savon'
require 'ads_common/build/savon_abstract_generator'

module AdsCommon
  module Build
    class SavonServiceGenerator < SavonAbstractGenerator
      SERVICE_TEMPLATE = %q{<% %>
      #!/usr/bin/ruby
      # This is auto-generated code, changes will be overwritten.
      # Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
      # License:: Licensed under the Apache License,Version 2.0 (the "License").
      #
      # <%= @generator_stamp %>

      require 'savon'
      require '<%= @require_path %>/<%= @service_name.to_s.snakecase %>_registry'

      <%= @modules_open_string %>

        class <%= @service_name %>
          attr_accessor :headerhandler, :wiredump_dev, :options
          def initialize(endpoint)
            @headerhandler = []
            @wiredump_dev = nil
            @options = {}
            @client = Savon::Client.new do |wsdl|
              wsdl.namespace = '<%= @namespace %>'
              wsdl.endpoint = endpoint
            end
          end

          <% @actions.each do |action| %>
          def <%= action %>(args = nil)
            validate_args(:<%= action %>, args)
            response = @client.request(:<%= action %>) {|soap|
              set_headers(soap, args)
            }
            handle_errors(response)
            return extract_result(response, '<%= action %>')
          end
          <% end %>
          private

          def validate_args(action_symbol, args = nil)
            true
          end

          def set_headers(soap, args)
            @headerhandler.each { |handler| handler.prepare_soap(soap, args) }
          end

          # Extracts the finest results possible for the given result. Returns
          # the response itself in worst case (contents unknown).
          def extract_result(response, action_name)
            method = <%= @service_name %>Registry::get_method_signature(action_name)
            action = method[:output][:name].to_sym
            result = response.to_hash
            result = result[action] if result.include?(action)
            result = result[:rval] if result.include?(:rval)
            return result
          end

          # Checks for errors in response and raises appropriate exception
          def handle_errors(response)
            if response.soap_fault?
              exception = exception_for_soap_fault(response)
              raise exception
            end

            if response.http_error?
              raise AdsCommon::Errors::HttpError,
                  "HTTP Error occurred: %s" % response.http_error
            end
          end

          # Finds an exception object for a given response
          def exception_for_soap_fault(response)
            begin
              exception_fault =
                  response.to_hash[:fault][:detail][:api_exception_fault]
              exception_name = exception_fault[:application_exception_type]
              exception_class = <%= @module_name %>::const_get(exception_name)
              return exception_class.new(exception_fault)
            rescue Exception => e
              return AdsCommon::Errors::ApiException.new(
                  "Failed to resolve exception (%s)\n  SOAP fault: %s" %
                  [e.message, response.soap_fault])
            end
          end
        end
      <%= @modules_close_string %>

      }.gsub(/^      /, '')

      def initialize(args)
        super(args)
        @actions = []
      end

      def add_actions(actions)
        @actions += actions
      end

      def get_code_template()
        SERVICE_TEMPLATE
      end
    end
  end
end
