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
# Rakefile for the AdWords API client library.

# A little trick so we can load things from the lib/ directory without having
# to patch the "require" statements in the files
$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'rubygems'
gem 'google-ads-common'
require 'ads_common/build/soap4r_generator'
require 'ads_common/config'
require 'adwords_api/api_config'
require 'adwords_api/extensions'

# Configure some constants and built-in tasks
$PROJECT_NAME = 'adwords_api'
$GEM_NAME = 'google-adwords-api'
$API_NAME = 'AdWords API'
$CURRENT_VERSION = AdwordsApi::ApiConfig::CLIENT_LIB_VERSION
$PRODDIR = 'adwords_api'
$ADS_COMMON_VERSION = '~> 0.2.0'

# Configure module / namespace
$MODULE = AdwordsApi

# Configure config file location.
$CONFIG_FILE = 'adwords_api.yml'

# Configure gem details
$GEM_SUMMARY = "Client library for the AdWords API."
description = "#{$PROJECT_NAME} provides an easy to use way to access " +
    "the AdWords API in Ruby.\nCurrently the following AdWords API versions " +
    "are supported:"
versions = AdwordsApi::ApiConfig.versions.map { |version| version.to_s }
versions.sort.each do |version|
  description += "\n  * #{version}"
end
$GEM_DESCRIPTION = description
$GEM_AUTHORS = ['Sergio Gomes']
$GEM_EMAIL = 'api.sgomes@gmail.com'
$GEM_HOMEPAGE = 'http://code.google.com/p/google-api-adwords-ruby/'


# Configure code generation for the AdWords API client library.
module Generator

  class << Generator
    include AdsCommon::Build::Soap4rGenerator
  end

  def self.api_config
    AdwordsApi::ApiConfig
  end

  def self.config
    filename = File.join(ENV['HOME'], $CONFIG_FILE)
    if File.exist?(filename)
      AdsCommon::Config.new(filename)
    else
      nil
    end
  end

  def self.extension_config
    AdwordsApi::Extensions
  end

  private

  # Helper method to create a link to a method's entry in the API online docs.
  #
  # Args:
  # - version: the API version (as an integer)
  # - service: the service name (as a string)
  # - method: the method name (as a string)
  #
  # Returns:
  # The URL to the method's entry in the documentation (as a string).
  # nil if none.
  #
  def self.doc_link(version, service, method)
    if version.to_s == 'v13'
      base = 'http://code.google.com/apis/adwords/docs/developer/'
      url = base + service.to_s + '.html#' + method
      return url
    elsif version.to_s =~ /v20\d[\d]+/
      base = 'http://code.google.com/apis/adwords/docs/reference/'
      url = base + version.to_s + '/' + service.to_s + '.html#' + method
      return url
    else
      return nil
    end
  end

end


# Import tasks in common file
require 'ads_common/build/rake_common'
