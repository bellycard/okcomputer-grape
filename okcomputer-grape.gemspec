# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'okcomputer/grape/version'

Gem::Specification.new do |spec|
  spec.name          = "okcomputer-grape"
  spec.version       = Okcomputer::Grape::VERSION
  spec.authors       = ["Darby Frey"]
  spec.email         = ["darbyfrey@gmail.com"]

  spec.summary       = %q{A Grape API adapter for okcomputer}
  spec.description   = %q{A Grape API adapter for okcomputer}
  spec.homepage      = "https://github.com/bellycard/okcomputer-grape"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "grape"
  spec.add_runtime_dependency "okcomputer", ">= 1.6.6"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rack-test"
end
