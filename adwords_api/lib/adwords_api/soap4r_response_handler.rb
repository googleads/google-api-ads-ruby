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
# Handles callbacks for the AdWords API, so that it's possible to log unit
# consumption and operations performed.

require 'ads_common/soap4r_response_handler'
require 'uri'

module AdwordsApi

  # Handler class to process response messages for API unit usage and statistics
  # information.
  class Soap4rResponseHandler < AdsCommon::Soap4rResponseHandler

    # Handles the callback method.
    # Logs the request data and tracks unit usage.
    #
    # Args:
    # - method_name: name for the operation that was invoked
    # - endpoint: the enodpoint URL the request was sent to
    # - envelope: the envelope for the SOAP response that was received
    # - params: the parameters that were passed to the method
    # - fault: whether the request resulted in a fault or not
    # - fault_msg: the fault message in case of a fault (nil if none)
    #
    def on_callback(method_name, endpoint, envelope, params, fault = false,
        fault_msg = nil)
      units = nil
      operations = nil
      response_time = nil
      request_id = nil
      operators = nil
      operator_count = nil

      # Create a hash with the count per operator used in the request
      if params and params[0] and params[0].class.to_s =~ /.*::Mutate/
        if params[0].is_a?(Array) and params[0].size >= 1
          operators = Hash.new(0)
          params[0].each do |operation|
            if operation.is_a? Hash and operation[:operator]
              operators[operation[:operator].to_s] += 1
            elsif operation.is_a? Hash and operation['operator']
              operators[operation['operator'].to_s] += 1
            elsif operation.respond_to? 'operator'
              operators[operation.operator.to_s] += 1
            else
              operators['?'] += 1
            end
          end
        else
          if params[0].is_a? Hash and params[0][:operator]
            operators[params[0][:operator].to_s] += 1
          elsif params[0].is_a? Hash and params[0]['operator']
            operators[params[0]['operator'].to_s] += 1
          elsif params[0].respond_to? 'operator'
            operators[params[0].operator.to_s] += 1
          end
        end
      end

      if operators
        operator_count = operators.map { |op, num| "#{op}: #{num}" }.join(', ')
      end

      header = envelope.header if envelope
      if header and header.key?('ResponseHeader')
        header = header['ResponseHeader'].element
      end

      if header
        @parent.mutex.synchronize do
          units = parse_header(header['units'])
          unless units.nil?
            @parent.last_units = units.to_i
            @parent.total_units = @parent.total_units + units.to_i
          end

          operations = parse_header(header['operations'])
          response_time = parse_header(header['responseTime'])
          request_id = parse_header(header['requestId'])
        end
      end

      host = URI.parse(endpoint).host

      data = "host=#{host} method=#{method_name} " +
        "responseTime=#{response_time} operations=#{operations} "

      data += "operators={#{operator_count}} " if operator_count

      data += "units=#{units} requestId=#{request_id} "

      data += "isFault=#{(!!fault).to_s} "

      if fault_msg
        data += "faultMessage=\"#{fault_msg}\""
      else
        data += "faultMessage=none"
      end

      @parent.request_logger << data
    end
  end
end
