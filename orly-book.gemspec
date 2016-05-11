# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orly/book/version'

Gem::Specification.new do |spec|
  spec.name          = "orly-book"
  spec.version       = Orly::Book::VERSION
  spec.authors       = ["Phil Crissman"]
  spec.email         = ["phcrissm@microsoft.com"]

  spec.summary       = %q{Uses orly-appstore.herokuapp.com to create fake O'Reilly-style book covers.}
  spec.homepage      = "http://github.com/philcrissman/orly-book"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
