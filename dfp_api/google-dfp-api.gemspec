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

require 'dfp_api/version'

Gem::Specification.new do |s|
  s.name = 'google-dfp-api'
  s.version = DfpApi::ApiConfig::CLIENT_LIB_VERSION
  s.summary = 'Ruby Client libraries for DFP API'
  s.description = "%s is a DFP API client library for Ruby" % s.name
  s.homepage = 'https://github.com/googleads/google-api-ads-ruby'
  s.authors = ['Danial Klimkin', 'Nicholas Chen']
  s.email = ['dfpapi-advisor+nicholas@google.com']
  s.license = 'Apache-2.0'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'google-dfp-api'
  s.require_path = 'lib'
  s.files = Dir.glob('{examples,lib,test}/**/*') +
      %w(COPYING README.md ChangeLog dfp_api.yml)
  s.test_files = Dir.glob('test/**/test_*.rb')
  s.add_dependency('google-ads-common', '~> 0.11.0')
end
