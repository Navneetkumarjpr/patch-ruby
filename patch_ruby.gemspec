# -*- encoding: utf-8 -*-

=begin
#Patch API V1

#The core API used to integrate with Patch's service

The version of the OpenAPI document: v1
Contact: developers@usepatch.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "patch_ruby/version"

Gem::Specification.new do |s|
  s.name        = "patch_ruby"
  s.version     = Patch::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Patch Technology"]
  s.email       = ["developers@usepatch.com"]
  s.homepage    = "https://www.usepatch.com"
  s.summary     = "Ruby wrapper for the Patch API"
  s.description = "Ruby wrapper for the Patch API"
  s.license     = 'MIT'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
