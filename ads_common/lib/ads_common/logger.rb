#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# Wrapper class to handle logging to console and/or files.

require 'logger'

module AdsCommon

  # Wrapper class to handle logging to console and/or files.
  class Logger

    # Constructor for AdsLogger.
    #
    # Args:
    # - filename: the filename for the log file to be written (if log_to_file is
    #   called)
    # - log_to_console: boolean, indicates whether or not to log to the console
    #
    def initialize(filename, log_to_console=false)
      @filename = filename
      @loggers = []
      if log_to_console
        stderr_logger = ::Logger.new(STDERR)
        stderr_logger.level = ::Logger::INFO
        @loggers << stderr_logger
      end
    end

    # Enables logging to a file.
    # May be called several times to log to multiple files.
    #
    # Args:
    # - path: where to write the file (defaults to current dir). Path only, do
    #   not provide filename.
    #
    def log_to_file(path='.')
      new_logger = ::Logger.new(File.join(path, @filename))
      new_logger.level = ::Logger::INFO
      @loggers << new_logger

      return nil
    end

    # Overload << operator to perform logging.
    def << (text)
      @loggers.each do |logger|
        logger.info text.to_s
      end
    end
  end
end
