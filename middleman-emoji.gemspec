# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'middleman-emoji/version'

Gem::Specification.new do |s|
  s.name        = "middleman-emoji"
  s.version     = Middleman::Emoji::VERSION
  s.authors       = ["SATO Naoya"]
  s.email         = ["s@tonaoya.com"]
  s.homepage    = "http://github.com/stny/middleman-emoji"
  s.summary     = "Emoji extension for Middleman"
  s.description = "Emoji extension for Middleman"
  s.license       = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "middleman-core", '~> 3.2'
  s.add_dependency 'rack-emoji', '~> 0.1'

end
