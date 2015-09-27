# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["Yiming Tsai"]
  spec.email         = ["ym.owov@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{This is Yiming Tsai's ruler!}
  spec.description   = %q{This is Yiming Tsai's ruler description!!
    the second line here!}
    spec.homepage      = "http://www.google.com"
    spec.license       = "MIT"

    spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]

    spec.add_development_dependency "bundler", "~> 1.8"
    spec.add_development_dependency "rake", "~> 10.0"
#runtime dependencies
#    gem.add_development_dependency "rspec"
#    gem.add_runtime_dependency "rest-client"
#    gem.add_runtime_dependency "some_gem", "1.3.0"
#    gem.add_runtime_dependency "other_gem", ">0.8.2" 
spec.add_runtime_dependency "rack", "~> 1.5.2"
spec.add_development_dependency "rack-test"
spec.add_development_dependency "test-unit"
end
