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
# DFP API Rakefile.

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

# Google common ads library used for wrapper code generation.
require 'ads_common/build/savon_generator'

require 'dfp_api/api_config'

desc 'Default target - generate and build.'
task :default => [:generate, :build]

desc 'Package the DFP API library into a gem file.'
task :build do
  result = system('/usr/bin/env gem build google-dfp-api.gemspec')
  raise 'Build failed.' unless result
end

desc 'Perform the unit testing.'
task :test do
  result = system('/usr/bin/env ruby test/suite_unittests.rb')
  raise 'Unit tests failed.' unless result
end

desc 'Generate API stubs only'
task :generate, :version, :service do |_, args|
  logger = Logger.new(STDOUT)
  logger.level = Logger::INFO

  api_config = DfpApi::ApiConfig
  version = args[:version]
  versions = api_config.versions()
  unless version.nil?
    versions.select! {|v| v == version.to_sym}
    raise 'Invalid version specified: %s' % version if versions.empty?
  end
  service = args[:service]

  versions.each do |version|
    code_path = "lib/%s/%s" % [api_config.api_name.to_s.snakecase, version]
    wsdls = DfpApi::ApiConfig.get_wsdls(version)
    wsdls.each do |service_name, wsdl_url|
      next unless service.nil? or service_name.eql?(service)
      logger.info("Processing %s at [%s]..." % [service_name, wsdl_url])
      generator = AdsCommon::Build::SavonGenerator.new(wsdl_url, code_path,
          api_config.api_name, version, service_name)
      generator.process_wsdl()
    end
  end
end
