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
# Configuration handler, can load data from a YAML configuration file and
# rewrite it in memory.

require 'rubygems'
require 'yaml'

module AdsCommon
  class Config

    # Initialized the Config object with either the contents of a provided file
    # or a provided hash.
    def initialize(param = nil)
      @config = {}
      case param
        when String then load(param)
        when Hash then set_all(param)
      end
    end

    # Reads a property or category from the loaded configuration.
    # They can be indexed using a dot-based notation (e.g. "category.property"
    # to access "property" under "category").
    #
    # Returns the specified default if no value found.
    def read(property_path, default_value = nil)
      result = find_value(@config, property_path)
      return (result.nil?) ? default_value : result
    end

    # Writes a new value to a property or category in memory (creating it if
    # necessary).
    # They can be indexed using a dot-based notation (e.g. "category.property"
    # to access "property" under "category").
    def set(property_path, value)
      if property_path
        last_node = @config
        last_name = property_path.split('.').inject(nil) do |last_name, section|
          last_node = last_node[last_name] ||= {} unless last_name.nil?
          section.to_sym
        end
        last_node[last_name] = value
      end
      return nil
    end

    # Writes an entire set of properties.
    def set_all(properties)
      @config = process_hash_keys(properties)
      return nil
    end

    # Reads a configuration file into instance variable as a Ruby structure with
    # the complete set of keys and values.
    #
    # Args:
    # - filename: config file to be read (*String*)
    #
    # Raises:
    # - <b>Errno::ENOENT</b> if the file does not exist.
    #
    def load(filename)
      @config = YAML::load_file(filename)
      return nil
    end

    private

    # Auxiliary method to recurse through a hash and convert all the keys to
    # symbols.
    def process_hash_keys(hash)
      return hash.inject({}) do |result, pair|
        key, value = pair
        result[key.to_sym] = value.is_a?(Hash) ?
            process_hash_keys(value) : value
        result
      end
    end

    # Finds a value for string of format 'level1.level2.name' in a given hash.
    def find_value(data, path)
      return (path.nil? or data.nil?) ? nil :
          path.split('.').inject(data) do |node, section|
            break if node.nil?
            key = section.to_sym
            (node.is_a?(Hash) and node.include?(key)) ? node[key] : nil
          end
    end
  end
end
