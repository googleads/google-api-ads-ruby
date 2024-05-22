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

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'ads_common/version'

Gem::Specification.new do |s|
  s.name = 'google-ads-common'
  s.version = AdsCommon::ApiConfig::CLIENT_LIB_VERSION
  s.summary = 'Common code for Google Ads APIs'
  s.description = 'Essential utilities shared by all Ads Ruby client libraries'
  s.homepage = 'https://github.com/googleads/google-api-ads-ruby'
  s.authors = ['Sergio Gomes', 'Danial Klimkin', 'Michael Cloonan']
  s.email = ['adwordsapiadvisor+michael@google.com']
  s.license = 'Apache-2.0'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.7'
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'google-ads-common'
  s.require_path = 'lib'
  s.files = Dir.glob('lib/**/*') + %w(README.md ChangeLog)
  s.add_runtime_dependency('faraday', '>= 0.9')
  s.add_runtime_dependency('google-ads-savon', '~> 1.0', '>=1.0.2')
  s.add_runtime_dependency('httpi', '~> 2.3')
  s.add_runtime_dependency('httpclient', '~> 2.7')
  s.add_runtime_dependency('signet', '~> 0.7')
  s.add_development_dependency('rake', '>= 12.3.3', '< 13.0')
  s.add_development_dependency('test-unit', '~> 3.2')
  s.add_development_dependency('webmock', '~> 3.0')
  s.add_development_dependency('minitest', '~> 5.10')
  s.add_development_dependency('rr', '~> 1.0.5')
end
