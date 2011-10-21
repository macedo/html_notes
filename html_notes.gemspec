# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "html_notes/version"

Gem::Specification.new do |s|
  s.name        = "html_notes"
  s.version     = HTMLNotes::Version::STRING
  s.authors     = ["Rafael Macedo"]
  s.email       = ["macedo.rafaelfernandes@gmail.com"]
  s.homepage    = "http://github.com/rafaelmacedo/html_notes"
  s.summary     = "An interface html to views annotations in source files"
  s.description = s.summary

  s.rubyforge_project = "html_notes"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency "notes", "~> 0.0.2"
  s.add_dependency "erubis"
  s.add_development_dependency "rspec", "~> 2.6.0"
end
