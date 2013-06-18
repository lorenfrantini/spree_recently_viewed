# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'spree_recently_viewed/version'

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'spree_recently_viewed'
  s.version      = SpreeRecentlyViewed::VERSION
  s.summary      = 'Adds recently viewed products to Spree Commerce'
  s.description  = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.authors      = ['Roman Smirnov', 'Brian Quinn']
  s.email        = 'brian@railsdog.com'
  s.homepage     = 'https://github.com/spree/spree_recently_viewed'
  s.license      = 'BSD'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_runtime_dependency 'spree', '~> 2.0'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'selenium-webdriver', '~> 2.33.0'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker', '~> 1.16'
  s.add_development_dependency 'rspec-rails', '~> 2.13'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '~> 1.3.7'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'i18n-spec', '~> 0.4.0'
  s.add_development_dependency 'fuubar', '>= 0.0.1'
  s.add_development_dependency 'pry-rails'
end
