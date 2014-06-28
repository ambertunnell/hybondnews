# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hybondnews/version'

Gem::Specification.new do |spec|
  spec.name          = "hybondnews"
  spec.version       = Hybondnews::VERSION
  spec.authors       = ["Ben Shore","Amber Tunnell"]
  spec.email         = ["amber.tunnell@gmail.com"]
  spec.summary       = %q{Web-scraping gem for High Yield Bond News}
  spec.description   = %q{A nokogiri-based web-scraping gem that provides live news updates related to the High Yield Bond Markets.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_runtime_dependency "nokogiri" 
end
