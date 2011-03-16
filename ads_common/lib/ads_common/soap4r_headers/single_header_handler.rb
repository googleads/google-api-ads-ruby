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
# Handles soap headers for AdWords v13-style SOAP requests (flat headers).

require 'soap/header/simplehandler'

module AdsCommon
  module Soap4rHeaders

    class SingleHeaderHandler < SOAP::Header::SimpleHandler

      def initialize(credential_handler, auth_handler,
          element_name, element_namespace = nil, version = nil)
        super(XSD::QName.new(element_namespace, element_name))
        @credential_handler = credential_handler
        @auth_handler = auth_handler
        @element_name = element_name
        @version = version
      end

      def on_simple_outbound
        credentials = @credential_handler.credentials(@version)
        return @auth_handler.headers(credentials)[@element_name]
      end
    end
  end
end
