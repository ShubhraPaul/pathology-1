# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pathology/version'

Gem::Specification.new do |spec|
  spec.name          = "pathology"
  spec.version       = Pathology::VERSION
  spec.authors       = ["Matt Gillooly"]
  spec.email         = ["github@mattgillooly.com"]
  spec.summary       = %q{Build dynamic paths from a template.}
  spec.description   = %q{This can be handy if you want to generate dynamic filenames or URLs using runtime data and a configurable format.}
  spec.homepage      = "http://github.com/mattgillooly/pathology"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
