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
# Generic class to handle credentials across client libraries.

require 'ads_common/api_config'
require 'thread'

module AdsCommon
  class CredentialHandler

    # Initializes CredentialHandler.
    def initialize(config)
      @config = config
      @auth_handler = nil
      @extra_user_agents = {}
      @extra_user_agents_lock = Mutex.new
      load_from_config(config)
    end

    # Returns credentials set for the next call.
    def credentials(credentials_override = nil)
      credentials = @credentials.dup()
      credentials.merge!(credentials_override) unless credentials_override.nil?
      return credentials
    end

    # Set the credentials hash to a new one. Calculate difference, and call the
    # AuthHandler callback appropriately.
    def credentials=(new_credentials)
      # Find new and changed properties.
      diff = new_credentials.inject([]) do |result, (key, value)|
        result << [key, value] if value != @credentials[key]
        result
      end

      # Find removed properties.
      diff = @credentials.inject(diff) do |result, (key, _)|
        result << [key, nil] unless new_credentials.include?(key)
        result
      end

      # Set each property.
      diff.each { |entry| set_credential(entry[0], entry[1]) }

      return nil
    end

    # Set a single credential to a new value. Call the AuthHandler callback
    # appropriately.
    def set_credential(credential, value)
      @credentials[credential] = value
      @auth_handler.property_changed(credential, value) if @auth_handler
    end

    # Adds a custom string to the user agent, one time, the next time a user
    # agent is generated. This will be rendered in the format "name/suffix",
    # or just "name" if the suffix is nil or omitted.
    def include_in_user_agent(name, suffix = nil)
      return if name.nil?
      unless @config.read('library.include_utilities_in_user_agent') == false
        @extra_user_agents_lock.synchronize do
          @extra_user_agents[name] = suffix
        end
      end
    end

    # Generates string for UserAgent to put into headers.
    def generate_user_agent(extra_ids = [], agent_app = nil)
      agent_app ||= File.basename($0)
      agent_data = extra_ids
      agent_data << 'Common-Ruby/%s' % AdsCommon::ApiConfig::CLIENT_LIB_VERSION
      agent_data << 'GoogleAdsSavon/%s' % GoogleAdsSavon::VERSION
      ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
      agent_data << [ruby_engine, RUBY_VERSION].join('/')
      agent_data << 'HTTPI/%s' % HTTPI::VERSION
      agent_data << HTTPI::Adapter.use.to_s
      agent_data += get_extra_user_agents()
      return '%s (%s)' % [agent_app, agent_data.join(', ')]
    end

    # Sets authorization handler to notify about credential changes.
    def set_auth_handler(auth_handler)
      @auth_handler = auth_handler
    end

    # Get the unique identifier for the current account/network context. This
    # is meant to be overriden by each client library.
    def identifier()
      return nil
    end

    private

    # Loads the credentials from the config data.
    def load_from_config(config)
      @credentials = config.read('authentication')
    end

    # Generates an array of extra user agents to include in the user agent
    # string.
    def get_extra_user_agents()
      @extra_user_agents_lock.synchronize do
        user_agents = @extra_user_agents.collect do |k, v|
          v.nil? ? k : '%s/%s' % [k, v]
        end
        @extra_user_agents.clear
        return user_agents
      end
    end
  end
end
