#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
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
# Contains common errors across APIs, as well as base classes to inherit from
# in specific APIs.

module AdsCommon
  module Errors

    # Generic error class for non-specific errors.
    class Error < ::StandardError
    end

    # Raised if an attempt is made to authenticate via the ClientLogin API with
    # missing or wrong information
    class AuthError < Error
    end

    # Raised if setting a non-existant property on an object
    class MissingPropertyError < Error
      attr_reader :property, :object_type
      def initialize(property, object_type)
        @property = property
        @object_type = object_type
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

      attr_reader :message

      def initialize(message = nil)
        @message = message
      end

    end

  end
end
