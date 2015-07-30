# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'globelabs/sms/version'

Gem::Specification.new do |spec|
  spec.name          = "globelabs-sms"
  spec.version       = Globelabs::SMS::VERSION
  spec.authors       = ['Bernard Tolosa']
  spec.email         = ["bernardotolosajr@gmail.com"]

  spec.summary       = 'Simple wrapper for globelabs SMS'
  spec.description   = 'Simple wrapper for globelabs SMS'
  spec.homepage      = ''

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_dependency 'faraday', '~> 0.9'
  spec.add_dependency 'multi_json', '~> 1.3'
  spec.add_development_dependency 'webmock'
end
