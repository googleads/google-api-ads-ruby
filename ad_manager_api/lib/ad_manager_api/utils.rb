# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
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
# Misc Ad Manager utilities.

require 'set'
require 'thread'
require 'singleton'


module AdManagerApi
  module Utils
    # Class to keep a list of unique utilities used in order to perform tracking
    # of client library features.
    class UtilityRegistry
      include Singleton
      attr_accessor :enabled

      def initialize
        @enabled = true
        @registry = Set.new
        @lock = Mutex.new
      end

      def extract!
        @lock.synchronize do
          registry = @registry.dup
          @registry.clear
          return registry
        end
      end

      def length
        @lock.synchronize { @registry.length }
      end

      def add(util)
        @lock.synchronize { @registry.add(util) if @enabled }
      end
    end
  end
end
