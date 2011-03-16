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
# Specific error handling for the AdWords API.

require 'ads_common/errors'

module AdwordsApi
  module Errors

    # This class encapsulates a v13 or v20xx exception. Errors are stored in an
    # array, with each error being a hash, rather than a Ruby object. This is
    # for the purpose of making the errors independent from the SOAP toolkit
    # being used.
    class ApiException < AdsCommon::Errors::ApiException
      attr_reader :code, :errors, :trigger

      def initialize(message = nil, errors = nil, code = nil, trigger = nil)
        @message, @errors, @code, @trigger = message, errors, code, trigger
      end

      # Returns the source operation index for an error
      #
      # Args:
      # - error: the error to be analyzed
      #
      # Returns:
      # - index for the source operation, nil if none
      #
      def operation_index_for_error(error)
        if error and error.include? :field_path and error[:field_path]
          parts = error[:field_path].split('.')
          if parts.length > 0
            match = parts.first.match(/operations\[(\d)\]/)
            return match ? match[1].to_i : nil
          end
        end
        return nil
      end
    end

    # Creates an ApiException given a SOAPFault and a service wrapper.
    def self.create_api_exception(fault, wrapper)
      # Get the inner fault.
      inner_fault = nil
      if fault and fault.detail
        if fault.detail.respond_to? :apiExceptionFault
          inner_fault = fault.detail.apiExceptionFault
        elsif fault.detail.respond_to? :fault
          inner_fault = fault.detail.fault
        end
      end
      if inner_fault
        # Convert error objects to hashes.
        errors = nil
        if inner_fault.errors
          errors = inner_fault.errors.map do |error_object|
            wrapper.convert_from_object(error_object)
          end
        end
        code = inner_fault.respond_to?(:code) ? inner_fault.code : nil
        trigger = inner_fault.respond_to?(:trigger) ? inner_fault.trigger : nil
        return ApiException.new(inner_fault.message, errors, code, trigger)
      else
        return ApiException.new
      end
    end
  end
end
