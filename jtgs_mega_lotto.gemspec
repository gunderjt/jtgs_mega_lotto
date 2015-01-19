# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jtgs_mega_lotto/version'

Gem::Specification.new do |spec|
  spec.name          = "jtgs_mega_lotto"
  spec.version       = JtgsMegaLotto::VERSION
  spec.authors       = ["Jeffrey Gunderson"]
  spec.email         = ["jeffrey.gunderson@gmail.com"]
  spec.summary       = %q{Test gem for learning purposes}
  spec.description   = %q{No seriously, this will never be published, and why I have to include this when it says optional is bs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
