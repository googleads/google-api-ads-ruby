#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
#           api.jeffy@gmail.com (Jeffrey Posnick)
#           chanezon@google.com (Patrick Chanezon)
#           leavengood@gmail.com (Ryan Leavengood)
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
# Common Rake tasks for Ads client libraries.

require 'fileutils'
require 'logger'
require 'rubygems'
gem 'rake'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/clean'
require 'rake/testtask'
gem 'soap4r', '=1.5.8'
require 'wsdl/soap/wsdl2ruby'
require 'xsd/codegen/classdef'
require 'ads_common/soap4r_patches'
require 'ads_common/http'

$API_CONFIG = $MODULE::ApiConfig

$WSDLDIR = 'wsdl'
$LIBDIR = 'lib'
$DOCDIR = 'doc'
$TESTDIR = 'test'
$GENDIR = File.join($LIBDIR, $PROJECT_NAME)
$PKG_VERSION = ENV['REL'] ? ENV['REL'] : $CURRENT_VERSION

SRC_RB = FileList["#{$LIBDIR}/**/*.rb"]

logger = Logger.new(STDERR)

CLEAN.include($WSDLDIR)
CLEAN.include($DOCDIR)
$API_CONFIG.versions.each do |version|
  CLEAN.include(File.join($GENDIR, version.to_s))
end

CLOBBER.include('pkg')

# ====================================================================
# Create a default task to prepare library for usage.
desc "gets the wsdl and generates the classes"
task :default => [:getwsdl, :generate]

# ====================================================================
# Create a task to retrieve the WSDL files for the services.
desc "gets the wsdl files for API services"
task :getwsdl do
  $API_CONFIG.versions.each do |version|
    urls = $API_CONFIG.get_wsdls(version)
    mkdir_p File.join($WSDLDIR, version.to_s)
    urls.each do |service, url|
      puts "getting #{url}"
      save(AdsCommon::Http.get(url, Generator.config),
           get_wsdl_file_name(version.to_s, service.to_s))
    end
  end
end

# Return the full file name of the WSDL file for a given version and service
def get_wsdl_file_name(version, service)
  File.join($WSDLDIR, version.to_s, service.to_s) + '.wsdl'
end

# Apply fixes to the WSDL content in order to make it understandable for the
# soap4r code generator. The fixes are applied to the original object.
def fix_wsdl!(wsdl)
  ['type', 'base'].each do |name|
    ['long', 'string', 'date', 'int', 'boolean'].each do |type|
      # Fix this attribute over the entire document
      wsdl.gsub!(Regexp.new("#{name}=\"#{type}\""), "#{name}=\"xsd:#{type}\"")
    end
  end
  schema_ns = "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\""
  if wsdl !~ Regexp.new(schema_ns)
    wsdl.gsub!(/(<wsdl:definitions[^>]*)>/, '\1 ' + schema_ns + '>')
  end
  return wsdl
end

# Saves this document to the specified path.
# Doesn't create the file if a 404 error page is returned.
def save(content, path)
  if content !~ /<H2>Error 404<\/H2>/
    File::open(path, 'w') {|f| f.write(fix_wsdl!(content))}
  end
end

# ====================================================================
# Set the default generation task to use soap4r (can be overriden for client
# libraries).
desc "generates API classes from the wsdl files"
task :generate => [:soap4r_generate]

