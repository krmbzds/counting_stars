# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'counting_stars/version'

Gem::Specification.new do |spec|
  spec.name          = 'counting_stars'
  spec.version       = CountingStars::VERSION
  spec.authors       = ['Kerem Bozdas']
  spec.email         = ['krmbzds.github@gmail.com']

  spec.summary       = %q{Extract rating & metadata information from Google Search}
  spec.description   = %q{A simple tool for extracting rating and metadata information from Google Search.}
  spec.homepage      = 'https://github.com/krmbzds/counting_stars'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = ['countingstars']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'nokogiri', '~> 1.6', '>= 1.6.6.2'
  spec.add_runtime_dependency 'activesupport', '~> 4.2', '>= 4.2.0'

  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.4', '>=0.4.7'
end
