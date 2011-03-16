#!/usr/bin/ruby
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
# Contains helpful methods to make HTTP requests, using all of the connection
# options available through the client library.

require 'httpi'

require 'ads_common/errors'

module AdsCommon
  module Http

    # Performs a get on a URL, using all of the connection options in the
    # client library, returning a HTTPI::Response.
    def self.get_response(url, config = nil, headers = nil)
      request = prepare_request(config, url, headers)
      response = HTTPI.get(request)
      return response
    end

    # Performs a get on a URL, using all of the connection options in the
    # client library, returning the response body as a string.
    def self.get(url, config = nil, headers = nil)
      return get_response(url, config, headers).body
    end

    # Performs a post on a URL, using all of the connection options in the
    # client library, returning a HTTPI::Response.
    def self.post_response(url, data, config = nil, headers = nil)
      request = prepare_request(config, url, headers, data)
      response = HTTPI.post(request)
      return response
    end

    # Performs a post on a URL, using all of the connection options in the
    # client library, returning the response body as a string.
    def self.post(url, data, config = nil, headers = nil)
      return post_response(url, data, config, headers).body
    end

    private

    # Returns a suitably configured request object for a given URL and options.
    # Defaulting to stricter :peer validation.
    def self.prepare_request(config, url, headers = nil, data = nil)
      request = HTTPI::Request.new(url)
      proxy = config ? config.read('connection.proxy') : nil
      request.proxy = proxy if proxy
      strict_ssl = config.nil? or
          !(config.read('connection.strict_ssl_verification') == 'false')
      request.auth.ssl.verify_mode = strict_ssl ? :peer : :none
      request.headers = headers if headers
      request.body = data if data
      HTTPI.log = false # TODO remove after logger CL.
      return request
    end
  end
end
