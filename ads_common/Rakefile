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

desc 'Default target - build.'
task :default => [:build]

desc 'Package the Common library into a gem file.'
task :build do
  result = system('/bin/env gem build google-ads-common.gemspec')
  raise 'Build failed.' unless result
end

desc 'Perform the unit testing.'
task :test do
  result = system('/bin/env ruby test/suite_unittests.rb')
  raise 'Unit tests failed.' unless result
end

desc 'Run tests coverage tool.'
task :coverage do
  result = system('/bin/env ruby test/coverage.rb')
  raise 'Coverage run failed.' unless result
end
