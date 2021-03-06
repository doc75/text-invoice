# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "text-invoice/version"

Gem::Specification.new do |s|
  s.name        = "text-invoice"
  s.version     = TextInvoice::VERSION
  s.authors     = ["tarn"]
  s.email       = ["tarn.barford@gmail.com"]
  s.homepage    = ""
  s.summary     = "invoicing tools"
  s.description = ""

  s.rubyforge_project = "text-invoice"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # ruby version 2.0 required due to dependency on mustache
  s.required_ruby_version = '~> 2.0'

  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "simplecov", "~> 0.10"
  s.add_dependency "mustache", "~> 1.0"
  s.add_dependency "table_print", "~> 1.5"
end
