# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Rakefile for the ads_common package.

require 'rubygems'
require 'rubygems/package_task'
require 'rake/testtask'
require 'rdoc/task'
require './lib/ads_common/api_config'

GEM_NAME = 'google-ads-common'

files = FileList['lib/**/*', 'Rakefile'].to_a
tests = FileList['test/**/test_*.rb']
docs = ['README', 'COPYING', 'ChangeLog']
extra_files = ['test/test_config.yml']

spec = Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = GEM_NAME
  s.version = AdsCommon::ApiConfig::ADS_COMMON_VERSION
  s.summary = 'Common code for Google Ads APIs.'
  s.description = ("%s provides essential utilities shared by all Ads Ruby " +
      "client libraries.") % GEM_NAME
  s.authors = ['Sergio Gomes', 'Danial Klimkin']
  s.email = 'api.dklimkin@gmail.com'
  s.homepage = 'http://code.google.com/p/google-api-ads-ruby/'
  s.require_path = 'lib'
  s.files = files
  s.test_files = tests
  s.has_rdoc = true
  s.extra_rdoc_files = docs
  s.add_dependency('savon', '~> 0.9.7')
  s.add_dependency('httpclient', '~> 2.2.3')
  s.add_dependency('httpi', '~> 0.9.3')
  s.add_dependency('oauth', '~> 0.4.5')
end

desc 'Default target - build'
task :default => [:package]

# Create a task that will package the Common library into a gem file.
Gem::PackageTask.new(spec) do |pkg|
  pkg.need_tar = true
  pkg.package_files.include(extra_files)
end

# Create a task to build the RDOC documentation tree.
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title = "%s -- Common code for Google Ads APIs" % GEM_NAME
  rdoc.main = 'README'
  rdoc.rdoc_files.include(docs)
  rdoc.rdoc_files.include(files)
end

# Create a task to perform the unit testing.
Rake::TestTask.new do |t|
  t.test_files = tests
end