# ====================================================================
# Create a task to generate all the service classes with soap4r.
desc "generates API classes from the wsdl files using soap4r"
task :soap4r_generate do
  $API_CONFIG.versions.each do |version|
    gendir = File.join($LIBDIR, $PRODDIR, version.to_s)
    mkdir_p gendir
    $API_CONFIG.services(version).each do |service|
      # Generate SOAP classes with soap4r
      service_name = service.to_s
      worker = WSDL::SOAP::WSDL2Ruby.new
      worker.logger = logger
      worker.location = get_wsdl_file_name(version, service)
      worker.basedir = gendir
      worker.opt.update(get_wsdl_opt(version, service_name))
      worker.run

      # Fix the "require" statements so that they work in the client library's
      # directory structure
      fix_import(version, File.join(gendir, "#{service_name}Driver.rb"))
      fix_import(version,
          File.join(gendir, "#{service_name}MappingRegistry.rb"))
      fix_import(version, File.join(gendir, "#{service_name}.rb"))

      # Fix the comments in the file so that we get better-looking RDoc, and
      # only for the things we want
      fix_rdoc(File.join(gendir, "#{service_name}.rb"))

      # Generate the wrapper files
      eval("require '#{File.join(gendir, "#{service_name}Driver.rb")}'")
      wrapper_file = File.join(gendir, "#{service_name}Wrapper.rb")
      File.open(wrapper_file, 'w') do |file|
        file.write(Generator.generate_wrapper_class(version, service))
      end
      puts "Generated #{version} #{service_name} wrapper: #{wrapper_file}"
    end
  end
end

# Fix "require" statements for client lib usage
def fix_import(version, file)
  tempfile = file + '.tmp'
  outfile = File.new(tempfile, 'w')
  File.open(file, 'r') do |infile|
    infile.each do |line|
      if (line =~ /require.*Service.*\.rb/)
        outfile << line.gsub(/require '(.*)Service(.*)\.rb'/,
            "require '#{$PRODDIR}/#{version.to_s}/\\1Service\\2'")
      else
        outfile << line
      end
    end
  end
  outfile.close
  File.rename(tempfile, file)
end

# Fix RDoc comments in the generated *Service.rb files
def fix_rdoc(file)
  tempfile = file + '.tmp'
  outfile = File.new(tempfile, 'w')
  should_doc = true
  File.open(file, 'r') do |infile|
    infile.each do |line|
      if (line =~ /# \{.*\}[A-Z]\w*/)
        # This is a regular class. Document and clean up how it's displayed.
        should_doc = true
        outfile << line.gsub(/\{.*\}(.*)/, "\\1")
      elsif (line =~ /# \{.*\}[a-z]\w*/)
        # This is a method wrapping class. Do not document, but still clean up
        # its comment.
        should_doc = false
        outfile << line.gsub(/\{.*\}(.*)/, "\\1")
      elsif (line =~ /#   \w+/)
        # Itemize member variables
        outfile << line.gsub(/#   (.*)/, "# - \\1")
      elsif (line =~ /class [A-Z].*/)
        if should_doc
          outfile << line
        else
          # Avoid documenting the method classes, since they're made invisible
          # thanks to our service wrappers
          outfile << line.gsub(/(.*)(\w)/, "\\1\\2 #:nodoc: all")
        end
      else
        outfile << line
      end
    end
  end
  outfile.close
  File.rename(tempfile, file)
end

# Create options to be used for class generation from WSDL
def get_wsdl_opt(version, service_name)
  optcmd= {}
  optcmd['classdef'] = service_name
  optcmd['force'] = true
  optcmd['mapping_registry'] = true
  optcmd['driver'] = nil

  # Causes soap4r to wrap the classes it outputs into the given modules
  optcmd['module_path'] = [$MODULE.name, version.to_s.capitalize, service_name]
  return optcmd
end

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
  rdoc.title = "#{$PROJECT_NAME} -- Client library for the #{$API_NAME}"
  rdoc.main = 'README'
  rdoc.rdoc_files.include('README', 'COPYING', 'ChangeLog')
  rdoc.rdoc_files.include("#{$LIBDIR}/*.rb", "#{$LIBDIR}/#{$PRODDIR}/*.rb")
  rdoc.rdoc_files.include("#{$LIBDIR}/#{$PRODDIR}/v*/*Wrapper.rb")
  rdoc.rdoc_files.include("#{$LIBDIR}/#{$PRODDIR}/v*/*Service.rb")
  rdoc.rdoc_files.exclude("#{$LIBDIR}/#{$PRODDIR}/soap4rpatches.rb")
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

# Utility method to create readable version ranges. May not cover a few edge
# cases, but this is a best effort approach.
def readable_version_range(version_string)
  return '' if version_string.nil?

  version_string = version_string.to_s.strip
  pattern = /^(>|<|>=|<=|~>)(\s*)(\d[\d\.]*)$/
  result = pattern.match(version_string)

  return version_string unless result

  case result[1]
  when '>'
    return 'greater than version ' + result[3]
  when '<'
    return 'lower than version ' + result[3]
  when '>='
    return 'version ' + result[3] + ' or later'
  when '<='
    return 'version ' + result[3] + ' or earlier'
  when '~>'
    version_pattern = /^(\d[\d\.]*)(\d)$/
    version_result = version_pattern.match(result[3])
    if version_result
      return 'version ' + version_result[1] + 'x'
    else
      return version_string
    end
  else
    return version_string
  end
end

PKG_FILES = FileList[
  '*.*',
  'Rakefile',
  "#{$LIBDIR}/**/*.rb",
  "#{$LIBDIR}/#{$PRODDIR}/data/*.*",
  'examples/**/*.rb',
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
    dependencies = [['soap4r', '= 1.5.8'],
                    ['httpclient', '>= 2.1.2'],
                    ['google-ads-common', $ADS_COMMON_VERSION]]
    dependencies += $EXTRA_DEPENDENCIES if $EXTRA_DEPENDENCIES
    s.files = PKG_FILES.to_a
    s.require_path = $LIBDIR
    dependencies.each do |dep|
      s.add_dependency(dep[0], dep[1])
    end

    # RDoc information
    s.has_rdoc = true
    s.extra_rdoc_files = ['README']
    s.rdoc_options << '--main' << 'README'

    # Metadata
    s.authors = $GEM_AUTHORS
    s.email = $GEM_EMAIL
    s.homepage = $GEM_HOMEPAGE
    s.rubyforge_project = $PROJECT_NAME
    dependencies.each do |dep|
      s.requirements << dep[0] + ' ' + readable_version_range(dep[1])
    end
  end

  Rake::GemPackageTask.new(spec) do |t|
    t.need_tar = true
  end
end
