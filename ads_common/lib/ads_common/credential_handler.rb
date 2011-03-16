#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
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

module AdsCommon
  class CredentialHandler

    def initialize(config)
      @config = config
      load_from_config
    end

    # Retrieve all credentials (optional parameter specifying API version).
    def credentials(version = nil)
      return @credentials
    end

    # Set the credentials hash to a new one. Calculate difference, and call the
    # AuthHandler callback appropriately.
    def credentials=(new_credentials)
      # Find new and changed properties.
      diff = new_credentials.select do |key, value|
        value != @credentials[key]
      end

      # Find removed properties.
      removed = @credentials.select do |key, value|
        new_credentials[key] == nil
      end
      if removed
        removed = removed.map { |entry| [entry[0], nil] }
        diff += removed
      end

      # Set each property.
      diff.each do |entry|
        set_credential(entry[0], entry[1])
      end
    end

    # Set a single credential to a new value. Call the AuthHandler callback
    # appropriately.
    def set_credential(credential, value)
      @credentials[credential] = value
      @auth_handler.property_changed(credential, value) if auth_handler
    end

    private

    # Loads the credentials from the config data.
    def load_from_config
      @credentials = @config.read('authentication')
    end
  end
end
