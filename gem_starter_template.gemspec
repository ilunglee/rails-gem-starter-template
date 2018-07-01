$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'gem_starter_template/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'gem_starter_template'
  s.version     = GemStarterTemplate::VERSION
  s.authors     = ['Nelson Lee']
  s.email       = ['ilung.me@gmail.com']
  s.homepage    = 'http://ilung.me.com'
  s.summary     = 'Summary of GemStarterTemplate.'
  s.description = 'Description of GemStarterTemplate.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'awesome_print', '~> 1.6'
  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'dotenv'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.3'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock', '~> 3.4'

  s.add_dependency 'rails', '~> 5.1.6'
end
