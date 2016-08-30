# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apartment/sidekiq/cron/version'

Gem::Specification.new do |spec|
  spec.name          = "apartment-sidekiq-cron"
  spec.version       = Apartment::Sidekiq::Cron::VERSION
  spec.authors       = ["Jonas Heinrich"]
  spec.email         = ["heinrich_jonas@web.de"]

  spec.summary       = %q{Apartment support for sidekiq-cron}
  spec.description   = %q{Enable sidekiq-cron to work with apartment}
  spec.homepage      = "https://github.com/goskive/apartment-sidekiq-cron"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'apartment-sidekiq'
end
