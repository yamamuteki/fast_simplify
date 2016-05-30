# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fast_simplify/version'

Gem::Specification.new do |spec|
  spec.name          = "fast_simplify"
  spec.version       = FastSimplify::VERSION
  spec.authors       = ["yama@muteki"]
  spec.email         = ["yama@muteki.com"]

  spec.summary       = %q{Simplify array using given rate with equal interval algorithm.}
  spec.description   = %q{Simplify array using given rate with equal interval algorithm.}
  spec.homepage      = "https://github.com/yamamuteki/fast_simplify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "coveralls"
end
