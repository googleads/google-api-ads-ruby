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
# Generic callback handling class, to be inherited from and extended for
# specific APIs.

require 'ads_common/soap4r_patches'

module AdsCommon

  # Handler class to process response messages for API unit usage and statistics
  # information.
  class Soap4rResponseHandler < SOAP::RPC::CallbackHandler

    # Constructor for Soap4rResponseHandler.
    #
    # Args:
    # - parent: AdsCommon::Api object to which this instance should be tied
    #
    def initialize(parent)
      @parent = parent
    end

    # Handles the callback method.
    # This method is a prime candidate for redefinition in specific APIs.
    #
    # Args:
    # - method_name: name for the operation that was invoked
    # - endpoint: the endpoint URL the request was sent to
    # - envelope: the envelope for the SOAP response that was received
    # - params: the parameters that were passed to the method
    # - fault: whether the request resulted in a fault or not
    # - fault_msg: the fault message in case of a fault (nil if none)
    #
    def on_callback(method_name, endpoint, envelope, params, fault = false,
        fault_msg = nil)

      host = URI.parse(endpoint).host

      data = "host=#{host} method=#{method_name} "
      data += "isFault=#{(!!fault).to_s} "

      if fault_msg
        data += "faultMessage=\"#{fault_msg}\""
      else
        data += "faultMessage=none"
      end

      @parent.request_logger << data
    end

    # Parses the value contained in a SOAP response header.
    #
    # Args:
    # - header: an object representing a SOAP header
    #
    # Returns:
    # The value contained in the header as a string, or nil if the header is nil
    #
    def parse_header(header)
      if header.nil?
        return nil
      end

      header_element = header
      if header.instance_variable_defined?('@element')
        header_element = header.element
      end

      return header_element.text
    end
  end
end
