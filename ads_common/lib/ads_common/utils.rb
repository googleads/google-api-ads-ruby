# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# Misc utilities.

module AdsCommon
  module Utils
    module String

      # Returns the String in lowerCamelCase.
      def lower_camelcase()
        result = dup()
        result.gsub!(/^([A-Z])/) {$1.downcase()}
        result.gsub!(/(?:_)([a-zA-Z\d])/) {$1.upcase()}
        return result
      end
    end

    # Converts all hash keys to strings.
    def self.hash_keys_to_str(data)
      return nil if data.nil?
      return data.inject({}) do |result, (k, v)|
        result[k.to_s] = v
        result
      end
    end

    # Converts all hash keys to symbols.
    def self.hash_keys_to_sym(data)
      return nil if data.nil?
      return data.inject({}) do |result, (k, v)|
        result[k.to_sym] = v
        result
      end
    end
  end
end

String.send(:include, AdsCommon::Utils::String)
