# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
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
# OAuth request proxy for HTTPI::Request.

require 'oauth/request_proxy/base'
require 'httpi/request'

module OAuth
  module RequestProxy
    class HTTPIRequest < OAuth::RequestProxy::Base
      proxies HTTPI::Request

      # HTTP method to use.
      def method
        return 'POST'
      end

      # Request URL.
      def uri
        request.url.to_s
      end

      # Query parameters.
      def parameters
        options[:parameters]
      end

      # Request body.
      def body
        request.body
      end
    end
  end
end
