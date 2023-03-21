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

lib = File.expand_path("../lib/", __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name = "google-adwords-api"
  s.version = "1.6.0"
  s.summary = "Ruby Client libraries for AdWords API"
  s.description =
    "The AdWords API is no longer available. Please upgrade to the Google Ads API gem: google-ads-googleads"
  s.homepage = "https://github.com/googleads/google-api-ads-ruby"
  s.authors = ["Danial Klimkin", "Michael Cloonan"]
  s.email = ["adwordsapiadvisor+michael@google.com"]
  s.license = "Apache-2.0"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 2.0"
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "google-adwords-api"
  s.require_path = "lib"
  s.files = Dir.glob("lib/**/*") + %w[COPYING README.md ChangeLog]
  s.add_runtime_dependency("google-ads-common", "~> 1.0.0")
  s.add_runtime_dependency("nori", "~> 2.6")
  s.add_development_dependency("rr", "~> 1.1.2")
  s.add_development_dependency("webmock", "~> 1.21")
end
