#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Wrapper class to handle Soap4r-specific logging to standard logger.

require 'logger'

module AdsCommon
  class Soap4rLogger
    # Constructor for Soap4rLogger.
    #
    # Args:
    # - logger: a ruby logger to log to.
    # - log_level: default log_level for streams, defaults to INFO.
    #
    def initialize(logger, log_level = Logger::INFO)
      @logger = logger
      @log_level = log_level
    end

    # Overload << operator to perform logging.
    def << (text)
      @logger.add(@log_level) {text.to_s}
    end
  end
end
