# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'suspenders/version'
require 'date'

Gem::Specification.new do |s|
  s.required_ruby_version = ">= #{Suspenders::RUBY_VERSION}"
  s.authors = ['COSMIT']
  s.date = Date.today.strftime('%Y-%m-%d')

  s.description = <<-HERE
Suspenders is a base Rails project that you can upgrade. It is used by
cosmit to get a jump start on a working app. Use Suspenders if you're in a
rush to build something amazing; don't use it if you like missing deadlines.
  HERE

  s.email = 'contato@cosmit.com.br'
  s.executables = ['suspenders']
  s.extra_rdoc_files = %w[README.md LICENSE]
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/COSMITdev/suspenders'
  s.license = 'MIT'
  s.name = 'cosmit-suspenders'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = "Generate a Rails app using cosmit's best practices."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Suspenders::VERSION

  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', Suspenders::RAILS_VERSION

  s.add_development_dependency 'rspec', '~> 3.2'
  s.add_development_dependency 'simple_form', '~> 3.2'
  s.add_development_dependency 'quiet_assets', '~> 1.1'
  s.add_development_dependency 'capybara-webkit', '~> 1.8'
end
