# Generated by cucumber-sinatra. (2015-02-17 15:58:34 +0000)


ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Battleships

class BattleshipsWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  BattleshipsWorld.new
end
