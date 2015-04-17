# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Contains global utility methods.

module AdwordsApi
  module Utils

    # Returns the source operation index for an error.
    #
    # Args:
    # - error: the error to be analyzed
    #
    # Returns:
    # - index for the source operation, nil if none
    #
    def self.operation_index_for_error(error)
      if error and error[:field_path] and error[:field_path].kind_of?(String)
        match = error[:field_path].match(/operations\[(\d+)\]/)
        return match ? match[1].to_i : nil
      end
      return nil
    end

    # Auxiliary method to format an ID to the pattern ###-###-####.
    #
    # Args:
    # - id: ID in unformatted form
    #
    # Returns:
    # - string containing the formatted ID
    #
    def self.format_id(id)
      str_id = id.to_s.gsub(/\D/, '')
      if str_id.size >= 7
        str_array = str_id.scan(/(\d{3})(\d{3})(\d+)/)
        str_id = str_array.join('-') unless str_array.empty?
      end
      return str_id
    end
  end
end
