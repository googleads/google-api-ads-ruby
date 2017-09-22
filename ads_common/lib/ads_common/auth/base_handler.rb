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
# Base class for authentication handlers, providing the basic mechanism for
# different authentication methods to be able to handle the details sent to
# the server.

module AdsCommon
  module Auth
    class BaseHandler

      # Default initializer.
      def initialize(config)
        @config = config
        @token = nil
      end

      # Callback to be used by CredentialHandlers to notify the auth handler of
      # a change in one of the credentials. Useful for e.g. invalidating a
      # token. The generic method does nothing.
      def property_changed(credential, value)
      end

      # This method handles an error according to the specifics of an
      # authentication mechanism (to regenerate tokens, for example). The
      # generic method simply re-raises the error.
      def handle_error(error)
        raise error
      end

      # Returns authorization token of some kind. Attempts to create a new one
      # if the token has not yet been created and credentials present.
      def get_token(credentials = nil)
        @token = create_token(credentials) if @token.nil? and credentials
        return @token
      end

      # Returns authorization string. Needs to be overridden.
      def auth_string(credentials)
        raise NotImplementedError, 'auth_string not overridden.'
      end

      private

      # Creates authorization token. Needs to be overridden.
      def create_token(credentials)
        raise NotImplementedError, 'create_token not overridden.'
      end
    end
  end
end
