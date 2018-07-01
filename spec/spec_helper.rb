require 'bundler/setup'
Bundler.setup

require 'ap'
require 'webmock/rspec'
require 'byebug'
require 'gem_starter_template'
require 'vcr'

Dir['./spec/support/**/*.rb'].each { |f| require f }