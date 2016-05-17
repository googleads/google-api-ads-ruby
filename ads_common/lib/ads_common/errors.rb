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
# Contains common errors across APIs, as well as base classes to inherit from
# in specific APIs.

require 'pp'

module AdsCommon
  module Errors

    # Generic error class for non-specific errors.
    class Error < ::StandardError
    end

    # Raised if an attempt is made to authenticate with missing or wrong
    # information.
    class AuthError < Error
      attr_reader :error, :info
      def initialize(message = self.class.to_s, error = nil, info = nil)
        super(message)
        @error, @info = error, info
      end
    end

    # Raised when OAuth2 access token is required.
    class OAuth2VerificationRequired < AuthError
      attr_reader :oauth_url
      def initialize(oauth_url)
        super()
        @oauth_url = oauth_url
      end
    end

    # Raised when ClientLogin Captcha challenge occurs.
    class CaptchaRequiredError < AuthError
      attr_reader :error, :captcha_token
      attr_reader :captcha_url, :auth_url
      def initialize(error, captcha_token, captcha_url, auth_url)
        super()
        @error, @captcha_token  = error, captcha_token
        @captcha_url, @auth_url = captcha_url, auth_url
      end
    end

    # Raised if a required property on an object is missing.
    class MissingPropertyError < Error
      attr_reader :property, :object_type
      def initialize(property, object_type)
        @property, @object_type = property, object_type
      end
      def to_s()
        return "%s: name: %s, type: %s" % [super, @property, @object_type]
      end
    end

    # Raised if the type of the object provided does not match expected type.
    class TypeMismatchError < Error
      attr_reader :expected, :provided, :field_name
      def initialize(expected, provided, field_name)
        @expected, @provided, @field_name = expected, provided, field_name
      end
      def to_s()
        return "%s: expected: '%s', provided: '%s' for field '%s'" %
            [super, @expected, @provided, @field_name]
      end
    end

    # Raised if unexpected parameters encountered.
    class UnexpectedParametersError < Error
      attr_reader :parameters_list
      def initialize(parameters_list)
        @parameters_list = parameters_list
      end
      def to_s()
        return "%s: %s" % [super, PP.singleline_pp(@parameters_list, '')]
      end
    end

    # Raised if an attempt is made to connect to the sandbox with production
    # credentials or vice-versa
    class EnvironmentMismatchError < Error
    end

    # Raised if a HTTP error like 403 or 404 has happened.
    class HttpError < Error
    end

    # Raised if an error has occured during code generation.
    class BuildError < Error
    end

    # Superclass for API exceptions. Each client library should implement its
    # own subclass with extra fields.
    class ApiException < Error
      def initialize(message = nil)
        super(message)
      end
    end

    # Raised if current Ruby version is not compatible with the library.
    class VersionError < Error
    end
  end
end
