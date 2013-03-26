#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Test utils.

# We need to require all example deps here for example method detection to work
# correctly.
require 'ads_common/savon_service'
require 'adwords_api'
require 'rr'
require 'webmock/test_unit'

class ExampleRunner < Test::Unit::TestCase
  PAGE_SIZE = 5

  include RR::Adapters::TestUnit

  def initialize(example_file)
    @version, template_file = extract_strings(example_file)

    begin
      eval_ruby_file(template_file)
    rescue Errno::ENOENT => e
      @template_error = "No template for example: '%s'" % example_file
    end

    @all_methods = self.methods
    eval_ruby_file(example_file)
  end

  def engage(test)
    test.skip(@template_error) if @template_error
    setup_mocks()
    self.instance_eval('API_VERSION = :%s' % @version)
    self.instance_eval('PAGE_SIZE = %d' % PAGE_SIZE)
    self.send(get_example_method())
    run_asserts()
    reset_state()
  end

  private

  def reset_state()
    RR.reset()
    WebMock.reset!()
    $latest_result = nil
  end

  def get_example_method()
    example_methods = self.methods - @all_methods
    if example_methods.size != 1
      raise StandardError, 'Unexpected set of methods found, need only one: ' +
          PP.singleline_pp(example_methods, '')
    end
    return example_methods.first()
  end

  def extract_strings(filename)
    version = File.basename(File.dirname(File.dirname(filename)))
    dirname = File.basename(File.dirname(filename))
    example_name = File.basename(filename, '.rb')
    template_name = '%s_%s.def' % [dirname, example_name]
    template_fullpath = File.expand_path(
        File.join('..', 'templates', version, template_name), __FILE__)
    return version, template_fullpath
  end

  def eval_ruby_file(filename)
    file_body = File.read(filename)
    self.instance_eval(file_body)
  end
end


module AdsCommon
  class Api
    # Patching original load_config for test credentials.
    alias :old_load_config :load_config
    def load_config(provided_config = nil)
      old_load_config($api_config)
    end
  end

  class SavonService
    # Patching original to capture the latest response.
    alias :old_execute_action :execute_action
    def execute_action(action_name, args, &block)
      $latest_result = old_execute_action(action_name, args, &block)
      return $latest_result
    end
  end
end
