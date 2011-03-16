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
      if param and param.is_a? String
        load(param)
      elsif param and param.is_a? Hash
        set_all(param)
      end
    end

    # Reads a property or category from the loaded configuration.
    # They can be indexed using a dot-based notation (e.g. "category.property"
    # to access "property" under "category").
    def read(property_path = nil)
      current_level = @config
      if property_path
        property_path.split('.').each do |item|
          return nil if !current_level or !(current_level.is_a?(Hash))
          current_level = current_level[item.to_sym]
        end
      end
      return current_level
    end

    # Writes a new value to a property or category in memory (creating it if
    # necessary).
    # They can be indexed using a dot-based notation (e.g. "category.property"
    # to access "property" under "category").
    def set(property_path, value)
      @config = {} if !@config
      current_level = @config
      if property_path
        segments = property_path.split('.')
        segments[0,-2].each do |item|
          return nil if !current_level or !(current_level.is_a?(Hash))
          current_level = current_level[item.to_sym]
        end
        if current_level and current_level.is_a?(Hash)
          current_level[segments.last] = value
          return value
        end
      end
      return nil
    end

    # Writes an entire set of properties.
    def set_all(properties)
      @config = process_hash_keys(properties)
    end

    # Auxiliary method to recurse through a hash and convert all the keys to
    # symbols.
    def process_hash_keys(hash)
      new_hash = {}
      hash.each do |key, value|
        if value.is_a? Hash
          new_hash[key.to_sym] = process_hash_keys(value)
        else
          new_hash[key.to_sym] = value
        end
      end
      return new_hash
    end

    # Reads a configuration file and returns a Ruby structure with the complete
    # set of keys and values.
    #
    #
    # Args:
    # - filename: config file to be read (*String*)
    #
    # Returns:
    # - Ruby objects for the stored YAML
    #
    # Raises:
    # - <b>Errno::EACCES</b> if the file does not exist.
    #
    def load(filename)
      unless File.exist?(filename)
        raise(Errno::EACCES, "File #{filename} does not exist")
      end
      file = nil
      begin
        file = File.open(filename)
        @config = YAML::load(file)
      ensure
        file.close if file
      end
      return @config
    end
  end

end
