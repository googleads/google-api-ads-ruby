# -*- encoding: utf-8 -*-
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

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'ads_common/version'

Gem::Specification.new do |s|
  s.name = 'google-ads-common'
  s.version = AdsCommon::ApiConfig::CLIENT_LIB_VERSION
  s.summary = 'Common code for Google Ads APIs'
  s.description = 'Essential utilities shared by all Ads Ruby client libraries'
  s.homepage = 'http://code.google.com/p/google-api-ads-ruby/'
  s.authors = ['Sergio Gomes', 'Danial Klimkin']
  s.email = ['api.dklimkin@gmail.com']
  s.license = 'Apache-2.0'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'google-ads-common'
  s.require_path = 'lib'
  s.files = Dir.glob('{lib,test}/**/*') + %w(COPYING README.md ChangeLog)
  s.test_files = Dir.glob('test/test_*.rb')
  s.add_dependency('savon', '~> 1.2.0')
  s.add_dependency('httpi', '~> 1.1.0')
  s.add_dependency('signet', '~> 0.6.0')
end
