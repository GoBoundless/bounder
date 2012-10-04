# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bounder/version"

Gem::Specification.new do |s|
  s.name        = "bounder"
  s.version     = Bounder::VERSION
  s.authors     = ["Matt Hodgson"]
  s.email       = ["matt@boundless.com"]
  s.homepage    = "http://goboundless.github.com/bounder"
  s.summary     = %q{A gem to help you GSD at Boundless.}
  s.description = %q{Bounder manages the boundless git workflow and also provides utilities for working with Boundless data.}

  s.required_ruby_version = '>= 1.9.2'

  s.files         = Dir["README.md", "bin/**/*", "lib/**/*"]
  s.require_path  = "lib"
  
  s.bindir        = "bin"
  s.executables   = ["bounder"]

  s.add_dependency "bundler",            '~> 1.0',  '>= 1.0.18'
  s.add_dependency "thor",               '~> 0.15', '>= 0.15.2'
  s.add_dependency "rake",               '~> 0.9',  '>= 0.9.2'
  s.add_dependency 'listen',             '~> 0.4',  '>= 0.4.2'
  s.add_dependency 'grit',               '~> 2.5',  '>= 2.5.0'
end
