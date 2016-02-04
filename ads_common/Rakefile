# Encoding: utf-8
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

require 'rake/testtask'

desc 'Default target - build.'
task :default => [:build, :test]

desc 'Package the Common library into a gem file.'
task :build do
  result = system('/usr/bin/env gem build google-ads-common.gemspec')
  raise 'Build failed.' unless result
end

desc 'Perform the unit testing.'
Rake::TestTask.new do |t|
  test_files_mask = File.join(File.dirname(__FILE__), 'test', 'test_*.rb')
  t.test_files = FileList[Dir.glob(test_files_mask)]
end

desc 'Run tests coverage tool.'
task :coverage do
  result = system('/usr/bin/env ruby test/coverage.rb')
  raise 'Coverage run failed.' unless result
end
