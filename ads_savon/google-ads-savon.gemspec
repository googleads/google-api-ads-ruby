# -*- encoding : utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$:.unshift lib unless $:.include? lib

require "ads_savon/version"

Gem::Specification.new do |s|
  s.name        = "google-ads-savon"
  s.version     = GoogleAdsSavon::VERSION
  s.authors     = "Daniel Harrington"
  s.email       = "me@rubiii.com"
  s.homepage    = "http://savonrb.com"
  s.summary     = "Heavy metal SOAP client"
  s.description = "Delicious SOAP for the Ruby community"

  s.rubyforge_project = s.name
  s.license = 'MIT'

  s.add_dependency "nori",     "~> 2.6"
  s.add_dependency "httpi",    "~> 2.3"
  s.add_dependency "wasabi",   "~> 3.4"
  s.add_dependency "akami",    "~> 1.2"
  s.add_dependency "gyoku",    "~> 1.2"

  s.add_dependency "builder",  "~> 3.0"
  s.add_dependency "nokogiri", "~> 1.6"

  s.add_development_dependency "rake",    "~> 10.1"
  s.add_development_dependency "rspec",   "~> 2.14"
  s.add_development_dependency "mocha",   "~> 0.14"
  s.add_development_dependency "timecop", "~> 0.3"

  s.files = Dir.glob('lib/**/*') + %w(LICENSE README.md ChangeLog)
  s.require_path = "lib"
end
