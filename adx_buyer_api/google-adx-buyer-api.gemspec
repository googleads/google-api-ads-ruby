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

Gem::Specification.new do |s|
  s.name = 'google-adx-buyer-api'
  s.version = '0.4.7'
  s.summary = 'Ruby examples for DoubleClick Ad Exchange Buyer API'
  s.description = "AdWords API and DoubleClick Ad Exchange Buyer API client " +
      "library for Ruby"
  s.homepage = 'http://code.google.com/p/google-api-ads-ruby/'
  s.authors = ['Danial Klimkin']
  s.email = ['api.dklimkin@gmail.com']
  s.license = 'Apache-2.0'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'google-adx-buyer-api'
  s.require_path = 'lib'
  s.files = Dir.glob('examples/**/*') + %w(COPYING README ChangeLog)
  s.add_dependency('google-adwords-api', '~> 0.9.3')
end
