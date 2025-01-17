# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eureka/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby_eureka'
  spec.version       = Eureka::VERSION
  spec.authors       = ['Jianbo Cui']
  spec.email         = ['jianbo.cui@harmoney.co.nz']

  spec.summary       = 'A Ruby Wrapper for Eureka Sidecar client'
  spec.homepage      = 'https://github.com/harmoney-jianbo/ruby-eureka'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
