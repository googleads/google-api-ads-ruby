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

      require 'ads_common/savon_service'
      require '<%= @require_path %>/<%= @service_name.to_s.snakecase %>_registry'

      <%= @modules_open_string %>

        class <%= @service_name %> < AdsCommon::SavonService
          def initialize(endpoint)
            namespace = '<%= @namespace %>'
            super(endpoint, namespace)
          end
          <% @actions.each do |action| %>

          def <%= action %>(*args)
            return execute_action('<%= action %>', args)
          end
          <% end %>

          private

          def get_service_registry()
            return <%= @service_name %>Registry
          end

          def get_module()
            return <%= @module_name %>
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
