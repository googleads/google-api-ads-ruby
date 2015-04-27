# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Specific error handling for the AdWords API.

require 'ads_common/errors'
require 'ads_common/results_extractor'

module AdwordsApi
  module Errors

    # This class encapsulates base class for API exceptions. More specific
    # exceptions are generated based on Service WSDL.
    class ApiException < AdsCommon::Errors::ApiException
      attr_reader :array_fields

      def initialize(exception_fault, registry)
        @array_fields ||= []
        extractor = AdsCommon::ResultsExtractor.new(registry)
        exception_type = exception_fault[:application_exception_type]
        exception_data = (exception_type.nil?) ? exception_fault :
            extractor.extract_exception_data(exception_fault, exception_type)
        exception_data.each { |key, value| set_field(key, value) }
      end

      private

      # Sets instance's property to a value if it is defined
      def set_field(field, value)
        if respond_to?(field)
          value = arrayize(value) if is_array_field(field)
          instance_variable_set("@#{field}", value)
        end
      end

      # Makes sure object is an array
      def arrayize(object)
        return [] if object.nil?
        return object.is_a?(Array) ? object : [object]
      end

      # Should a field be forced to be an array
      def is_array_field(field)
        return @array_fields.include?(field.to_s)
      end
    end

    # Error for invalid credentials sush as malformed ID.
    class BadCredentialsError < AdsCommon::Errors::ApiException
    end

    # Error for malformed report definition.
    class InvalidReportDefinitionError < AdsCommon::Errors::ApiException
    end

    # Error for server-side report error.
    class ReportError < AdsCommon::Errors::ApiException
      attr_reader :http_code

      def initialize(http_code, message)
        super(message)
        @http_code = http_code
      end
    end

    # Error for server-side report XML error.
    class ReportXmlError < ReportError
      attr_reader :type, :trigger, :field_path

      def initialize(http_code, error_type, error_trigger, error_field_path)
        message =
            "HTTP code: %d, error type: '%s', trigger: '%s', field path: '%s'" %
            [http_code, error_type, error_trigger, error_field_path]
        super(http_code, message)
        @type = error_type
        @trigger = error_trigger
        @field_path = error_field_path
      end
    end
  end
end
