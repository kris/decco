# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'decco/version'

Gem::Specification.new do |spec|
  spec.name          = "decco"
  spec.version       = Decco::VERSION
  spec.authors       = ["kris"]
  spec.email         = ["kris@octohq.com"]
  spec.summary       = %q{Simple Decorators}
  spec.description   = %q{A simple decorator based on PORO}
  spec.homepage      = "http://github.com/kris/decco"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "rspec-rails", "~> 3.1"
end
