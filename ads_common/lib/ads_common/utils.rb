# Encoding: utf-8
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
        result = gsub(/^([A-Z])/) {$1.downcase()}
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

    # Updates file to include token details.
    def self.save_oauth2_token(filename, token)
      config_data = {}
      if File.exist?(filename)
        config_data = YAML::load_file(filename)
        new_file_name = self.find_new_name(filename)
        File.rename(filename, new_file_name)
      end
      config_data[:authentication][:oauth2_token] = token
      File.open(filename, 'w') {|f| f.write(YAML::dump(config_data))}
    end

    private

    # Returns an available filename for renaming a given file.
    def self.find_new_name(old_name)
      counter = 0
      begin
        filename = old_name + '.backup' + ((counter > 0) ? counter.to_s : '')
        counter += 1
      end while File.exist?(filename)
      return filename
    end
  end
end

String.send(:include, AdsCommon::Utils::String)
