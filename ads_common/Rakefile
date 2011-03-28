#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
gem 'rake'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/clean'
require 'rake/testtask'
require 'lib/ads_common/api_config'

$WSDLDIR = 'wsdl'
$LIBDIR = 'lib'
$DOCDIR = 'doc'
$TESTDIR = 'test'

$PROJECT_NAME = 'ads_common'
$GEM_NAME = 'google-ads-common'

$CURRENT_VERSION = AdsCommon::ApiConfig::ADS_COMMON_VERSION
$PKG_VERSION = ENV['REL'] ? ENV['REL'] : $CURRENT_VERSION

# Configure gem details
$GEM_SUMMARY = "Common code for Google Ads APIs."
$GEM_DESCRIPTION = "#{$PROJECT_NAME} provides essential utilities shared by " +
    "all Ads Ruby client libraries."
$GEM_AUTHORS = ['Sergio Gomes', 'Danial Klimkin']
$GEM_EMAIL = 'api.sgomes@gmail.com'
$GEM_HOMEPAGE = 'http://code.google.com/p/google-api-ads-ruby/'

# ====================================================================
# Default task - call package
task :default => [:package]

# ====================================================================
# Create a task to build the RDOC documentation tree.
Rake::RDocTask.new("rdoc") do |rdoc|
  # Try to use SDoc to generate the docs
  begin
    require 'sdoc'
    rdoc.options << '--fmt' << 'shtml'
    rdoc.template = 'direct'
  rescue LoadError
    # Do nothing, give up on SDoc and continue with whatever is the default.
  end
  rdoc.rdoc_dir = $DOCDIR
  rdoc.title = "#{$PROJECT_NAME} -- Common code for Google Ads APIs"
  rdoc.main = 'README'
  rdoc.rdoc_files.include('README', 'COPYING', 'ChangeLog')
  rdoc.rdoc_files.include("#{$LIBDIR}/**/*.rb")
end

# ====================================================================
# Create a task to perform the unit testing.
Rake::TestTask.new("test") do |test|
  test.libs << $TESTDIR
  test.pattern = "#{$TESTDIR}/**/test_*.rb"
  test.verbose = true
end

# ====================================================================
# Create a task that will package the Rake software into distributable
# gem files.
PKG_FILES = FileList[
  '*.*',
  'Rakefile',
  "#{$LIBDIR}/**/*.rb",
  "#{$DOCDIR}/**/*.*",
  "#{$TESTDIR}/**/*.*"
]

PKG_FILES.exclude(/\._/)

if ! defined?(Gem)
  puts "Package Target requires RubyGems"
else
  spec = Gem::Specification.new do |s|

    # Basic information
    s.name = $GEM_NAME
    s.version = $PKG_VERSION
    s.summary = $GEM_SUMMARY
    s.description = $GEM_DESCRIPTION

    # Files and dependencies
    s.files = PKG_FILES.to_a
    s.require_path = $LIBDIR
    s.add_dependency('soap4r', '= 1.5.8')
    s.add_dependency('httpclient', '>= 2.1.5.2')
    s.add_dependency('httpi', '~>0.7.9')

    # RDoc information
    s.has_rdoc = true
    s.extra_rdoc_files = ['README']
    s.rdoc_options << '--main' << 'README'

    # Metadata
    s.authors = $GEM_AUTHORS
    s.email = $GEM_EMAIL
    s.homepage = $GEM_HOMEPAGE
    s.rubyforge_project = $GEM_NAME
    s.requirements << 'soap4r v1.5.8'
    s.requirements << 'httpclient v2.1.5.2 or greater'
    s.requirements << 'httpi v0.7.9 or greater'
  end

  Rake::GemPackageTask.new(spec) do |t|
    t.need_tar = true
  end
end
