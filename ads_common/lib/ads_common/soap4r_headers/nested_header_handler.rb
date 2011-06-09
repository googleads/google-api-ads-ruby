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
# Handles soap headers for AdWords v2009-style SOAP requests (nested headers).

require 'soap/header/simplehandler'

module AdsCommon
  module Soap4rHeaders

    class NestedHeaderHandler < SOAP::Header::SimpleHandler

      def initialize(credential_handler, auth_handler, top_element_name,
          top_namespace, inner_namespace, version = nil)
        super(XSD::QName.new(top_namespace, top_element_name))
        @credential_handler = credential_handler
        @auth_handler = auth_handler
        @ns = inner_namespace
        @version = version
      end

      # Handles callback.
      def on_simple_outbound
        main_header = SOAP::SOAPElement.new(nil)
        credentials = @credential_handler.credentials(@version)
        @auth_handler.headers(credentials).each do |cred, value|
          cred_header = SOAP::SOAPElement.new(XSD::QName.new(@ns, cred), value)
          main_header.add(cred_header)
        end
        return main_header
      end
    end
  end
end
